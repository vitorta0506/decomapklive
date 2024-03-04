package com.tencent.ugc.retriver;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class VideoMetaData {
    private long mAudioBitrate;
    private long mAudioDuration;
    private int mChannels;
    private float mFps;
    private int mHeight;
    private int mRotation;
    private int mSampleRate;
    private long mVideoBitrate;
    private long mVideoDuration;
    private String mVideoMimeType;
    private int mWidth;

    public long getAudioBitrate() {
        return this.mAudioBitrate;
    }

    public long getAudioDuration() {
        return this.mAudioDuration;
    }

    public int getChannels() {
        return this.mChannels;
    }

    public float getFps() {
        return this.mFps;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getRotation() {
        return this.mRotation;
    }

    public int getSampleRate() {
        return this.mSampleRate;
    }

    public long getVideoBitrate() {
        return this.mVideoBitrate;
    }

    public long getVideoDuration() {
        return this.mVideoDuration;
    }

    public String getVideoMimeType() {
        return this.mVideoMimeType;
    }

    public int getWidth() {
        return this.mWidth;
    }

    @CalledByNative
    public void setAudioBitrate(long j10) {
        this.mAudioBitrate = j10;
    }

    @CalledByNative
    public void setAudioDuration(long j10) {
        this.mAudioDuration = j10;
    }

    @CalledByNative
    public void setChannels(int i9) {
        this.mChannels = i9;
    }

    @CalledByNative
    public void setFps(float f10) {
        this.mFps = f10;
    }

    @CalledByNative
    public void setHeight(int i9) {
        this.mHeight = i9;
    }

    @CalledByNative
    public void setRotation(int i9) {
        this.mRotation = i9;
    }

    @CalledByNative
    public void setSampleRate(int i9) {
        this.mSampleRate = i9;
    }

    @CalledByNative
    public void setVideoBitrate(long j10) {
        this.mVideoBitrate = j10;
    }

    @CalledByNative
    public void setVideoDuration(long j10) {
        this.mVideoDuration = j10;
    }

    @CalledByNative
    public void setVideoMimeType(String str) {
        this.mVideoMimeType = str;
    }

    @CalledByNative
    public void setWidth(int i9) {
        this.mWidth = i9;
    }

    public String toString() {
        return "FFMediaInfo{rotation=" + this.mRotation + ", width=" + this.mWidth + ", height=" + this.mHeight + ", fps=" + this.mFps + ", videoBitrate=" + this.mVideoBitrate + ", videoDuration=" + this.mVideoDuration + ", sampleRate=" + this.mSampleRate + ", channels=" + this.mChannels + ", audioBitrate=" + this.mAudioBitrate + ", audioDuration=" + this.mAudioDuration + '}';
    }
}
