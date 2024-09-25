<template>
  <div class="main-content">
    <div style="width: 60%; background-color: white; min-height: 1000px; margin: 20px auto; border-radius: 20px">
      <div style="padding: 15px 20px">
        <el-row :gutter="20">
          <el-col :span="12">
            <img :src="goodsData.img" alt="" style="width: 100%; height: 400px; border-radius: 20px">
          </el-col>
          <el-col :span="12">
            <div style="font-size: 20px; font-weight: 900; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">{{goodsData.name}}</div>
            <div style="color: #666666FF; margin-top: 5px">销量：{{goodsData.count}}</div>
            <div style="color: red; margin-top: 15px">疯抢价：<span style="font-size: 20px">{{goodsData.price}} / {{goodsData.unit}}</span></div>
            <div style="margin-top: 20px">
              <img src="@/assets/imgs/right.png" alt="" style="width: 70%; height: 130px; border-radius: 15px">
            </div>

            <div style="color: #666666FF; margin-top: 20px">商家：<a href="#" @click="navTo('/front/business?id=' + goodsData.businessId)">{{goodsData.businessName}}</a></div>
            <div style="color: #666666FF; margin-top: 20px">分类：<a href="#" @click="navTo('/front/type?id=' + goodsData.typeId)">{{goodsData.typeName}}</a></div>
            <div style="color: #666666FF; margin-top: 20px">
              <el-button type="warning" @click="addCart">加入购物车</el-button>
              <el-button type="warning" @click="collect">收藏</el-button>
            </div>
          </el-col>
        </el-row>
      </div>
      <div style="padding: 15px 20px">
        <el-tabs v-model="activeName" @tab-click="handleClick">
          <el-tab-pane label="宝贝详情" name="first">
            <div style="padding: 10px 175px" v-html="goodsData.description"></div>
          </el-tab-pane>
          <el-tab-pane label="宝贝评价" name="second">
            <div style="margin-top: 10px">
              <div style="margin-top: 20px" v-for="item in commentData">
                <div style="display: flex">
                  <div style="width: 40px">
                    <img :src="item.userAvatar" alt="" style="height: 40px; width: 40px; border-radius: 50%">
                  </div>
                  <div style="width: 200px; margin-left: 10px">
                    <div style="font-weight: 700; font-size: 17px; color: #000000FF">{{item.userName}}</div>
                    <div style="color: #7A7A7AFF">{{item.time}}</div>
                  </div>
                </div>
                <div style="margin-top: 15px; font-size: 16px">{{item.content}}</div>
              </div>
            </div>
          </el-tab-pane>

        </el-tabs>
      </div>
    </div>
  </div>
</template>

<script>

export default {

  data() {
    let goodsId = this.$route.query.id
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      goodsId: goodsId,
      goodsData: {},
      activeName: 'first'
    }
  },
  mounted() {
    this.loadGoods()
    this.loadComments()
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadGoods() {
      this.$request.get('/goods/selectById?id=' + this.goodsId).then(res => {
        if (res.code === '200') {
          this.goodsData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    handleClick(tab, event) {
      this.activeName = tab.name

    },
    collect(){
      let data ={userId:this.user.id,
        businessId:this.goodsData.businessId,
        goodsId:this.goodsId
      }
      this.$request.post('/collect/add',data).then(res=>{
        if(res.code==='200'){
          this.$message.success('收藏成功')
      }else{
          this.$message.error(res.msg)
      }
    })
  },
    addCart(){
      let data={num:1,userId:this.user.id,
        goodsId:this.goodsId,
        businessId: this.goodsData.businessId
      }
      this.$request.post('/cart/add',data).then(res=> {
        if (res.code === '200') {
          this.$message.success('操作成功')
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    navTo(url){
      location.href=url
    },
    loadComments() {
      this.$request.get('/comment/selectByGoodsId?id=' + this.goodsId).then(res => {
        if (res.code === '200') {
          this.commentData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
  }
}
</script>