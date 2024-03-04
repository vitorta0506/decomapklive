package com.tencent.rtmp;

import java.io.Serializable;
import java.util.Map;
/* loaded from: classes4.dex */
public class TXLivePlayConfig implements Serializable {
    private static final long serialVersionUID = 1;
    String mCacheFolderPath;
    protected Map<String, String> mHeaders;
    int mMaxCacheItems;
    float mCacheTime = 5.0f;
    float mMaxAutoAdjustCacheTime = 5.0f;
    float mMinAutoAdjustCacheTime = 1.0f;
    int mVideoBlockThreshold = 800;
    int mConnectRetryCount = 3;
    int mConnectRetryInterval = 3;
    boolean mAutoAdjustCacheTime = true;
    boolean mEnableAec = false;
    boolean mEnableMessage = false;
    boolean mEnableMetaData = false;
    String mFlvSessionKey = "";
    boolean mEnableNearestIP = true;
    int mRtmpChannelType = 0;
    boolean mAutoRotate = true;

    public String getCacheFolderPath() {
        return this.mCacheFolderPath;
    }

    public float getCacheTime() {
        return this.mCacheTime;
    }

    public int getConnectRetryCount() {
        return this.mConnectRetryCount;
    }

    public int getConnectRetryInterval() {
        return this.mConnectRetryInterval;
    }

    public String getFlvSessionKey() {
        return this.mFlvSessionKey;
    }

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    public float getMaxAutoAdjustCacheTime() {
        return this.mMaxAutoAdjustCacheTime;
    }

    public int getMaxCacheItems() {
        return this.mMaxCacheItems;
    }

    public float getMinAutoAdjustCacheTime() {
        return this.mMinAutoAdjustCacheTime;
    }

    public int getRtmpChannelType() {
        return this.mRtmpChannelType;
    }

    public int getVideoBlockThreshold() {
        return this.mVideoBlockThreshold;
    }

    public boolean isAutoAdjustCacheTime() {
        return this.mAutoAdjustCacheTime;
    }

    public boolean isAutoRotate() {
        return this.mAutoRotate;
    }

    public boolean isEnableAec() {
        return this.mEnableAec;
    }

    public boolean isEnableMessage() {
        return this.mEnableMessage;
    }

    public boolean isEnableMetaData() {
        return this.mEnableMetaData;
    }

    public boolean isEnableNearestIP() {
        return this.mEnableNearestIP;
    }

    public void setAutoAdjustCacheTime(boolean z10) {
        this.mAutoAdjustCacheTime = z10;
    }

    @Deprecated
    public void setCacheFolderPath(String str) {
        this.mCacheFolderPath = str;
    }

    public void setCacheTime(float f10) {
        this.mCacheTime = f10;
    }

    public void setConnectRetryCount(int i9) {
        this.mConnectRetryCount = i9;
    }

    public void setConnectRetryInterval(int i9) {
        this.mConnectRetryInterval = i9;
    }

    public void setEnableAEC(boolean z10) {
        this.mEnableAec = z10;
    }

    public void setEnableMessage(boolean z10) {
        this.mEnableMessage = z10;
    }

    public void setEnableMetaData(boolean z10) {
        this.mEnableMetaData = z10;
    }

    @Deprecated
    public void setEnableNearestIP(boolean z10) {
        this.mEnableNearestIP = z10;
    }

    public void setFlvSessionKey(String str) {
        this.mFlvSessionKey = str;
    }

    @Deprecated
    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public void setMaxAutoAdjustCacheTime(float f10) {
        this.mMaxAutoAdjustCacheTime = f10;
    }

    @Deprecated
    public void setMaxCacheItems(int i9) {
        this.mMaxCacheItems = i9;
    }

    public void setMinAutoAdjustCacheTime(float f10) {
        this.mMinAutoAdjustCacheTime = f10;
    }

    @Deprecated
    public void setRtmpChannelType(int i9) {
        this.mRtmpChannelType = i9;
    }

    public void setVideoBlockThreshold(int i9) {
        this.mVideoBlockThreshold = i9;
    }

    public String toString() {
        return "{mCacheTime=" + this.mCacheTime + ", mMaxAutoAdjustCacheTime=" + this.mMaxAutoAdjustCacheTime + ", mMinAutoAdjustCacheTime=" + this.mMinAutoAdjustCacheTime + ", mAutoAdjustCacheTime=" + this.mAutoAdjustCacheTime + ", mVideoBlockThreshold=" + this.mVideoBlockThreshold + ", mConnectRetryCount=" + this.mConnectRetryCount + ", mConnectRetryInterval=" + this.mConnectRetryInterval + ", mEnableAec=" + this.mEnableAec + ", mEnableMessage=" + this.mEnableMessage + ", mEnableMetaData=" + this.mEnableMetaData + '}';
    }
}
