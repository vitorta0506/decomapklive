package com.guochao.faceshow.aaspring.beans;

import com.guochao.faceshow.bean.PeopleILikedBean;
import java.util.List;
/* loaded from: classes3.dex */
public class LikeMePeople {
    private List<PeopleILikedBean.PeopleILikedUserBean> list;
    private int page;
    private int pageSize;

    public List<PeopleILikedBean.PeopleILikedUserBean> getList() {
        return this.list;
    }

    public int getPage() {
        return this.page;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public void setList(List<PeopleILikedBean.PeopleILikedUserBean> list) {
        this.list = list;
    }

    public void setPage(int i9) {
        this.page = i9;
    }

    public void setPageSize(int i9) {
        this.pageSize = i9;
    }
}
