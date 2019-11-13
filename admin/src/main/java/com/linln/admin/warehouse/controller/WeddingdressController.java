package com.linln.admin.warehouse.controller;

import com.linln.admin.warehouse.validator.WeddingdressValid;
import com.linln.common.enums.StatusEnum;
import com.linln.common.utils.EntityBeanUtil;
import com.linln.common.utils.ResultVoUtil;
import com.linln.common.utils.StatusUtil;
import com.linln.common.vo.ResultVo;
import com.linln.modules.warehouse.domain.Weddingdress;
import com.linln.modules.warehouse.service.WeddingdressService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * @author snake
 * @date 2019/11/12
 */
@Controller
@RequestMapping("/warehouse/weddingdress")
public class WeddingdressController {

    @Autowired
    private WeddingdressService weddingdressService;

    /**
     * 列表页面
     */
    @GetMapping("/index")
    @RequiresPermissions("warehouse:weddingdress:index")
    public String index(Model model, Weddingdress weddingdress) {

        // 创建匹配器，进行动态查询匹配
        ExampleMatcher matcher = ExampleMatcher.matching()
                .withMatcher("name", match -> match.contains());

        // 获取数据列表
        Example<Weddingdress> example = Example.of(weddingdress, matcher);
        Page<Weddingdress> list = weddingdressService.getPageList(example);

        // 封装数据
        model.addAttribute("list", list.getContent());
        model.addAttribute("page", list);
        return "/warehouse/weddingdress/index";
    }

    /**
     * 跳转到添加页面
     */
    @GetMapping("/add")
    @RequiresPermissions("warehouse:weddingdress:add")
    public String toAdd() {
        return "/warehouse/weddingdress/add";
    }

    /**
     * 跳转到编辑页面
     */
    @GetMapping("/edit/{id}")
    @RequiresPermissions("warehouse:weddingdress:edit")
    public String toEdit(@PathVariable("id") Weddingdress weddingdress, Model model) {
        model.addAttribute("weddingdress", weddingdress);
        return "/warehouse/weddingdress/add";
    }

    /**
     * 保存添加/修改的数据
     * @param valid 验证对象
     */
    @PostMapping("/save")
    @RequiresPermissions({"warehouse:weddingdress:add", "warehouse:weddingdress:edit"})
    @ResponseBody
    public ResultVo save(@Validated WeddingdressValid valid, Weddingdress weddingdress) {
        if (weddingdress.getImage() == null || weddingdress.getImage().equals("")){
            weddingdress.setImage("/upload/images/default.jpg");
        }
        // 复制保留无需修改的数据
        if (weddingdress.getId() != null) {
            Weddingdress beWeddingdress = weddingdressService.getById(weddingdress.getId());
            EntityBeanUtil.copyProperties(beWeddingdress, weddingdress);
        }

        // 保存数据
        weddingdressService.save(weddingdress);
        return ResultVoUtil.SAVE_SUCCESS;
    }

    /**
     * 跳转到详细页面
     */
    @GetMapping("/detail/{id}")
    @RequiresPermissions("warehouse:weddingdress:detail")
    public String toDetail(@PathVariable("id") Weddingdress weddingdress, Model model) {
        model.addAttribute("weddingdress",weddingdress);
        return "/warehouse/weddingdress/detail";
    }

    /**
     * 设置一条或者多条数据的状态
     */
    @RequestMapping("/status/{param}")
    @RequiresPermissions("warehouse:weddingdress:status")
    @ResponseBody
    public ResultVo status(
            @PathVariable("param") String param,
            @RequestParam(value = "ids", required = false) List<Long> ids) {
        // 更新状态
        StatusEnum statusEnum = StatusUtil.getStatusEnum(param);
        if (weddingdressService.updateStatus(statusEnum, ids)) {
            return ResultVoUtil.success(statusEnum.getMessage() + "成功");
        } else {
            return ResultVoUtil.error(statusEnum.getMessage() + "失败，请重新操作");
        }
    }
}