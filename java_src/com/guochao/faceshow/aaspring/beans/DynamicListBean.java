package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class DynamicListBean {
    private List<DynamicBean> list;
    private int totalPage;

    public List<DynamicBean> getList() {
        return this.list;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setList(List<DynamicBean> list) {
        this.list = list;
    }

    public void setTotalPage(int i9) {
        this.totalPage = i9;
    }
}
