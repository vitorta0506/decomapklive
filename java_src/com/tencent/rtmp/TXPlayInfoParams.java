package com.tencent.rtmp;
/* loaded from: classes4.dex */
public class TXPlayInfoParams {
    int mAppId;
    String mFileId;
    String mPSign;

    public TXPlayInfoParams(int i9, String str, String str2) {
        this.mAppId = i9;
        this.mFileId = str;
        this.mPSign = str2;
    }

    public int getAppId() {
        return this.mAppId;
    }

    public String getFileId() {
        return this.mFileId;
    }

    public String getPSign() {
        return this.mPSign;
    }
}
