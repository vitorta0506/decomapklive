package com.guochao.faceshow.mine.model;
/* loaded from: classes4.dex */
public class CustomLabelBean {
    private String createTime;
    private int del;
    private int hobbyId;
    private String tags;
    private int type;

    public CustomLabelBean() {
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getDel() {
        return this.del;
    }

    public int getHobbyId() {
        return this.hobbyId;
    }

    public String getTags() {
        return this.tags;
    }

    public int getType() {
        return this.type;
    }

    public void setCreateTime(String str) {
        this.createTime = str;
    }

    public void setDel(int i9) {
        this.del = i9;
    }

    public void setHobbyId(int i9) {
        this.hobbyId = i9;
    }

    public void setTags(String str) {
        this.tags = str;
    }

    public void setType(int i9) {
        this.type = i9;
    }

    public String toString() {
        return "CustomLabelBean{createTime='" + this.createTime + "', hobbyId=" + this.hobbyId + ", del=" + this.del + ", type=" + this.type + ", tags='" + this.tags + "'}";
    }

    public CustomLabelBean(String str, int i9, int i10, int i11, String str2) {
        this.createTime = str;
        this.hobbyId = i9;
        this.del = i10;
        this.type = i11;
        this.tags = str2;
    }
}
