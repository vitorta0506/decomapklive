package com.tencent.thumbplayer.core.downloadproxy.utils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class TPRequestItem {
    private int mRequestType;
    private String mUrl;
    private int mRequestTimes = 0;
    private long mRequestFailedTime = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TPRequestItem(String str, int i9) {
        this.mUrl = str;
        this.mRequestType = i9;
    }

    public long getRequestFailedTime() {
        return this.mRequestFailedTime;
    }

    public int getRequestTimes() {
        return this.mRequestTimes;
    }

    public int getRequestType() {
        return this.mRequestType;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public void updateFailedTime() {
        this.mRequestFailedTime = System.currentTimeMillis();
        this.mRequestTimes++;
    }
}
