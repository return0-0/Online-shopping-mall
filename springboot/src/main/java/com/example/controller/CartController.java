package com.example.controller;

import com.example.common.Result;
import com.example.entity.Cart;
import com.example.service.CartService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 收藏前端操作接口
 **/
@RestController
@RequestMapping("/cart")
public class CartController {

    @Resource
    private  CartService  cartService;

    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody  Cart  cart) {
         cartService.add( cart);
        return Result.success();
    }

    /**
     * 删除
     */
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id) {
         cartService.deleteById(id);
        return Result.success();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
         cartService.deleteBatch(ids);
        return Result.success();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result updateById(@RequestBody  Cart  cart) {
         cartService.updateById( cart);
        return Result.success();
    }

    /**
     * 根据ID查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {
         Cart  cart =  cartService.selectById(id);
        return Result.success( cart);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll( Cart  cart ) {
        List< Cart> list =  cartService.selectAll( cart);
        return Result.success(list);
    }

    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage( Cart  cart,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo< Cart> page =  cartService.selectPage( cart, pageNum, pageSize);
        return Result.success(page);
    }

}