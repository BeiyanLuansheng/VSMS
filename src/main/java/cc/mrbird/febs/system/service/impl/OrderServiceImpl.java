package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.authentication.ShiroRealm;
import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.Md5Util;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.system.entity.Order;
import cc.mrbird.febs.system.entity.User;
import cc.mrbird.febs.system.mapper.OrderMapper;
import cc.mrbird.febs.system.service.IOrderService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @author XuJian
 */
@Service
@RequiredArgsConstructor
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class OrderServiceImpl extends ServiceImpl<OrderMapper, Order> implements IOrderService {

    //private final ShiroRealm shiroRealm;

    @Override
    public Order findByOrderId(Long orderId) {
        return this.baseMapper.findByOrderId(orderId);
    }

    @Override
    public IPage<Order> findOrderDetailList(Order order, QueryRequest request) {
        if (StringUtils.isNotBlank(order.getCreateTimeFrom()) &&
                StringUtils.equals(order.getCreateTimeFrom(), order.getCreateTimeTo())) {
            order.setCreateTimeFrom(order.getCreateTimeFrom() + " 00:00:00");
            order.setCreateTimeTo(order.getCreateTimeTo() + " 23:59:59");
        }
        Page<Order> page = new Page<>(request.getPageNum(), request.getPageSize());
        page.setSearchCount(false);
        page.setTotal(baseMapper.countOrderDetail(order));
        SortUtil.handlePageSort(request, page, "orderId", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findOrderDetailPage(page, order);
    }

    @Override
    public Order findOrderDetailList(Long orderId) {
        Order param = new Order();
        param.setOrderId(orderId);
        List<Order> orders = this.baseMapper.findOrderDetail(param);
        return CollectionUtils.isNotEmpty(orders) ? orders.get(0) : null;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void createOrder(Order order) {
        order.setCreateTime(new Date());
        save(order);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteOrders(String[] orderIds) {
        List<String> list = Arrays.asList(orderIds);
        // 删除订单
        this.removeByIds(list);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateOrder(Order order) {
        updateById(order);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void managerApproveOrder(String[] orderIds){
        Long[] ids = new Long[orderIds.length];
        for(int i=0; i<orderIds.length; i++){
            Long id = Long.valueOf(orderIds[i]);
            if (findByOrderId(id).getStatus().equals("待审核"))
                ids[i] = id;
        }
        this.statusChange("已审核", ids);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void accountingApproveOrder(String[] orderIds){
        Long[] ids = new Long[orderIds.length];
        for(int i=0; i<orderIds.length; i++){
            Long id = Long.valueOf(orderIds[i]);
            if (findByOrderId(id).getStatus().equals("已审核"))
                ids[i] = id;
        }
        this.statusChange("已付款", ids);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void salesApproveOrder(String[] orderIds){
        Long[] ids = new Long[orderIds.length];
        for(int i=0; i<orderIds.length; i++){
            Long id = Long.valueOf(orderIds[i]);
            if (findByOrderId(id).getStatus().equals("已付款"))
                ids[i] = id;
        }
        this.statusChange("已交付", ids);
    }

    /**
     * 更改订单状态
     * @param status
     * @param orderIds
     */
    private void statusChange(String status, Long[] orderIds){
        Arrays.stream(orderIds).forEach(orderId -> {
            Order order = new Order();
            order.setStatus(status);
            this.baseMapper.update(order, new LambdaQueryWrapper<Order>().eq(Order::getOrderId, orderId));
        });
    }
}
