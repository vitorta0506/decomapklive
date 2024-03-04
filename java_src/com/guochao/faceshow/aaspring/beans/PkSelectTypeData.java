package com.guochao.faceshow.aaspring.beans;

import java.util.List;
/* loaded from: classes3.dex */
public class PkSelectTypeData {
    private List<String> imgList;
    private String pkFcion;
    private String waitPeople;
    private String winTimes;

    public List<String> getImgList() {
        return this.imgList;
    }

    public String getPkFcion() {
        return this.pkFcion;
    }

    public String getWaitPeople() {
        return this.waitPeople;
    }

    public String getWinTimes() {
        return this.winTimes;
    }

    public void setImgList(List<String> list) {
        this.imgList = list;
    }

    public void setPkFcion(String str) {
        this.pkFcion = str;
    }

    public void setWaitPeople(String str) {
        this.waitPeople = str;
    }

    public void setWinTimes(String str) {
        this.winTimes = str;
    }
}
