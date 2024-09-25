package com.example.utils;

import cn.hutool.core.collection.CollectionUtil;
import com.example.entity.RelateDTO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.stream.IntStream;

/**
 * 核心算法
 *
 * @author B站 UP：武哥聊编程
 * @version 1.0
 */
public class CoreMath {


    /**
     * 计算相关系数并排序
     */
    public static Map<Integer, Double> computeNeighbor(Integer key, Map<Integer, List<RelateDTO>> map, int type) {
        Map<Integer, Double> distMap = new TreeMap<>();
        List<RelateDTO> userItems = map.get(key);
        if (CollectionUtil.isNotEmpty(userItems)) {
            map.forEach((k, v) -> {
                //排除此用户
                if (!k.equals(key)) {
                    //关系系数
                    double coefficient = relateDist(v, userItems, type);
                    //关系距离
                    double distance = Math.abs(coefficient);
                    distMap.put(k, distance);
                }
            });
        }
        return distMap;
    }


    /**
     * 计算两个序列间的相关系数
     */
    private static double relateDist(List<RelateDTO> xList, List<RelateDTO> yList, int type) {
        List<Integer> xs = new ArrayList<>();
        List<Integer> ys = new ArrayList<>();
        xList.forEach(x -> yList.forEach(y -> {
            if (type == 0) {
                if (x.getGoodsId().equals(y.getGoodsId())) {
                    xs.add(x.getIndex());
                    ys.add(y.getIndex());
                }
            } else {
                if (x.getUseId().equals(y.getUseId())) {
                    xs.add(x.getIndex());
                    ys.add(y.getIndex());
                }
            }
        }));
        return getRelate(xs, ys);
    }

    /**
     * 方法描述: 皮尔森（pearson）相关系数计算
     * @param xs x集合
     * @param ys y集合
     * @Return {@link double}
     * @author B站 UP：武哥聊编程
     */
    public static double getRelate(List<Integer> xs, List<Integer> ys) {
        int n = xs.size();
        //至少有两个元素
        if (n < 2) {
            return 0D;
        }
        double Ex = xs.stream().mapToDouble(x -> x).sum();
        double Ey = ys.stream().mapToDouble(y -> y).sum();
        double Ex2 = xs.stream().mapToDouble(x -> Math.pow(x, 2)).sum();
        double Ey2 = ys.stream().mapToDouble(y -> Math.pow(y, 2)).sum();
        double Exy = IntStream.range(0, n).mapToDouble(i -> xs.get(i) * ys.get(i)).sum();
        double numerator = Exy - Ex * Ey / n;
        double denominator = Math.sqrt((Ex2 - Math.pow(Ex, 2) / n) * (Ey2 - Math.pow(Ey, 2) / n));
        if (denominator == 0) {
            return 0D;
        }
        return numerator / denominator;
    }

}
