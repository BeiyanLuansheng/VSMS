package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.system.entity.Achievement;
import cc.mrbird.febs.system.entity.Order;
import cc.mrbird.febs.system.mapper.AchievementMapper;
import cc.mrbird.febs.system.mapper.OrderMapper;
import cc.mrbird.febs.system.service.IAchievementService;
import cc.mrbird.febs.system.service.IOrderService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.metadata.OrderItem;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * @author XuJian
 */
@Service
@RequiredArgsConstructor
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class AchievementServiceImpl extends ServiceImpl<AchievementMapper, Achievement> implements IAchievementService {

    @Override
    public IPage<Achievement> findAchievementPage(Order order, QueryRequest request) {
        if (StringUtils.isNotBlank(order.getCreateTimeFrom()) &&
                StringUtils.equals(order.getCreateTimeFrom(), order.getCreateTimeTo())) {
            order.setCreateTimeFrom(order.getCreateTimeFrom() + " 00:00:00");
            order.setCreateTimeTo(order.getCreateTimeTo() + " 23:59:59");
        }
        List<Order> orderList = this.baseMapper.findOrderDetail(order);
        List<Achievement> achievementList = this.findAchievementDetailPage(orderList);
        Page<Achievement> page = new Page<>(request.getPageNum(), request.getPageSize());
        page.setTotal(achievementList.size());
        page.setSearchCount(false);
        SortUtil.handlePageSort(request, page, "salesId", FebsConstant.ORDER_ASC, false);
        List<Achievement> records = new ArrayList<>();
        int beginPos = (request.getPageNum() - 1) * request.getPageSize();
        for (int i=beginPos; i<beginPos + request.getPageSize() && i<achievementList.size(); i++)
            records.add(achievementList.get(i));
        page.setRecords(records);
        return page;
    }

    List<Achievement> findAchievementDetailPage(List<Order> orderList){
        Map<Long, Long> salesQuantity = new HashMap<>();
        Map<Long, Long> salesVolume = new HashMap<>();
        for (Order o: orderList){
            Long salesId = o.getSalesId();
            if(!salesQuantity.containsKey(salesId)) {
                salesQuantity.put(salesId, new Long(1));
                salesVolume.put(salesId, o.getPrice());
            }
            else {
                salesQuantity.put(salesId, salesQuantity.get(salesId)+1);
                salesVolume.put(salesId, salesVolume.get(salesId) + o.getPrice());
            }
        }
        List<Achievement> records = new ArrayList<>();
        for (Long salesId: salesQuantity.keySet()){
            Achievement achievement = new Achievement();
            achievement.setSalesId(salesId);
            achievement.setSalesQuantity(salesQuantity.get(salesId));
            achievement.setSalesVolume(salesVolume.get(salesId));
            records.add(achievement);
        }
        return records;
    }
}
