package com.tencent.thumbplayer.core.config;

import androidx.annotation.NonNull;
/* loaded from: classes4.dex */
public class TPPlayerCoreConfig {
    private static boolean mCoreEventProcessEnable = false;
    private static boolean mMediaDrmReuseEnable = false;
    private static int mVideoMediaCodecCoexistMaxCnt = 0;
    @NonNull
    private static String mWidevineProvisioningServerUrl = "";

    public static boolean getCoreEventProcessEnable() {
        return mCoreEventProcessEnable;
    }

    public static boolean getMediaDrmReuseEnable() {
        return mMediaDrmReuseEnable;
    }

    public static int getVideoMediaCodecCoexistMaxCnt() {
        return mVideoMediaCodecCoexistMaxCnt;
    }

    @NonNull
    public static String getWidevineProvisioningServerUrl() {
        return mWidevineProvisioningServerUrl;
    }

    public static void setCoreEventProcessEnable(boolean z10) {
        mCoreEventProcessEnable = z10;
    }

    public static void setMediaDrmReuseEnable(boolean z10) {
        mMediaDrmReuseEnable = z10;
    }

    public static void setVideoMediaCodecCoexistMaxCnt(int i9) {
        mVideoMediaCodecCoexistMaxCnt = i9;
    }

    public static void setWidevineProvisioningServerUrl(@NonNull String str) {
        mWidevineProvisioningServerUrl = str;
    }
}
