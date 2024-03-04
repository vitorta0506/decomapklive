package com.guochao.faceshow.aaspring.beans;

import com.guochao.faceshow.BaseApplication;
import com.guochao.faceshow.R;
import java.util.List;
/* loaded from: classes3.dex */
public class NewRecordBeans {
    private List<NewRecordBean> list;
    private Integer page;
    private Integer pageSize;
    private Integer total;

    /* loaded from: classes3.dex */
    public class NewRecordBean {
        private String businessId;
        private String createTime;
        private long createTimeLong;
        private int dealType;
        private String dealTypeName;
        private String giftId;
        private String giftName;

        /* renamed from: id  reason: collision with root package name */
        private String f16316id;
        private String inviteSource;
        private String itemId;
        private String message;
        private String money;
        private int numbers;
        private int parentType;
        private String parentTypeName;
        private String price;
        private String recUserId;
        private String recUserName;
        private int recUserStatus;
        private String remark;
        private String sysRemark;
        private int types;
        private String userId;
        private String userName;

        public NewRecordBean() {
        }

        public String getBusinessId() {
            return this.businessId;
        }

        public String getCreateTime() {
            return this.createTime;
        }

        public long getCreateTimeLong() {
            return this.createTimeLong;
        }

        public int getDealType() {
            return this.dealType;
        }

        public String getDealTypeName() {
            return this.dealTypeName;
        }

        public String getGiftId() {
            return this.giftId;
        }

        public String getGiftName() {
            return this.giftName;
        }

        public String getId() {
            return this.f16316id;
        }

        public String getInviteSource() {
            return this.inviteSource;
        }

        public String getItemId() {
            return this.itemId;
        }

        public String getMessage() {
            return this.message;
        }

        public String getMoney() {
            return this.money;
        }

        public int getNumbers() {
            return this.numbers;
        }

        public int getParentType() {
            return this.parentType;
        }

        public String getParentTypeName() {
            return this.parentTypeName;
        }

        public String getPrice() {
            return this.price;
        }

        public String getRecUserId() {
            return this.recUserId;
        }

        public String getRecUserName() {
            return this.recUserStatus == 4 ? BaseApplication.getInstance().getString(R.string.login_has_cancel_account) : this.recUserName;
        }

        public int getRecUserStatus() {
            return this.recUserStatus;
        }

        public String getRemark() {
            return this.remark;
        }

        public String getSysRemark() {
            return this.sysRemark;
        }

        public int getTypes() {
            return this.types;
        }

        public String getUserId() {
            return this.userId;
        }

        public String getUserName() {
            return this.userName;
        }

        public void setBusinessId(String str) {
            this.businessId = str;
        }

        public void setCreateTime(String str) {
            this.createTime = str;
        }

        public void setCreateTimeLong(long j10) {
            this.createTimeLong = j10;
        }

        public void setDealType(int i9) {
            this.dealType = i9;
        }

        public void setDealTypeName(String str) {
            this.dealTypeName = str;
        }

        public void setGiftId(String str) {
            this.giftId = str;
        }

        public void setGiftName(String str) {
            this.giftName = str;
        }

        public void setId(String str) {
            this.f16316id = str;
        }

        public void setInviteSource(String str) {
            this.inviteSource = str;
        }

        public void setItemId(String str) {
            this.itemId = str;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setMoney(String str) {
            this.money = str;
        }

        public void setNumbers(int i9) {
            this.numbers = i9;
        }

        public void setParentType(int i9) {
            this.parentType = i9;
        }

        public void setParentTypeName(String str) {
            this.parentTypeName = str;
        }

        public void setPrice(String str) {
            this.price = str;
        }

        public void setRecUserId(String str) {
            this.recUserId = str;
        }

        public void setRecUserName(String str) {
            this.recUserName = str;
        }

        public void setRecUserStatus(int i9) {
            this.recUserStatus = i9;
        }

        public void setRemark(String str) {
            this.remark = str;
        }

        public void setSysRemark(String str) {
            this.sysRemark = str;
        }

        public void setTypes(int i9) {
            this.types = i9;
        }

        public void setUserId(String str) {
            this.userId = str;
        }

        public void setUserName(String str) {
            this.userName = str;
        }
    }

    public List<NewRecordBean> getList() {
        return this.list;
    }

    public Integer getPage() {
        return this.page;
    }

    public Integer getPageSize() {
        return this.pageSize;
    }

    public Integer getTotal() {
        return this.total;
    }

    public void setList(List<NewRecordBean> list) {
        this.list = list;
    }

    public void setPage(Integer num) {
        this.page = num;
    }

    public void setPageSize(Integer num) {
        this.pageSize = num;
    }

    public void setTotal(Integer num) {
        this.total = num;
    }
}
