package com.guochao.faceshow.bean;

import java.util.List;
/* loaded from: classes3.dex */
public class CollectMusicData {
    private int currPage;
    private List<MusicBean> list;
    private int pageSize;
    private int totalCount;
    private int totalPage;

    public int getCurrPage() {
        return this.currPage;
    }

    public List<MusicBean> getList() {
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

    public void setList(List<MusicBean> list) {
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
