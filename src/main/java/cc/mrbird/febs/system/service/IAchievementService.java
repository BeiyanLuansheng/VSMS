package cc.mrbird.febs.system.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Achievement;
import cc.mrbird.febs.system.entity.Order;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * @author XuJian
 */
public interface IAchievementService extends IService<Achievement> {

    /**
     * 查找订单详细信息
     *
     * @param request request
     * @param order  订单对象，用于传递查询条件
     * @return IPage
     */
    IPage<Achievement> findAchievementPage(Order order, QueryRequest request);
}
