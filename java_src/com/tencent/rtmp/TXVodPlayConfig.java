package com.tencent.rtmp;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class TXVodPlayConfig {
    String mCacheFolderPath;
    Map<String, String> mHeaders;
    int mMaxCacheItems;
    String mOverlayIv;
    String mOverlayKey;
    int mPlayerType;
    int mProgressInterval;
    int mConnectRetryCount = 3;
    int mConnectRetryInterval = 3;
    int mTimeout = 10;
    boolean mEnableAccurateSeek = true;
    boolean mAutoRotate = true;
    boolean mSmoothSwitchBitrate = false;
    String mCacheMp4ExtName = "mp4";
    int mMaxBufferSize = 0;
    int mMaxPreloadSize = 0;
    int mFirstStartPlayBufferTime = 0;
    int mNextStartPlayBufferTime = 0;
    boolean mEnableRenderProcess = true;
    long mPreferredResolution = -1;
    int mMediaType = 0;
    Map<String, Object> mExtInfoMap = new ConcurrentHashMap();

    public String getCacheFolderPath() {
        return this.mCacheFolderPath;
    }

    public String getCacheMp4ExtName() {
        return this.mCacheMp4ExtName;
    }

    public int getConnectRetryCount() {
        return this.mConnectRetryCount;
    }

    public int getConnectRetryInterval() {
        return this.mConnectRetryInterval;
    }

    public Map<String, Object> getExtInfoMap() {
        return this.mExtInfoMap;
    }

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    public int getMaxBufferSize() {
        return this.mMaxBufferSize;
    }

    public int getMaxCacheItems() {
        return this.mMaxCacheItems;
    }

    public int getMaxPreloadSize() {
        return this.mMaxPreloadSize;
    }

    public int getMediaType() {
        return this.mMediaType;
    }

    public String getOverlayIv() {
        return this.mOverlayIv;
    }

    public String getOverlayKey() {
        return this.mOverlayKey;
    }

    public int getPlayerType() {
        return this.mPlayerType;
    }

    public long getPreferredResolution() {
        return this.mPreferredResolution;
    }

    public int getProgressInterval() {
        return this.mProgressInterval;
    }

    public int getTimeout() {
        return this.mTimeout;
    }

    public boolean isAutoRotate() {
        return this.mAutoRotate;
    }

    public boolean isEnableAccurateSeek() {
        return this.mEnableAccurateSeek;
    }

    public boolean isEnableRenderProcess() {
        return this.mEnableRenderProcess;
    }

    public boolean isSmoothSwitchBitrate() {
        return this.mSmoothSwitchBitrate;
    }

    public void setAutoRotate(boolean z10) {
        this.mAutoRotate = z10;
    }

    @Deprecated
    public void setCacheFolderPath(String str) {
        this.mCacheFolderPath = str;
    }

    public void setCacheMp4ExtName(String str) {
        this.mCacheMp4ExtName = str;
    }

    public void setConnectRetryCount(int i9) {
        this.mConnectRetryCount = i9;
    }

    public void setConnectRetryInterval(int i9) {
        this.mConnectRetryInterval = i9;
    }

    public void setEnableAccurateSeek(boolean z10) {
        this.mEnableAccurateSeek = z10;
    }

    public void setEnableRenderProcess(boolean z10) {
        this.mEnableRenderProcess = z10;
    }

    public void setExtInfo(Map<String, Object> map) {
        this.mExtInfoMap.clear();
        this.mExtInfoMap.putAll(map);
    }

    @Deprecated
    public void setFirstStartPlayBufferTime(int i9) {
        this.mFirstStartPlayBufferTime = i9;
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public void setMaxBufferSize(int i9) {
        this.mMaxBufferSize = i9;
    }

    @Deprecated
    public void setMaxCacheItems(int i9) {
        this.mMaxCacheItems = i9;
    }

    public void setMaxPreloadSize(int i9) {
        this.mMaxPreloadSize = i9;
    }

    public void setMediaType(int i9) {
        this.mMediaType = i9;
    }

    @Deprecated
    public void setNextStartPlayBufferTime(int i9) {
        this.mNextStartPlayBufferTime = i9;
    }

    public void setOverlayIv(String str) {
        this.mOverlayIv = str;
    }

    public void setOverlayKey(String str) {
        this.mOverlayKey = str;
    }

    public void setPlayerType(int i9) {
        this.mPlayerType = i9;
    }

    public void setPreferredResolution(long j10) {
        this.mPreferredResolution = j10;
    }

    public void setProgressInterval(int i9) {
        this.mProgressInterval = i9;
    }

    public void setSmoothSwitchBitrate(boolean z10) {
        this.mSmoothSwitchBitrate = z10;
    }

    public void setTimeout(int i9) {
        this.mTimeout = i9;
    }
}
