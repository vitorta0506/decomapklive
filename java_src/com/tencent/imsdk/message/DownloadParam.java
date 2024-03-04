package com.tencent.imsdk.message;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class DownloadParam implements Serializable {
    public static int DOWNLOAD_FLAG_REQUEST_COS = 1;
    public static int DOWNLOAD_FLAG_REQUEST_DIRECT_DOWNLOAD = 2;
    public static int DOWNLOAD_FLAG_REQUEST_JIAPING = 0;
    public static int UUID_TYPE_VIDEO_AUDIO = 3;
    public static int UUID_TYPE_VIDEO_FILE = 1;
    public static int UUID_TYPE_VIDEO_THUMB = 0;
    public static int UUID_TYPE_VIDEO_VIDEO = 2;
    private int businessID;
    private int downloadFlag;
    private String downloadUrl;
    private String fileSavePath;
    private String uuid;
    private int uuidType;

    public void setBusinessID(int i9) {
        this.businessID = i9;
    }

    public void setDownloadFlag(int i9) {
        this.downloadFlag = i9;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public void setFileSavePath(String str) {
        this.fileSavePath = str;
    }

    public void setUuid(String str) {
        this.uuid = str;
    }

    public void setUuidType(int i9) {
        this.uuidType = i9;
    }
}
