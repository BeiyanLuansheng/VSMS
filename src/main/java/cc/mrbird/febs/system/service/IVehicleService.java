package cc.mrbird.febs.system.service;

import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Vehicle;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * @author XuJian
 */
public interface IVehicleService extends IService<Vehicle> {

    /**
     * 通过车辆 ID查找车辆
     *
     * @param vehicleId 车辆 ID
     * @return 车辆
     */
    Vehicle findByVehicleId(Long vehicleId);

    /**
     * 查找车辆详细信息
     *
     * @param request request
     * @param vehicle 车辆对象，用于传递查询条件
     * @return IPage
     */
    IPage<Vehicle> findVehicleDetailList(Vehicle vehicle, QueryRequest request);

    /**
     * 通过车辆 ID查找车辆详细信息
     *
     * @param vehicleId 车辆 ID
     * @return 车辆信息
     */
    Vehicle findVehicleDetailList(Long vehicleId);

    /**
     * 新增车辆
     *
     * @param vehicle 车辆
     */
    void createVehicle(Vehicle vehicle);

    /**
     * 删除车辆
     *
     * @param vehicleIds 车辆 id数组
     */
    void deleteVehicles(String[] vehicleIds);

    /**
     * 修改车辆
     *
     * @param vehicle 车辆
     */
    void updateVehicle(Vehicle vehicle);

}
