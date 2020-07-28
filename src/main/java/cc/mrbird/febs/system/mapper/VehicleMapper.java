package cc.mrbird.febs.system.mapper;

import cc.mrbird.febs.system.entity.Vehicle;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author XuJian
 */
public interface VehicleMapper extends BaseMapper<Vehicle> {

    /**
     * 通过车辆ID查找车辆
     *
     * @param vehicleId 订单号
     * @return 订单
     */
    Vehicle findByVehicleId(Long vehicleId);

    /**
     * 查找车辆详细信息
     *
     * @param page 分页对象
     * @param vehicle 车辆对象，用于传递查询条件
     * @return Ipage
     */
    <T> IPage<Vehicle> findVehicleDetailPage(Page<T> page, @Param("vehicle") Vehicle vehicle);

    long countVehicleDetail(@Param("vehicle") Vehicle vehicle);

    /**
     * 查找车辆详细信息
     *
     * @param vehicle 车辆对象，用于传递查询条件
     * @return List<Vehicle>
     */
    List<Vehicle> findVehicleDetail(@Param("vehicle") Vehicle vehicle);

}
