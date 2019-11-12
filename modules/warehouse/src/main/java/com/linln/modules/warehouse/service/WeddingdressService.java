package com.linln.modules.warehouse.service;

import com.linln.common.enums.StatusEnum;
import com.linln.modules.warehouse.domain.Weddingdress;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author snake
 * @date 2019/11/12
 */
public interface WeddingdressService {

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @return 返回分页数据
     */
    Page<Weddingdress> getPageList(Example<Weddingdress> example);

    /**
     * 根据ID查询数据
     * @param id 主键ID
     */
    Weddingdress getById(Long id);

    /**
     * 保存数据
     * @param weddingdress 实体对象
     */
    Weddingdress save(Weddingdress weddingdress);

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Transactional
    Boolean updateStatus(StatusEnum statusEnum, List<Long> idList);
}