package com.tencent.rtmp;

import android.graphics.Bitmap;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class TXLivePushConfig implements Serializable {
    public static final int DEFAULT_MAX_VIDEO_BITRATE = 1200;
    public static final int DEFAULT_MIN_VIDEO_BITRATE = 800;
    public int mAudioBitrate;
    public String mAudioPreProcessFuncName;
    public String mAudioPreProcessLibrary;
    public HashMap<String, String> mMetaData;
    public String mVideoPreProcessFuncName;
    public String mVideoPreProcessLibrary;
    public Bitmap mWatermark;
    public int mCustomModeType = 0;
    public int mAudioSample = 48000;
    public int mAudioChannels = 1;
    public int mVideoFPS = 20;
    public TXVideoResolution mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_540_960;
    public int mVideoBitrate = 1200;
    public int mMaxVideoBitrate = 1500;
    public int mMinVideoBitrate = 800;
    public int mBeautyLevel = 0;
    public int mWhiteningLevel = 0;
    public int mRuddyLevel = 0;
    public int mEyeScaleLevel = 0;
    public int mFaceSlimLevel = 0;
    public int mConnectRetryCount = 3;
    public int mConnectRetryInterval = 3;
    public int mWatermarkX = 0;
    public int mWatermarkY = 0;
    public float mWatermarkXF = 0.0f;
    public float mWatermarkYF = 0.0f;
    public float mWatermarkWidth = -1.0f;
    public int mVideoEncodeGop = 3;
    public boolean mVideoEncoderXMirror = false;
    public boolean mEnableHighResolutionCapture = false;
    public boolean mEnableVideoHardEncoderMainProfile = true;
    public boolean mFrontCamera = true;
    public boolean mAutoAdjustBitrate = false;
    public int mAutoAdjustStrategy = 0;
    public int mHardwareAccel = 2;
    public boolean mTouchFocus = true;
    public boolean mEnableZoom = false;
    public int mHomeOrientation = 1;
    public Bitmap mPauseImg = null;
    public int mPauseTime = 300;
    public int mPauseFps = 5;
    public int mPauseFlag = 1;
    public boolean mEnableAec = false;
    public boolean mEnableAgc = false;
    public boolean mEnableAns = false;
    public boolean mEnableAudioPreview = false;
    public boolean mEnableScreenCaptureAutoRotate = false;
    public boolean mEnablePureAudioPush = false;
    public boolean mEnableNearestIP = true;
    public int mVolumeType = 0;
    public int mLocalVideoMirrorType = 0;
    public int mRtmpChannelType = 0;

    public void enableAEC(boolean z10) {
        this.mEnableAec = z10;
    }

    public void enableAGC(boolean z10) {
        this.mEnableAgc = z10;
    }

    public void enableANS(boolean z10) {
        this.mEnableAns = z10;
    }

    public void enableAudioEarMonitoring(boolean z10) {
        this.mEnableAudioPreview = z10;
    }

    public void enableHighResolutionCaptureMode(boolean z10) {
        this.mEnableHighResolutionCapture = z10;
    }

    @Deprecated
    public void enableNearestIP(boolean z10) {
        this.mEnableNearestIP = z10;
    }

    public void enablePureAudioPush(boolean z10) {
        this.mEnablePureAudioPush = z10;
    }

    public void enableScreenCaptureAutoRotate(boolean z10) {
        this.mEnableScreenCaptureAutoRotate = z10;
    }

    public void enableVideoHardEncoderMainProfile(boolean z10) {
        this.mEnableVideoHardEncoderMainProfile = z10;
    }

    public void setAudioChannels(int i9) {
        this.mAudioChannels = i9;
    }

    public void setAudioSampleRate(int i9) {
        this.mAudioSample = i9;
    }

    public void setAutoAdjustBitrate(boolean z10) {
        this.mAutoAdjustBitrate = z10;
    }

    public void setAutoAdjustStrategy(int i9) {
        this.mAutoAdjustStrategy = i9;
    }

    @Deprecated
    public void setBeautyFilter(int i9, int i10, int i11) {
        this.mBeautyLevel = i9;
        this.mWhiteningLevel = i10;
        this.mRuddyLevel = i11;
    }

    public void setConnectRetryCount(int i9) {
        this.mConnectRetryCount = i9;
    }

    public void setConnectRetryInterval(int i9) {
        this.mConnectRetryInterval = i9;
    }

    public void setCustomAudioPreProcessLibrary(String str, String str2) {
        this.mAudioPreProcessLibrary = str;
        this.mAudioPreProcessFuncName = str2;
    }

    public void setCustomModeType(int i9) {
        this.mCustomModeType = i9;
    }

    public void setCustomVideoPreProcessLibrary(String str, String str2) {
        this.mVideoPreProcessLibrary = str;
        this.mVideoPreProcessFuncName = str2;
    }

    public void setEnableZoom(boolean z10) {
        this.mEnableZoom = z10;
    }

    @Deprecated
    public void setEyeScaleLevel(int i9) {
        this.mEyeScaleLevel = i9;
    }

    @Deprecated
    public void setFaceSlimLevel(int i9) {
        this.mFaceSlimLevel = i9;
    }

    @Deprecated
    public void setFrontCamera(boolean z10) {
        this.mFrontCamera = z10;
    }

    public void setHardwareAcceleration(int i9) {
        if (i9 < 0) {
            i9 = 2;
        }
        this.mHardwareAccel = i9 <= 2 ? i9 : 2;
    }

    public void setHomeOrientation(int i9) {
        this.mHomeOrientation = i9;
    }

    public void setLocalVideoMirrorType(int i9) {
        this.mLocalVideoMirrorType = i9;
    }

    public void setMaxVideoBitrate(int i9) {
        this.mMaxVideoBitrate = i9;
    }

    public void setMetaData(HashMap<String, String> hashMap) {
        this.mMetaData = hashMap;
    }

    public void setMinVideoBitrate(int i9) {
        this.mMinVideoBitrate = i9;
    }

    public void setPauseFlag(int i9) {
        this.mPauseFlag = i9;
    }

    public void setPauseImg(Bitmap bitmap) {
        this.mPauseImg = bitmap;
    }

    @Deprecated
    public void setRtmpChannelType(int i9) {
        this.mRtmpChannelType = i9;
    }

    public void setTouchFocus(boolean z10) {
        this.mTouchFocus = z10;
    }

    public void setVideoBitrate(int i9) {
        this.mVideoBitrate = i9;
    }

    public void setVideoEncodeGop(int i9) {
        this.mVideoEncodeGop = i9;
    }

    public void setVideoEncoderXMirror(boolean z10) {
        this.mVideoEncoderXMirror = z10;
    }

    public void setVideoFPS(int i9) {
        this.mVideoFPS = i9;
    }

    public void setVideoResolution(int i9) {
        if (i9 == 30) {
            this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_1080_1920;
        } else if (i9 != 31) {
            switch (i9) {
                case 0:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_360_640;
                    return;
                case 1:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_540_960;
                    return;
                case 2:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_720_1280;
                    return;
                case 3:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_640_360;
                    return;
                case 4:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_960_540;
                    return;
                case 5:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_1280_720;
                    return;
                case 6:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_320_480;
                    return;
                case 7:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_180_320;
                    return;
                case 8:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_270_480;
                    return;
                case 9:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_320_180;
                    return;
                case 10:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_480_270;
                    return;
                case 11:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_240_320;
                    return;
                case 12:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_360_480;
                    return;
                case 13:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_480_640;
                    return;
                case 14:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_320_240;
                    return;
                case 15:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_480_360;
                    return;
                case 16:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_640_480;
                    return;
                case 17:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_480_480;
                    return;
                case 18:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_270_270;
                    return;
                case 19:
                    this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_160_160;
                    return;
                default:
                    return;
            }
        } else {
            this.mVideoResolution = TXVideoResolution.RESOLUTION_TYPE_1920_1080;
        }
    }

    public void setVolumeType(int i9) {
        this.mVolumeType = i9;
    }

    public void setWatermark(Bitmap bitmap, int i9, int i10) {
        this.mWatermark = bitmap;
        this.mWatermarkX = i9;
        this.mWatermarkY = i10;
    }

    public String toString() {
        return "[resolution:" + this.mVideoResolution + "][fps:" + this.mVideoFPS + "][gop:" + this.mVideoEncodeGop + "][bitrate:" + this.mVideoBitrate + "][maxBitrate:" + this.mMaxVideoBitrate + "][minBitrate:" + this.mMinVideoBitrate + "][highCapture:" + this.mEnableHighResolutionCapture + "][hwAcc:" + this.mHardwareAccel + "][homeOrientation:" + this.mHomeOrientation + "][volumeType:" + this.mVolumeType + "][earMonitor:" + this.mEnableAudioPreview + "][agc:" + this.mEnableAgc + "][ans:" + this.mEnableAns + "][aec:" + this.mEnableAec + "][sample:" + this.mAudioSample + "][pureAudioPush:" + this.mEnablePureAudioPush + "]";
    }

    public void setPauseImg(int i9, int i10) {
        this.mPauseTime = i9;
        this.mPauseFps = i10;
    }

    public void setWatermark(Bitmap bitmap, float f10, float f11, float f12) {
        this.mWatermark = bitmap;
        this.mWatermarkXF = f10;
        this.mWatermarkYF = f11;
        this.mWatermarkWidth = f12;
    }
}
