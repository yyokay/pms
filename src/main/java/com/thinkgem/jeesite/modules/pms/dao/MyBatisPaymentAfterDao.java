/**
 * Copyright &copy; 2012-2013 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.thinkgem.jeesite.modules.pms.dao;

import java.util.List;
import java.util.Map;

import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.pms.entity.PaymentAfter;;

/**
 * MyBatis字典DAO接口
 * @author ThinkGem
 * @version 2013-8-23
 */
@MyBatisDao
public interface MyBatisPaymentAfterDao {
	
	PaymentAfter get(String id);
    
    List<PaymentAfter> find(PaymentAfter paymentAfter);
    
    List<PaymentAfter> findGroupByFees(Map<String, Object> params); 
    
    
}
