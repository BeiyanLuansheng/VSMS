package cc.mrbird.febs.system.controller;

import cc.mrbird.febs.common.controller.BaseController;
import cc.mrbird.febs.common.entity.FebsResponse;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.system.entity.Order;
import cc.mrbird.febs.system.service.IAchievementService;
import cc.mrbird.febs.system.service.IOrderService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author XuJian
 */
@Slf4j
@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping("achievement")
public class AchievementController extends BaseController {

    private final IAchievementService achievementService;

    @GetMapping
    @RequiresPermissions("achievement:view")
    public FebsResponse achievementList(Order order, QueryRequest request) {
        Map<String, Object> dataTable = getDataTable(achievementService.findAchievementPage(order, request));
        return new FebsResponse().success().data(dataTable);
    }

}
