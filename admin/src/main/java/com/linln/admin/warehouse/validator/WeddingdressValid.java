package com.linln.admin.warehouse.validator;

import lombok.Data;

import java.io.Serializable;
import javax.validation.constraints.NotEmpty;

/**
 * @author snake
 * @date 2019/11/12
 */
@Data
public class WeddingdressValid implements Serializable {
    @NotEmpty(message = "名称不能为空")
    private String name;
}