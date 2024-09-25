package com.example.entity;

public class RelateDTO {
    /** 用户id */
    private Integer useId;
    /** 商品id */
    private Integer goodsId;
    /** 指数 */
    private Integer index;

    public RelateDTO(Integer useId, Integer goodsId, Integer index) {
        this.useId = useId;
        this.goodsId = goodsId;
        this.index = index;
    }

    public Integer getIndex() {
        return index;
    }

    public void setIndex(Integer index) {
        this.index = index;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Integer getUseId() {
        return useId;
    }

    public void setUseId(Integer useId) {
        this.useId = useId;
    }
}