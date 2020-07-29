package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.annotation.ControllerEndpoint;
import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.system.entity.Customer;
import cc.mrbird.febs.system.service.ICustomerService;
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
@RequestMapping("customer")
public class CustomerController extends BaseController {

    private final ICustomerService userService;

    @GetMapping("{customerId}")
    public Customer getCustomer(@NotBlank(message = "{required}") @PathVariable Long customerId) {
        return this.userService.findCustomerDetailList(customerId);
    }

    @GetMapping("list")
    @RequiresPermissions("customer:view")
    public FebsResponse customerList(Customer customer, QueryRequest request) {
        Map<String, Object> dataTable = getDataTable(this.userService.findCustomerDetailList(customer, request));
        return new FebsResponse().success().data(dataTable);
    }

    @PostMapping
    @RequiresPermissions("customer:create")
    @ControllerEndpoint(operation = "新增客户", exceptionMessage = "新增客户失败")
    public FebsResponse createCustomer(@Valid Customer customer) {
        this.userService.createCustomer(customer);
        return new FebsResponse().success();
    }

    @GetMapping("delete/{customerIds}")
    @RequiresPermissions("customer:delete")
    @ControllerEndpoint(operation = "删除客户", exceptionMessage = "删除客户失败")
    public FebsResponse deleteCustomers(@NotBlank(message = "{required}") @PathVariable String customerIds) {
        String[] ids = customerIds.split(StringPool.COMMA);
        this.userService.deleteCustomers(ids);
        return new FebsResponse().success();
    }

    @PostMapping("update")
    @RequiresPermissions("customer:update")
    @ControllerEndpoint(operation = "修改客户", exceptionMessage = "修改客户失败")
    public FebsResponse updateCustomer(@Valid Customer customer) {
        if (customer.getCustomerId() == null) {
            throw new FebsException("客户ID为空");
        }
        this.userService.updateCustomer(customer);
        return new FebsResponse().success();
    }
}
