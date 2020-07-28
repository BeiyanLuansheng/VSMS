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

    @GetMapping("delete/{vehicleIds}")
    @RequiresPermissions("vehicle:delete")
    @ControllerEndpoint(operation = "删除车辆", exceptionMessage = "删除车辆失败")
    public FebsResponse deleteVehicles(@NotBlank(message = "{required}") @PathVariable String vehicleIds) {
        String[] ids = vehicleIds.split(StringPool.COMMA);
        this.vehicleService.deleteVehicles(ids);
        return new FebsResponse().success();
    }


    @PostMapping("update")
    @RequiresPermissions("vehicle:approve")
    @ControllerEndpoint(operation = "修改车辆", exceptionMessage = "修改车辆失败")
    public FebsResponse updateUser(@Valid Vehicle vehicle) {
        if (vehicle.getVehicleId() == null) {
            throw new FebsException("车辆号为空");
        }
        this.vehicleService.updateVehicle(vehicle);
        return new FebsResponse().success();
    }

    /*@PostMapping("managerApprove/{vehicleIds}")
    @RequiresPermissions("vehicle:approve:manager")
    @ControllerEndpoint(operation = "经理审批车辆", exceptionMessage = "审批车辆失败")
    public FebsResponse managerApproveVehicle(@NotBlank(message = "{required}") @PathVariable String vehicleIds) {
        String[] idsArray = vehicleIds.split(StringPool.COMMA);
        Long[] ids = new Long[idsArray.length];
        for(int i=0; i<idsArray.length; i++){
            Long id = Long.valueOf(idsArray[i]);
            if (this.vehicleService.findByVehicleId(id).getStatus().equals("待审核"))
                ids[i] = id;
            else throw new FebsException("选中车辆含有非待审核状态车辆");
        }
        this.vehicleService.statusChange("已审核", ids);
        return new FebsResponse().success();
    }*/

}
