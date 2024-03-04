package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class WithDrawalRecordData {
    private PageBean page;
    private List<TotalBean> total;

    /* loaded from: classes3.dex */
    public static class PageBean {
        private int currPage;
        private List<WithdrawalRecord> list;
        private int pageSize;
        private int totalCount;
        private int totalPage;

        public int getCurrPage() {
            return this.currPage;
        }

        public List<WithdrawalRecord> getList() {
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

        public void setList(List<WithdrawalRecord> list) {
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

    /* loaded from: classes3.dex */
    public static class TotalBean {
        private int amount;
        private int amount_type;

        public int getAmount() {
            return this.amount;
        }

        public int getAmount_type() {
            return this.amount_type;
        }

        public void setAmount(int i9) {
            this.amount = i9;
        }

        public void setAmount_type(int i9) {
            this.amount_type = i9;
        }
    }

    public PageBean getPage() {
        return this.page;
    }

    public List<TotalBean> getTotal() {
        return this.total;
    }

    public void setPage(PageBean pageBean) {
        this.page = pageBean;
    }

    public void setTotal(List<TotalBean> list) {
        this.total = list;
    }
}
