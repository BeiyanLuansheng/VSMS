package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.system.entity.Vehicle;
import cc.mrbird.febs.system.service.IVehicleService;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.Map;

/**
 * @author XuJian
 */
@Slf4j
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping("vehicle")
public class VehicleController extends BaseController {

    private final IVehicleService vehicleService;

    @GetMapping("{vehicleId}")
    public Vehicle getVehicle(@NotBlank(message = "{required}") @PathVariable Long vehicleId) {
        return this.vehicleService.findVehicleDetailList(vehicleId);
    }

    @GetMapping("list")
    @RequiresPermissions("vehicle:view")
    public FebsResponse vehicleList(Vehicle vehicle, QueryRequest request) {
        Map<String, Object> dataTable = getDataTable(this.vehicleService.findVehicleDetailList(vehicle, request));
        return new FebsResponse().success().data(dataTable);
    }

    @PostMapping
    @RequiresPermissions("vehicle:create")
    @ControllerEndpoint(operation = "新增车辆", exceptionMessage = "新增车辆失败")
    public FebsResponse createVehicle(@Valid Vehicle vehicle) {
        this.vehicleService.createVehicle(vehicle);
        return new FebsResponse().success();
    }

    @PostMapping("update")
    @RequiresPermissions("vehicle:modify")
    @ControllerEndpoint(operation = "修改车辆", exceptionMessage = "修改车辆失败")
    public FebsResponse updateVehicle(@Valid Vehicle vehicle) {
        if (vehicle.getVehicleId() == null) {
            throw new FebsException("车辆ID为空");
        }
        this.vehicleService.updateVehicle(vehicle);
        return new FebsResponse().success();
    }

    @GetMapping("delete/{vehicleId}")
    @RequiresPermissions("vehicle:modify")
    @ControllerEndpoint(operation = "删除车辆", exceptionMessage = "删除车辆失败")
    public FebsResponse deleteVehicles(@NotBlank(message = "{required}") @PathVariable String vehicleId) {
        this.vehicleService.deleteVehicle(vehicleId);
        return new FebsResponse().success();
    }

    @PostMapping("sale/{vehicleIds}")
    @RequiresPermissions("vehicle:sale")
    @ControllerEndpoint(operation = "出售车辆", exceptionMessage = "出售车辆失败")
    public FebsResponse saleVehicles(@NotBlank(message = "{required}") @PathVariable String vehicleIds) {
        String[] idsArray = vehicleIds.split(StringPool.COMMA);
        Long[] ids = new Long[idsArray.length];
        for (int i = 0; i < idsArray.length; i++) {
            Long id = Long.valueOf(idsArray[i]);
            if (this.vehicleService.findByVehicleId(id).getStatus().equals("0"))
                ids[i] = id;
            else throw new FebsException("选中已出售状态车辆");
        }
        this.vehicleService.saleVehicles(ids);
        return new FebsResponse().success();
    }

    @PostMapping("maintenance/{vehicleIds}")
    @RequiresPermissions("vehicle:maintenance")
    @ControllerEndpoint(operation = "保养车辆", exceptionMessage = "保养车辆失败")
    public FebsResponse maintenanceVehicles(@NotBlank(message = "{required}") @PathVariable String vehicleIds) {
        String[] idsArray = vehicleIds.split(StringPool.COMMA);
        Long[] ids = new Long[idsArray.length];
        for (int i = 0; i < idsArray.length; i++) {
            Long id = Long.valueOf(idsArray[i]);
            if (this.vehicleService.findByVehicleId(id).getMaintenanceTimes() > 0)
                ids[i] = id;
            else throw new FebsException("选中保养次数已用完的车辆");
        }
        this.vehicleService.maintenanceVehicles(ids);
        return new FebsResponse().success();
    }
}
