package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.system.entity.Vehicle;
import cc.mrbird.febs.system.mapper.VehicleMapper;
import cc.mrbird.febs.system.service.IVehicleService;
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

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @author XuJian
 */
@Service
@RequiredArgsConstructor
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class VehicleServiceImpl extends ServiceImpl<VehicleMapper, Vehicle> implements IVehicleService {

    @Override
    public Vehicle findByVehicleId(Long vehicleId) {
        return this.baseMapper.findByVehicleId(vehicleId);
    }

    @Override
    public IPage<Vehicle> findVehicleDetailList(Vehicle vehicle, QueryRequest request) {
        if (StringUtils.isNotBlank(vehicle.getManufactureDateFrom()) &&
                StringUtils.equals(vehicle.getManufactureDateFrom(), vehicle.getManufactureDateTo())) {
            vehicle.setManufactureDateFrom((vehicle.getManufactureDateFrom() + " 00:00:00"));
            vehicle.setManufactureDateTo(vehicle.getManufactureDateTo() + " 23:59:59");
        }
        Page<Vehicle> page = new Page<>(request.getPageNum(), request.getPageSize());
        page.setSearchCount(false);
        page.setTotal(baseMapper.countVehicleDetail(vehicle));
        SortUtil.handlePageSort(request, page, "vehicleId", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findVehicleDetailPage(page, vehicle);
    }

    @Override
    public Vehicle findVehicleDetailList(Long vehicleId) {
        Vehicle param = new Vehicle();
        param.setVehicleId(vehicleId);
        List<Vehicle> orders = this.baseMapper.findVehicleDetail(param);
        return CollectionUtils.isNotEmpty(orders) ? orders.get(0) : null;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void createVehicle(Vehicle vehicle) {
        vehicle.setManufactureDate(new Date());
        save(vehicle);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteVehicle(String vehicleId) {
        List<String> list = new ArrayList<>();
        list.add(vehicleId);
        this.removeByIds(list);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateVehicle(Vehicle vehicle) {
        updateById(vehicle);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void saleVehicles(Long[] vehicleIds){
        Arrays.stream(vehicleIds).forEach(vehicleId -> {
            Vehicle vehicle = new Vehicle();
            vehicle.setStatus("1");
            this.baseMapper.update(vehicle, new LambdaQueryWrapper<Vehicle>().eq(Vehicle::getVehicleId, vehicleId));
        });
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void maintenanceVehicles(Long[] vehicleIds){
        Arrays.stream(vehicleIds).forEach(vehicleId -> {
            Vehicle vehicle = new Vehicle();
            vehicle.setMaintenanceTimes(findByVehicleId(vehicleId).getMaintenanceTimes()-1);
            this.baseMapper.update(vehicle, new LambdaQueryWrapper<Vehicle>().eq(Vehicle::getVehicleId, vehicleId));
        });
    }
}
