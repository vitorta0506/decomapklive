package com.guochao.faceshow.aaspring.base.http.response;

import com.google.gson.annotations.SerializedName;
import com.guochao.faceshow.utils.Contants;
/* loaded from: classes3.dex */
public class FaceCastBaseResponse<T> {
    @SerializedName("code")
    private int code;
    @SerializedName(Contants.USER_levelId)
    private int levelId;
    @SerializedName("msg")
    private String msg;
    @SerializedName(alternate = {"page"}, value = "result")
    private T result;
    @SerializedName("selectTime")
    private long selectTime;
    @SerializedName("totalCount")
    private int totalCount;

    public int getCode() {
        return this.code;
    }

    public int getLevelId() {
        return this.levelId;
    }

    public String getMsg() {
        return this.msg;
    }

    public T getResult() {
        return this.result;
    }

    public long getSelectTime() {
        return this.selectTime;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public void setCode(int i9) {
        this.code = i9;
    }

    public void setLevelId(int i9) {
        this.levelId = i9;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setResult(T t10) {
        this.result = t10;
    }

    public void setSelectTime(long j10) {
        this.selectTime = j10;
    }

    public void setTotalCount(int i9) {
        this.totalCount = i9;
    }
}
