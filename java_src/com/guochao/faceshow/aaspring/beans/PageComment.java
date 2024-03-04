package com.guochao.faceshow.aaspring.beans;

import java.util.ArrayList;
/* loaded from: classes3.dex */
public class PageComment {
    private ArrayList<Comment> list;
    private int totalCount;
    private int totalPage;

    public ArrayList<Comment> getList() {
        return this.list;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setList(ArrayList<Comment> arrayList) {
        this.list = arrayList;
    }

    public void setTotalCount(int i9) {
        this.totalCount = i9;
    }

    public void setTotalPage(int i9) {
        this.totalPage = i9;
    }
}
