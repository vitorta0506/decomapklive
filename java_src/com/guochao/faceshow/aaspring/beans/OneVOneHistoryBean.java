package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class OneVOneHistoryBean {
    private int currPage;
    private List<ListBean> list;
    private int pageSize;
    private int totalCount;
    private int totalPage;

    /* loaded from: classes3.dex */
    public static class ListBean {
        private UserVipData accountUserVipMsg;
        private int age;
        private long allTime;
        private long end_time;
        private String img;
        private int levelId;
        private String logo;
        private String nick_name;
        private int num;
        private int sex;
        private int stotalgift;
        private int stotalgiftPrice;
        private int stotalgiftTime;
        private long update_time;
        private int user_id;
        private int ztotalgift;
        private int ztotalgiftPrice;
        private int ztotalgiftTime;

        public UserVipData getAccountUserVipMsg() {
            return this.accountUserVipMsg;
        }

        public int getAge() {
            return this.age;
        }

        public long getAllTime() {
            return this.allTime;
        }

        public long getEnd_time() {
            return this.end_time;
        }

        public String getImg() {
            return this.img;
        }

        public int getLevelId() {
            return this.levelId;
        }

        public String getLogo() {
            return this.logo;
        }

        public String getNick_name() {
            return this.nick_name;
        }

        public int getNum() {
            return this.num;
        }

        public int getSex() {
            return this.sex;
        }

        public int getStotalgift() {
            return this.stotalgift;
        }

        public int getStotalgiftPrice() {
            return this.stotalgiftPrice;
        }

        public int getStotalgiftTime() {
            return this.stotalgiftTime;
        }

        public long getUpdate_time() {
            return this.update_time;
        }

        public int getUser_id() {
            return this.user_id;
        }

        public int getZtotalgift() {
            return this.ztotalgift;
        }

        public int getZtotalgiftPrice() {
            return this.ztotalgiftPrice;
        }

        public int getZtotalgiftTime() {
            return this.ztotalgiftTime;
        }

        public void setAccountUserVipMsg(UserVipData userVipData) {
            this.accountUserVipMsg = userVipData;
        }

        public void setAge(int i9) {
            this.age = i9;
        }

        public void setAllTime(long j10) {
            this.allTime = j10;
        }

        public void setEnd_time(long j10) {
            this.end_time = j10;
        }

        public void setImg(String str) {
            this.img = str;
        }

        public void setLevelId(int i9) {
            this.levelId = i9;
        }

        public void setLogo(String str) {
            this.logo = str;
        }

        public void setNick_name(String str) {
            this.nick_name = str;
        }

        public void setNum(int i9) {
            this.num = i9;
        }

        public void setSex(int i9) {
            this.sex = i9;
        }

        public void setStotalgift(int i9) {
            this.stotalgift = i9;
        }

        public void setStotalgiftPrice(int i9) {
            this.stotalgiftPrice = i9;
        }

        public void setStotalgiftTime(int i9) {
            this.stotalgiftTime = i9;
        }

        public void setUpdate_time(long j10) {
            this.update_time = j10;
        }

        public void setUser_id(int i9) {
            this.user_id = i9;
        }

        public void setZtotalgift(int i9) {
            this.ztotalgift = i9;
        }

        public void setZtotalgiftPrice(int i9) {
            this.ztotalgiftPrice = i9;
        }

        public void setZtotalgiftTime(int i9) {
            this.ztotalgiftTime = i9;
        }
    }

    public int getCurrPage() {
        return this.currPage;
    }

    public List<ListBean> getList() {
        return this.list;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setCurrPage(int i9) {
        this.currPage = i9;
    }

    public void setList(List<ListBean> list) {
        this.list = list;
    }

    public void setPageSize(int i9) {
        this.pageSize = i9;
    }

    public void setTotalCount(int i9) {
        this.totalCount = i9;
    }

    public void setTotalPage(int i9) {
        this.totalPage = i9;
    }
}
