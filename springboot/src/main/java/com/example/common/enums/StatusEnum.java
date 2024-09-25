package com.example.common.enums;

public enum StatusEnum {
 CHECKING("审核中"),
    CHECKING_OK("审核通过 "),
    CHECKING_NO("审核不通过"),
    ;

    public String status;


    StatusEnum(String status) {
        this.status = status;

    }
}
