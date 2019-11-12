package com.linln.modules.warehouse.service.impl;

import com.linln.common.data.PageSort;
import com.linln.common.enums.StatusEnum;
import com.linln.modules.warehouse.domain.Weddingdress;
import com.linln.modules.warehouse.repository.WeddingdressRepository;
import com.linln.modules.warehouse.service.WeddingdressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author snake
 * @date 2019/11/12
 */
@Service
public class WeddingdressServiceImpl implements WeddingdressService {

    @Autowired
    private WeddingdressRepository weddingdressRepository;

    /**
     * 根据ID查询数据
     * @param id 主键ID
     */
    @Override
    @Transactional
    public Weddingdress getById(Long id) {
        return weddingdressRepository.findById(id).orElse(null);
    }

    /**
     * 获取分页列表数据
     * @param example 查询实例
     * @return 返回分页数据
     */
    @Override
    public Page<Weddingdress> getPageList(Example<Weddingdress> example) {
        // 创建分页对象
        PageRequest page = PageSort.pageRequest();
        return weddingdressRepository.findAll(example, page);
    }

    /**
     * 保存数据
     * @param weddingdress 实体对象
     */
    @Override
    public Weddingdress save(Weddingdress weddingdress) {
        return weddingdressRepository.save(weddingdress);
    }

    /**
     * 状态(启用，冻结，删除)/批量状态处理
     */
    @Override
    @Transactional
    public Boolean updateStatus(StatusEnum statusEnum, List<Long> idList) {
        return weddingdressRepository.updateStatus(statusEnum.getCode(), idList) > 0;
    }
}