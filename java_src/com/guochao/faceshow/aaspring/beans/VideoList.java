package com.guochao.faceshow.aaspring.beans;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public class VideoList {
    private int currPage;
    private ArrayList<VideoItem> list;
    private int totalPage;

    public int getCurrPage() {
        return this.currPage;
    }

    public ArrayList<VideoItem> getList() {
        return this.list;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setCurrPage(int i9) {
        this.currPage = i9;
    }

    public void setList(ArrayList<VideoItem> arrayList) {
        this.list = arrayList;
    }

    public void setTotalPage(int i9) {
        this.totalPage = i9;
    }
}
