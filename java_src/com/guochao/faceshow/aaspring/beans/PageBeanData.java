package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class PageBeanData {
    private PageBean page;
    private long selcetTime;

    /* loaded from: classes3.dex */
    public class PageBean {
        private int count;
        private List<DressUpData> list;
        private int page;
        private int size;
        private int total;

        public PageBean() {
        }

        public int getCurrPage() {
            return this.page;
        }

        public List<DressUpData> getList() {
            return this.list;
        }

        public int getPageSize() {
            return this.size;
        }

        public int getTotalCount() {
            return this.total;
        }

        public int getTotalPage() {
            return this.count;
        }

        public void setCurrPage(int i9) {
            this.page = i9;
        }

        public void setList(List<DressUpData> list) {
            this.list = list;
        }

        public void setPageSize(int i9) {
            this.size = i9;
        }

        public void setTotalCount(int i9) {
            this.total = i9;
        }

        public void setTotalPage(int i9) {
            this.count = i9;
        }
    }

    public PageBean getPage() {
        return this.page;
    }

    public long getSelcetTime() {
        return this.selcetTime;
    }

    public void setPage(PageBean pageBean) {
        this.page = pageBean;
    }

    public void setSelcetTime(long j10) {
        this.selcetTime = j10;
    }
}
