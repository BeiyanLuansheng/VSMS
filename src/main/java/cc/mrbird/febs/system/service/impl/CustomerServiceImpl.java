package cc.mrbird.febs.system.service.impl;

import cc.mrbird.febs.common.entity.FebsConstant;
import cc.mrbird.febs.common.entity.QueryRequest;
import cc.mrbird.febs.common.exception.FebsException;
import cc.mrbird.febs.common.utils.FebsUtil;
import cc.mrbird.febs.common.utils.SortUtil;
import cc.mrbird.febs.system.entity.Customer;
import cc.mrbird.febs.system.mapper.CustomerMapper;
import cc.mrbird.febs.system.service.ICustomerService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.CollectionUtils;
import com.baomidou.mybatisplus.core.toolkit.StringPool;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.ArrayUtils;
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
public class CustomerServiceImpl extends ServiceImpl<CustomerMapper, Customer> implements ICustomerService {

    @Override
    public Customer findByCustomerId(Long customerId) {
        return this.baseMapper.findByCustomerId(customerId);
    }

    @Override
    public IPage<Customer> findCustomerDetailList(Customer customer, QueryRequest request) {
        if (StringUtils.isNotBlank(customer.getPurchasingDateFrom()) &&
                StringUtils.equals(customer.getPurchasingDateFrom(), customer.getPurchasingDateTo())) {
            customer.setPurchasingDateFrom(customer.getPurchasingDateFrom() + " 00:00:00");
            customer.setPurchasingDateTo(customer.getPurchasingDateTo() + " 23:59:59");
        }
        Page<Customer> page = new Page<>(request.getPageNum(), request.getPageSize());
        page.setSearchCount(false);
        page.setTotal(baseMapper.countCustomerDetail(customer));
        SortUtil.handlePageSort(request, page, "customerId", FebsConstant.ORDER_ASC, false);
        return this.baseMapper.findCustomerDetailPage(page, customer);
    }

    @Override
    public Customer findCustomerDetailList(Long customerId) {
        Customer param = new Customer();
        param.setCustomerId(customerId);
        List<Customer> customers = this.baseMapper.findCustomerDetail(param);
        return CollectionUtils.isNotEmpty(customers) ? customers.get(0) : null;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void createCustomer(Customer customer) {
        //customer.setPurchasingDate(new Date());
        save(customer);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void deleteCustomers(String[] customerIds) {
        List<String> list = Arrays.asList(customerIds);
        // 删除客户
        this.removeByIds(list);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateCustomer(Customer customer) {
        // 更新用户
        updateById(customer);
    }
}
