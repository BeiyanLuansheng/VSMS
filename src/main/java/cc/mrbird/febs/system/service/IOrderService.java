package cc.mrbird.febs.system.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Order;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @author XuJian
 */
public interface IOrderService extends IService<Order> {

    /**
     * 通过订单号查找订单
     *
     * @param orderId 订单号
     * @return 订单
     */
    Order findByOrderId(Long orderId);

    /**
     * 查找订单详细信息
     *
     * @param request request
     * @param order    订单对象，用于传递查询条件
     * @return IPage
     */
    IPage<Order> findOrderDetailList(Order order, QueryRequest request);

    /**
     * 通过订单号查找订单详细信息
     *
     * @param orderId 订单号
     * @return 订单信息
     */
    Order findOrderDetailList(Long orderId);

    /**
     * 新增订单
     *
     * @param order 订单
     */
    void createOrder(Order order);

    /**
     * 删除订单
     *
     * @param orderIds 订单 id数组
     */
    void deleteOrders(String[] orderIds);

    /**
     * 修改订单
     *
     * @param order 订单
     */
    void updateOrder(Order order);

    /**
     * 经理审批订单
     *
     * @param orderIds 订单 id数组
     */
    void managerApproveOrder(String[] orderIds);

    /**
     * 会计审批订单
     *
     * @param orderIds 订单 id数组
     */
    void accountingApproveOrder(String[] orderIds);

    /**
     * 销售审批订单
     *
     * @param orderIds 订单 id数组
     */
    void salesApproveOrder(String[] orderIds);
}
