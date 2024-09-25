<template>
  <div class="main-content">
    <div style="width: 60%; margin: 30px auto; border-radius: 20px">
      <div style="height: 100px; padding: 0 10px; display: flex; align-items: center; border-radius: 25px; background-color: white;">
        <img :src="businessData.avatar" alt="" style="height: 60px; width: 60px; border-radius: 50%">
        <div style="width: 220px; margin: 0 30px 0 15px; font-size: 20px; font-weight: bold;">
          <div style="height: 30px; line-height: 30px">{{businessData.name}}</div>
          <img src="@/assets/imgs/icon.png" alt="" style="height: 25px; margin-top: 5px">
        </div>
        <div style="width: 150px; height: 100px; padding: 20px">
          <div style="font-size: 16px; height: 30px; line-height: 30px; color: #7F7F7FFF">店铺电话</div>
          <div style="font-size: 16px; height: 30px; line-height: 30px; ">{{businessData.phone}}</div>
        </div>
        <div style="width: 150px; height: 100px; padding: 20px">
          <div style="font-size: 16px; height: 30px; line-height: 30px; color: #7F7F7FFF">店铺邮箱</div>
          <div style="font-size: 16px; height: 30px; line-height: 30px; ">{{businessData.email}}</div>
        </div>
        <div style="flex: 1; height: 100px; padding: 20px">
          <div style="height: 60px; line-height: 30px; font-size: 16px; color: #000000FF; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">
            店铺介绍：{{businessData.description}}
          </div>
        </div>
      </div>
      <div style="border-radius: 20px; padding: 0 20px; background-color: white; margin-top: 20px">
        <div style="font-size: 18px; color: #000000FF; line-height: 80px; border-bottom: #cccccc 1px solid">本店所有商品（{{goodsData.length}}件）</div>
        <div style="margin-top: 20px">
          <el-row>
            <el-col :span="5" style="margin-bottom: 20px" v-for="item in goodsData">
              <img @click="navTo('/front/detail?id=' + item.id)" :src="item.img" alt="" style="width: 100%; height: 150px; border-radius: 10px; border: #cccccc 1px solid" >
              <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 160px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{item.name}}</div>
              <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥ {{ item.price }} / {{ item.unit }}</div>
            </el-col>
          </el-row>
        </div>
      </div>

    </div>
  </div>
</template>

<script>

export default {

  data() {
    let businessId = this.$route.query.id
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      businessId: businessId,
      goodsData: [],
      businessData: {}
    }
  },
  mounted() {
    this.loadBusiness()
    this.loadGoods()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadBusiness() {
      this.$request.get('/business/selectById/' + this.businessId).then(res => {
        if (res.code === '200') {
          this.businessData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadGoods() {
      this.$request.get('/goods/selectByBusinessId?id=' + this.businessId).then(res => {
        if (res.code === '200') {
          this.goodsData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    navTo(url) {
      location.href = url
    }
  }
}
</script>

<style scoped>
.el-col-5{
  width: 20%;
  max-width: 20%;
  padding: 10px 10px;
}
</style>