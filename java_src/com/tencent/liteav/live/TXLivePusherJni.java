package com.tencent.liteav.live;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.Surface;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.audio.TXAudioEffectManagerImpl;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.beauty.TXBeautyManager;
import com.tencent.liteav.beauty.TXBeautyManagerImpl;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.rtmp.ITXLivePushListener;
import com.tencent.rtmp.TXLivePushConfig;
import com.tencent.rtmp.TXLivePusher;
import com.tencent.rtmp.b;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class TXLivePusherJni implements ITXLivePushListener, TXLivePusher.AudioCustomProcessListener, TXLivePusher.ITXAudioVolumeEvaluationListener, TXLivePusher.ITXSnapshotListener, TXLivePusher.OnBGMNotify, TXLivePusher.VideoCustomProcessListener, b, TXCloudVideoView.b {
    private TXLivePusher.AudioCustomProcessListener mAudioCustomProcessListener;
    private TXAudioEffectManager mAudioEffectManager;
    private TXBeautyManager mBeautyManager;
    private TXLivePushConfig mConfig;
    private TXLivePusher.ITXAudioVolumeEvaluationListener mITXAudioVolumeEvaluationListener;
    private ITXLivePushListener mITXLivePushListener;
    private TXLivePusher.ITXSnapshotListener mITXSnapshotListener;
    private TXRecordCommon.ITXVideoRecordListener mITXVideoRecordListener;
    private long mNativeTXLivePusherJni;
    private TXLivePusher.OnBGMNotify mOnBGMNotify;
    private TXLivePusher.VideoCustomProcessListener mVideoCustomProcessListener;
    private int mVideoQuality = -1;

    public TXLivePusherJni(Context context) {
        this.mNativeTXLivePusherJni = 0L;
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
        this.mConfig = new TXLivePushConfig();
        long nativeCreate = nativeCreate(new WeakReference(this));
        this.mNativeTXLivePusherJni = nativeCreate;
        this.mAudioEffectManager = new TXAudioEffectManagerImpl(nativeCreateAudioEffectManager(nativeCreate));
        this.mBeautyManager = new TXBeautyManagerImpl(nativeCreateBeautyManager(this.mNativeTXLivePusherJni));
    }

    @CalledByNative
    public static String[] getMapKeys(HashMap<String, String> hashMap) {
        String[] strArr = new String[hashMap.size()];
        int i9 = 0;
        for (String str : hashMap.keySet()) {
            strArr[i9] = str;
            i9++;
        }
        return strArr;
    }

    @CalledByNative
    public static String[] getMapValues(HashMap<String, String> hashMap, String[] strArr) {
        String[] strArr2 = new String[hashMap.size()];
        int length = strArr.length;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            strArr2[i10] = hashMap.get(strArr[i9]);
            i9++;
            i10++;
        }
        return strArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    @com.tencent.liteav.base.annotations.CalledByNative
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isMapValid(java.util.HashMap<java.lang.String, java.lang.String> r2) {
        /*
            java.util.Set r0 = r2.keySet()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L1e
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            if (r1 == 0) goto L1c
            java.lang.Object r1 = r2.get(r1)
            if (r1 != 0) goto L8
        L1c:
            r2 = 0
            return r2
        L1e:
            r2 = 1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.live.TXLivePusherJni.isMapValid(java.util.HashMap):boolean");
    }

    private static native void nativeCallExperimentalAPI(long j10, String str);

    private static native long nativeCreate(WeakReference<TXLivePusherJni> weakReference);

    private static native long nativeCreateAudioEffectManager(long j10);

    private static native long nativeCreateBeautyManager(long j10);

    private static native void nativeDestroy(long j10);

    private static native void nativeEnableAudioVolumeEvaluation(long j10, int i9);

    private static native int nativeGetMaxZoom(long j10);

    private static native int nativeGetMusicDuration(long j10, String str);

    private static native boolean nativeIsPushing(long j10);

    private static native void nativeOnLogRecord(long j10, String str);

    private static native boolean nativePauseBGM(long j10);

    private static native void nativePausePusher(long j10);

    private static native boolean nativePlayBGM(long j10, String str);

    private static native boolean nativeResumeBGM(long j10);

    private static native void nativeResumePusher(long j10);

    private static native void nativeSendCustomPCMData(long j10, byte[] bArr);

    private static native void nativeSendCustomVideoFrame(long j10, PixelFrame pixelFrame);

    private static native void nativeSendMessage(long j10, byte[] bArr);

    private static native boolean nativeSendMessageEx(long j10, byte[] bArr);

    private static native void nativeSetAudioConfig(long j10, int i9, int i10, int i11, boolean z10, boolean z11);

    private static native void nativeSetBGMPitch(long j10, float f10);

    private static native boolean nativeSetBGMPosition(long j10, int i9);

    private static native boolean nativeSetBGMVolume(long j10, float f10);

    private static native boolean nativeSetBeautyFilter(long j10, int i9, int i10, int i11, int i12);

    private static native void nativeSetCaptureConfig(long j10, int i9, int i10, Bitmap bitmap, int i11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i12);

    private static native void nativeSetEncoderConfig(long j10, int i9, int i10, boolean z10, int i11, int i12, int i13, int i14, int i15, boolean z11, int i16, boolean z12);

    private static native void nativeSetExposureCompensation(long j10, float f10);

    private static native void nativeSetFilter(long j10, Bitmap bitmap);

    private static native void nativeSetFocusPosition(long j10, float f10, float f11);

    private static native boolean nativeSetMicVolume(long j10, float f10);

    private static native boolean nativeSetMirror(long j10, boolean z10);

    private static native void nativeSetMute(long j10, boolean z10);

    private static native void nativeSetNetworkConfig(long j10, int i9, boolean z10, int i10, int i11, int i12, HashMap hashMap);

    private static native void nativeSetRenderRotation(long j10, int i9);

    private static native void nativeSetReverb(long j10, int i9);

    private static native void nativeSetSpecialRatio(long j10, float f10);

    private static native void nativeSetView(long j10, DisplayTarget displayTarget);

    private static native void nativeSetVoiceChangerType(long j10, int i9);

    private static native void nativeSetWaterMark(long j10, Bitmap bitmap, float f10, float f11, float f12);

    private static native boolean nativeSetZoom(long j10, int i9);

    private static native void nativeShowDebugView(long j10, boolean z10);

    private static native void nativeSnapshot(long j10);

    private static native void nativeStartCamera(long j10);

    private static native int nativeStartPusher(long j10, String str);

    private static native int nativeStartRecord(long j10, String str);

    private static native void nativeStartScreenCapture(long j10);

    private static native boolean nativeStopBGM(long j10);

    private static native void nativeStopCameraPreview(long j10, boolean z10);

    private static native void nativeStopPusher(long j10);

    private static native void nativeStopRecord(long j10);

    private static native void nativeStopScreenCapture(long j10);

    private static native void nativeSwitchCamera(long j10);

    private static native boolean nativeTurnOnFlashLight(long j10, boolean z10);

    @CalledByNative
    public static TXLivePusherJni weakToStrongReference(WeakReference<TXLivePusherJni> weakReference) {
        return weakReference.get();
    }

    @Override // com.tencent.rtmp.b
    public void callExperimentalAPI(String str) {
        nativeCallExperimentalAPI(this.mNativeTXLivePusherJni, str);
    }

    @Override // com.tencent.rtmp.b
    public void enableAudioVolumeEvaluation(int i9) {
        nativeEnableAudioVolumeEvaluation(this.mNativeTXLivePusherJni, i9);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        release();
    }

    @Override // com.tencent.rtmp.b
    public TXAudioEffectManager getAudioEffectManager() {
        return this.mAudioEffectManager;
    }

    @Override // com.tencent.rtmp.b
    public TXBeautyManager getBeautyManager() {
        return this.mBeautyManager;
    }

    @Override // com.tencent.rtmp.b
    public TXLivePushConfig getConfig() {
        return this.mConfig;
    }

    @Override // com.tencent.rtmp.b
    public int getMaxZoom() {
        return nativeGetMaxZoom(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public int getMusicDuration(String str) {
        return nativeGetMusicDuration(this.mNativeTXLivePusherJni, str);
    }

    @Override // com.tencent.rtmp.b
    public boolean isPushing() {
        return nativeIsPushing(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.TXLivePusher.ITXAudioVolumeEvaluationListener
    @CalledByNative
    public void onAudioVolumeEvaluationNotify(int i9) {
        TXLivePusher.ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener = this.mITXAudioVolumeEvaluationListener;
        if (iTXAudioVolumeEvaluationListener != null) {
            iTXAudioVolumeEvaluationListener.onAudioVolumeEvaluationNotify(i9);
        }
    }

    @Override // com.tencent.rtmp.TXLivePusher.OnBGMNotify
    @CalledByNative
    public void onBGMComplete(int i9) {
        TXLivePusher.OnBGMNotify onBGMNotify = this.mOnBGMNotify;
        if (onBGMNotify != null) {
            onBGMNotify.onBGMComplete(i9);
        }
    }

    @Override // com.tencent.rtmp.TXLivePusher.OnBGMNotify
    @CalledByNative
    public void onBGMProgress(long j10, long j11) {
        TXLivePusher.OnBGMNotify onBGMNotify = this.mOnBGMNotify;
        if (onBGMNotify != null) {
            onBGMNotify.onBGMProgress(j10, j11);
        }
    }

    @Override // com.tencent.rtmp.TXLivePusher.OnBGMNotify
    @CalledByNative
    public void onBGMStart() {
        TXLivePusher.OnBGMNotify onBGMNotify = this.mOnBGMNotify;
        if (onBGMNotify != null) {
            onBGMNotify.onBGMStart();
        }
    }

    @CalledByNative
    public boolean onCustomPreprocessFrame(PixelFrame pixelFrame, PixelFrame pixelFrame2) {
        int onTextureCustomProcess = onTextureCustomProcess(pixelFrame.getTextureId(), pixelFrame.getWidth(), pixelFrame.getHeight());
        if (onTextureCustomProcess != -1) {
            pixelFrame2.setTextureId(onTextureCustomProcess);
            return true;
        }
        return false;
    }

    @Override // com.tencent.rtmp.TXLivePusher.VideoCustomProcessListener
    public void onDetectFacePoints(float[] fArr) {
        TXLivePusher.VideoCustomProcessListener videoCustomProcessListener = this.mVideoCustomProcessListener;
        if (videoCustomProcessListener != null) {
            videoCustomProcessListener.onDetectFacePoints(fArr);
        }
    }

    @Override // com.tencent.rtmp.b
    public void onLogRecord(String str) {
        nativeOnLogRecord(this.mNativeTXLivePusherJni, str);
    }

    @CalledByNative
    public byte[] onNativeRecordPcmData(byte[] bArr, long j10, int i9, int i10, int i11) {
        onRecordPcmData(bArr, j10, i9, i10, i11);
        return bArr;
    }

    @CalledByNative
    public byte[] onNativeRecordRawPcmData(byte[] bArr, long j10, int i9, int i10, int i11, boolean z10) {
        onRecordRawPcmData(bArr, j10, i9, i10, i11, z10);
        return bArr;
    }

    @Override // com.tencent.rtmp.ITXLivePushListener
    @CalledByNative
    public void onNetStatus(Bundle bundle) {
        ITXLivePushListener iTXLivePushListener = this.mITXLivePushListener;
        if (iTXLivePushListener != null) {
            iTXLivePushListener.onNetStatus(bundle);
        }
    }

    @Override // com.tencent.rtmp.ITXLivePushListener
    @CalledByNative
    public void onPushEvent(int i9, Bundle bundle) {
        ITXLivePushListener iTXLivePushListener = this.mITXLivePushListener;
        if (iTXLivePushListener != null) {
            iTXLivePushListener.onPushEvent(i9, bundle);
        }
    }

    @CalledByNative
    public void onRecordComplete(int i9, String str, String str2, String str3) {
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mITXVideoRecordListener;
        if (iTXVideoRecordListener != null) {
            TXRecordCommon.TXRecordResult tXRecordResult = new TXRecordCommon.TXRecordResult();
            if (i9 == 0) {
                tXRecordResult.retCode = 0;
            } else {
                tXRecordResult.retCode = -1;
            }
            tXRecordResult.descMsg = str;
            tXRecordResult.videoPath = str2;
            tXRecordResult.coverPath = str3;
            iTXVideoRecordListener.onRecordComplete(tXRecordResult);
        }
    }

    @CalledByNative
    public void onRecordEvent(int i9, Bundle bundle) {
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mITXVideoRecordListener;
        if (iTXVideoRecordListener != null) {
            iTXVideoRecordListener.onRecordEvent(i9, bundle);
        }
    }

    @Override // com.tencent.rtmp.TXLivePusher.AudioCustomProcessListener
    public void onRecordPcmData(byte[] bArr, long j10, int i9, int i10, int i11) {
        TXLivePusher.AudioCustomProcessListener audioCustomProcessListener = this.mAudioCustomProcessListener;
        if (audioCustomProcessListener != null) {
            audioCustomProcessListener.onRecordPcmData(bArr, j10, i9, i10, i11);
        }
    }

    @CalledByNative
    public void onRecordProgress(long j10) {
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mITXVideoRecordListener;
        if (iTXVideoRecordListener != null) {
            iTXVideoRecordListener.onRecordProgress(j10);
        }
    }

    @Override // com.tencent.rtmp.TXLivePusher.AudioCustomProcessListener
    public void onRecordRawPcmData(byte[] bArr, long j10, int i9, int i10, int i11, boolean z10) {
        TXLivePusher.AudioCustomProcessListener audioCustomProcessListener = this.mAudioCustomProcessListener;
        if (audioCustomProcessListener != null) {
            audioCustomProcessListener.onRecordRawPcmData(bArr, j10, i9, i10, i11, z10);
        }
    }

    @Override // com.tencent.rtmp.ui.TXCloudVideoView.b
    public void onShowLog(boolean z10) {
        nativeShowDebugView(this.mNativeTXLivePusherJni, z10);
    }

    @Override // com.tencent.rtmp.TXLivePusher.ITXSnapshotListener
    @CalledByNative
    public void onSnapshot(Bitmap bitmap) {
        TXLivePusher.ITXSnapshotListener iTXSnapshotListener = this.mITXSnapshotListener;
        if (iTXSnapshotListener != null) {
            iTXSnapshotListener.onSnapshot(bitmap);
        }
    }

    @Override // com.tencent.rtmp.TXLivePusher.VideoCustomProcessListener
    public int onTextureCustomProcess(int i9, int i10, int i11) {
        TXLivePusher.VideoCustomProcessListener videoCustomProcessListener = this.mVideoCustomProcessListener;
        if (videoCustomProcessListener != null) {
            return videoCustomProcessListener.onTextureCustomProcess(i9, i10, i11);
        }
        return -1;
    }

    @Override // com.tencent.rtmp.TXLivePusher.VideoCustomProcessListener
    @CalledByNative
    public void onTextureDestoryed() {
        TXLivePusher.VideoCustomProcessListener videoCustomProcessListener = this.mVideoCustomProcessListener;
        if (videoCustomProcessListener != null) {
            videoCustomProcessListener.onTextureDestoryed();
        }
    }

    @Override // com.tencent.rtmp.b
    public boolean pauseBGM() {
        return nativePauseBGM(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void pausePusher() {
        nativePausePusher(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public boolean playBGM(String str) {
        return nativePlayBGM(this.mNativeTXLivePusherJni, str);
    }

    @Override // com.tencent.rtmp.b
    public void release() {
        long j10 = this.mNativeTXLivePusherJni;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.mNativeTXLivePusherJni = 0L;
        }
    }

    @Override // com.tencent.rtmp.b
    public boolean resumeBGM() {
        return nativeResumeBGM(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void resumePusher() {
        nativeResumePusher(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void sendCustomPCMData(byte[] bArr) {
        nativeSendCustomPCMData(this.mNativeTXLivePusherJni, bArr);
    }

    @Override // com.tencent.rtmp.b
    public int sendCustomVideoData(byte[] bArr, int i9, int i10, int i11) {
        PixelFrame pixelFrame = new PixelFrame();
        if (i9 == 3) {
            pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.I420);
        } else if (i9 != 5) {
            return -3;
        } else {
            pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
        }
        pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.BYTE_ARRAY);
        pixelFrame.setData(bArr);
        pixelFrame.setWidth(i10);
        pixelFrame.setHeight(i11);
        nativeSendCustomVideoFrame(this.mNativeTXLivePusherJni, pixelFrame);
        return 0;
    }

    @Override // com.tencent.rtmp.b
    public int sendCustomVideoTexture(int i9, int i10, int i11) {
        EGLContext eGLContext;
        PixelFrame pixelFrame = new PixelFrame();
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        if (egl10 != null) {
            eGLContext = egl10.eglGetCurrentContext();
            pixelFrame.setGLContext(eGLContext);
        } else {
            eGLContext = null;
        }
        if (eGLContext == null) {
            return -1;
        }
        pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
        pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.TEXTURE_2D);
        pixelFrame.setTextureId(i9);
        pixelFrame.setWidth(i10);
        pixelFrame.setHeight(i11);
        nativeSendCustomVideoFrame(this.mNativeTXLivePusherJni, pixelFrame);
        return 0;
    }

    @Override // com.tencent.rtmp.b
    public void sendMessage(byte[] bArr) {
        nativeSendMessage(this.mNativeTXLivePusherJni, bArr);
    }

    @Override // com.tencent.rtmp.b
    public boolean sendMessageEx(byte[] bArr) {
        return nativeSendMessageEx(this.mNativeTXLivePusherJni, bArr);
    }

    @Override // com.tencent.rtmp.b
    public void setAudioProcessListener(TXLivePusher.AudioCustomProcessListener audioCustomProcessListener) {
        this.mAudioCustomProcessListener = audioCustomProcessListener;
    }

    @Override // com.tencent.rtmp.b
    public void setAudioVolumeEvaluationListener(TXLivePusher.ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener) {
        this.mITXAudioVolumeEvaluationListener = iTXAudioVolumeEvaluationListener;
    }

    @Override // com.tencent.rtmp.b
    public void setBGMNofify(TXLivePusher.OnBGMNotify onBGMNotify) {
        this.mOnBGMNotify = onBGMNotify;
    }

    @Override // com.tencent.rtmp.b
    public void setBGMPitch(float f10) {
        nativeSetBGMPitch(this.mNativeTXLivePusherJni, f10);
    }

    @Override // com.tencent.rtmp.b
    public boolean setBGMPosition(int i9) {
        return nativeSetBGMPosition(this.mNativeTXLivePusherJni, i9);
    }

    @Override // com.tencent.rtmp.b
    public boolean setBGMVolume(float f10) {
        return nativeSetBGMVolume(this.mNativeTXLivePusherJni, f10);
    }

    @Override // com.tencent.rtmp.b
    public boolean setBeautyFilter(int i9, int i10, int i11, int i12) {
        return nativeSetBeautyFilter(this.mNativeTXLivePusherJni, i9, i10, i11, i12);
    }

    @Override // com.tencent.rtmp.b
    public void setChinLevel(int i9) {
        this.mBeautyManager.setChinLevel(i9);
    }

    @Override // com.tencent.rtmp.b
    public void setConfig(TXLivePushConfig tXLivePushConfig) {
        if (tXLivePushConfig == null) {
            return;
        }
        this.mConfig = tXLivePushConfig;
        nativeSetCaptureConfig(this.mNativeTXLivePusherJni, tXLivePushConfig.mCustomModeType, tXLivePushConfig.mLocalVideoMirrorType, tXLivePushConfig.mPauseImg, tXLivePushConfig.mPauseFps, tXLivePushConfig.mFrontCamera, tXLivePushConfig.mTouchFocus, tXLivePushConfig.mEnableZoom, tXLivePushConfig.mEnableScreenCaptureAutoRotate, tXLivePushConfig.mEnableHighResolutionCapture, tXLivePushConfig.mPauseFlag);
        long j10 = this.mNativeTXLivePusherJni;
        TXLivePushConfig tXLivePushConfig2 = this.mConfig;
        int i9 = tXLivePushConfig2.mHomeOrientation;
        int ordinal = tXLivePushConfig2.mVideoResolution.ordinal();
        TXLivePushConfig tXLivePushConfig3 = this.mConfig;
        nativeSetEncoderConfig(j10, i9, ordinal, tXLivePushConfig3.mAutoAdjustBitrate, tXLivePushConfig3.mVideoBitrate, tXLivePushConfig3.mMaxVideoBitrate, tXLivePushConfig3.mMinVideoBitrate, tXLivePushConfig3.mVideoEncodeGop, tXLivePushConfig3.mVideoFPS, tXLivePushConfig3.mVideoEncoderXMirror, tXLivePushConfig3.mHardwareAccel, tXLivePushConfig3.mEnableVideoHardEncoderMainProfile);
        long j11 = this.mNativeTXLivePusherJni;
        TXLivePushConfig tXLivePushConfig4 = this.mConfig;
        nativeSetWaterMark(j11, tXLivePushConfig4.mWatermark, tXLivePushConfig4.mWatermarkXF, tXLivePushConfig4.mWatermarkYF, tXLivePushConfig4.mWatermarkWidth);
        long j12 = this.mNativeTXLivePusherJni;
        TXLivePushConfig tXLivePushConfig5 = this.mConfig;
        nativeSetAudioConfig(j12, tXLivePushConfig5.mAudioChannels, tXLivePushConfig5.mAudioSample, tXLivePushConfig5.mVolumeType, tXLivePushConfig5.mEnableAudioPreview, tXLivePushConfig5.mEnableAns);
        long j13 = this.mNativeTXLivePusherJni;
        TXLivePushConfig tXLivePushConfig6 = this.mConfig;
        nativeSetNetworkConfig(j13, tXLivePushConfig6.mAutoAdjustStrategy, tXLivePushConfig6.mEnablePureAudioPush, tXLivePushConfig6.mConnectRetryCount, tXLivePushConfig6.mConnectRetryInterval, tXLivePushConfig6.mRtmpChannelType, tXLivePushConfig6.mMetaData);
    }

    @Override // com.tencent.rtmp.b
    public void setExposureCompensation(float f10) {
        nativeSetExposureCompensation(this.mNativeTXLivePusherJni, f10);
    }

    @Override // com.tencent.rtmp.b
    public void setEyeScaleLevel(int i9) {
        this.mBeautyManager.setEyeScaleLevel(i9);
    }

    @Override // com.tencent.rtmp.b
    public void setFaceShortLevel(int i9) {
        this.mBeautyManager.setFaceShortLevel(i9);
    }

    @Override // com.tencent.rtmp.b
    public void setFaceSlimLevel(int i9) {
        this.mBeautyManager.setFaceSlimLevel(i9);
    }

    @Override // com.tencent.rtmp.b
    public void setFaceVLevel(int i9) {
        this.mBeautyManager.setFaceVLevel(i9);
    }

    @Override // com.tencent.rtmp.b
    public void setFilter(Bitmap bitmap) {
        nativeSetFilter(this.mNativeTXLivePusherJni, bitmap);
    }

    @Override // com.tencent.rtmp.b
    public void setFocusPosition(float f10, float f11) {
        nativeSetFocusPosition(this.mNativeTXLivePusherJni, f10, f11);
    }

    @Override // com.tencent.rtmp.b
    public boolean setGreenScreenFile(String str) {
        return this.mBeautyManager.setGreenScreenFile(str) != 0;
    }

    @Override // com.tencent.rtmp.b
    public boolean setMicVolume(float f10) {
        return nativeSetMicVolume(this.mNativeTXLivePusherJni, f10);
    }

    @Override // com.tencent.rtmp.b
    public boolean setMirror(boolean z10) {
        return nativeSetMirror(this.mNativeTXLivePusherJni, z10);
    }

    @Override // com.tencent.rtmp.b
    public void setMotionMute(boolean z10) {
        this.mBeautyManager.setMotionMute(z10);
    }

    @Override // com.tencent.rtmp.b
    public void setMotionTmpl(String str) {
        this.mBeautyManager.setMotionTmpl(str);
    }

    @Override // com.tencent.rtmp.b
    public void setMute(boolean z10) {
        nativeSetMute(this.mNativeTXLivePusherJni, z10);
    }

    @Override // com.tencent.rtmp.b
    public void setNoseSlimLevel(int i9) {
        this.mBeautyManager.setNoseSlimLevel(i9);
    }

    @Override // com.tencent.rtmp.b
    public void setPushListener(ITXLivePushListener iTXLivePushListener) {
        this.mITXLivePushListener = iTXLivePushListener;
    }

    @Override // com.tencent.rtmp.b
    public void setRenderRotation(int i9) {
        nativeSetRenderRotation(this.mNativeTXLivePusherJni, i9);
    }

    @Override // com.tencent.rtmp.b
    public void setReverb(int i9) {
        nativeSetReverb(this.mNativeTXLivePusherJni, i9);
    }

    @Override // com.tencent.rtmp.b
    public void setSpecialRatio(float f10) {
        nativeSetSpecialRatio(this.mNativeTXLivePusherJni, f10);
    }

    @Override // com.tencent.rtmp.b
    public void setSurface(Surface surface) {
        nativeSetView(this.mNativeTXLivePusherJni, new DisplayTarget(surface));
    }

    @Override // com.tencent.rtmp.b
    public void setSurfaceSize(int i9, int i10) {
    }

    @Override // com.tencent.rtmp.b
    public void setVideoProcessListener(TXLivePusher.VideoCustomProcessListener videoCustomProcessListener) {
        this.mVideoCustomProcessListener = videoCustomProcessListener;
    }

    @Override // com.tencent.rtmp.b
    public void setVideoQuality(int i9, boolean z10, boolean z11) {
        boolean z12 = z10 && z11;
        this.mVideoQuality = i9;
        this.mConfig.setAudioSampleRate(48000);
        this.mConfig.setHardwareAcceleration(1);
        this.mConfig.setAutoAdjustBitrate(z10);
        switch (i9) {
            case 1:
                this.mConfig.setVideoResolution(0);
                this.mConfig.setAutoAdjustStrategy(z11 ? 1 : 0);
                this.mConfig.setVideoEncodeGop(3);
                if (z12) {
                    this.mConfig.setMinVideoBitrate(301);
                } else {
                    this.mConfig.setMinVideoBitrate(500);
                }
                this.mConfig.setVideoBitrate(800);
                this.mConfig.setMaxVideoBitrate(900);
                break;
            case 2:
                this.mConfig.setVideoResolution(1);
                this.mConfig.setAutoAdjustStrategy(z11 ? 1 : 0);
                this.mConfig.setVideoEncodeGop(3);
                if (z12) {
                    this.mConfig.setMinVideoBitrate(600);
                } else {
                    this.mConfig.setMinVideoBitrate(800);
                }
                this.mConfig.setVideoBitrate(1200);
                this.mConfig.setMaxVideoBitrate(1500);
                break;
            case 3:
                this.mConfig.setVideoResolution(2);
                this.mConfig.setAutoAdjustStrategy(z11 ? 1 : 0);
                this.mConfig.setVideoEncodeGop(3);
                if (z12) {
                    this.mConfig.setMinVideoBitrate(600);
                } else {
                    this.mConfig.setMinVideoBitrate(1000);
                }
                this.mConfig.setVideoBitrate(1800);
                this.mConfig.setMaxVideoBitrate(1800);
                break;
            case 4:
                int i10 = this.mVideoQuality;
                if (i10 == 1) {
                    this.mConfig.setVideoResolution(0);
                    this.mConfig.setMinVideoBitrate(500);
                    this.mConfig.setVideoBitrate(800);
                    this.mConfig.setMaxVideoBitrate(900);
                } else if (i10 == 3) {
                    this.mConfig.setVideoResolution(2);
                    this.mConfig.setMinVideoBitrate(1000);
                    this.mConfig.setVideoBitrate(1800);
                    this.mConfig.setMaxVideoBitrate(1800);
                } else if (i10 == 7) {
                    this.mConfig.setVideoResolution(30);
                    this.mConfig.setMinVideoBitrate(2000);
                    this.mConfig.setVideoBitrate(3000);
                    this.mConfig.setMaxVideoBitrate(3000);
                } else {
                    this.mConfig.setVideoResolution(1);
                    this.mConfig.setMinVideoBitrate(800);
                    this.mConfig.setVideoBitrate(1200);
                    this.mConfig.setMaxVideoBitrate(1500);
                }
                this.mConfig.setAutoAdjustStrategy(4);
                this.mConfig.setVideoEncodeGop(1);
                break;
            case 5:
                this.mConfig.setVideoResolution(6);
                this.mConfig.setMinVideoBitrate(350);
                this.mConfig.setVideoBitrate(350);
                this.mConfig.setMaxVideoBitrate(350);
                this.mConfig.setAutoAdjustStrategy(4);
                this.mConfig.setVideoEncodeGop(1);
                break;
            case 6:
                this.mConfig.setVideoResolution(0);
                this.mConfig.setAutoAdjustStrategy(5);
                this.mConfig.setVideoEncodeGop(1);
                this.mConfig.setMinVideoBitrate(FacebookRequestErrorClassification.EC_INVALID_TOKEN);
                this.mConfig.setVideoBitrate(400);
                this.mConfig.setMaxVideoBitrate(810);
                break;
            case 7:
                this.mConfig.setVideoResolution(30);
                this.mConfig.setAutoAdjustStrategy(z11 ? 1 : 0);
                this.mConfig.setVideoEncodeGop(3);
                if (z12) {
                    this.mConfig.setMinVideoBitrate(600);
                } else {
                    this.mConfig.setMinVideoBitrate(2500);
                }
                this.mConfig.setVideoBitrate(3000);
                this.mConfig.setMaxVideoBitrate(3000);
                break;
            default:
                return;
        }
        setConfig(this.mConfig);
    }

    @Override // com.tencent.rtmp.b
    public void setVideoRecordListener(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        this.mITXVideoRecordListener = iTXVideoRecordListener;
    }

    @Override // com.tencent.rtmp.b
    public void setVoiceChangerType(int i9) {
        nativeSetVoiceChangerType(this.mNativeTXLivePusherJni, i9);
    }

    @Override // com.tencent.rtmp.b
    public boolean setZoom(int i9) {
        return nativeSetZoom(this.mNativeTXLivePusherJni, i9);
    }

    @Override // com.tencent.rtmp.b
    public void snapshot(TXLivePusher.ITXSnapshotListener iTXSnapshotListener) {
        this.mITXSnapshotListener = iTXSnapshotListener;
        nativeSnapshot(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void startCameraPreview(TXCloudVideoView tXCloudVideoView) {
        if (tXCloudVideoView != null) {
            a.a(tXCloudVideoView, new WeakReference(this));
            nativeShowDebugView(this.mNativeTXLivePusherJni, a.a(tXCloudVideoView));
        }
        nativeSetView(this.mNativeTXLivePusherJni, new DisplayTarget(tXCloudVideoView));
        nativeStartCamera(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public int startPusher(String str) {
        return nativeStartPusher(this.mNativeTXLivePusherJni, str);
    }

    @Override // com.tencent.rtmp.b
    public int startRecord(String str) {
        return nativeStartRecord(this.mNativeTXLivePusherJni, str);
    }

    @Override // com.tencent.rtmp.b
    public void startScreenCapture() {
        nativeStartScreenCapture(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public boolean stopBGM() {
        return nativeStopBGM(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void stopCameraPreview(boolean z10) {
        nativeStopCameraPreview(this.mNativeTXLivePusherJni, z10);
    }

    @Override // com.tencent.rtmp.b
    public void stopPusher() {
        nativeStopPusher(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void stopRecord() {
        nativeStopRecord(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void stopScreenCapture() {
        nativeStopScreenCapture(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public void switchCamera() {
        TXLivePushConfig tXLivePushConfig = this.mConfig;
        tXLivePushConfig.setFrontCamera(!tXLivePushConfig.mFrontCamera);
        nativeSwitchCamera(this.mNativeTXLivePusherJni);
    }

    @Override // com.tencent.rtmp.b
    public boolean turnOnFlashLight(boolean z10) {
        return nativeTurnOnFlashLight(this.mNativeTXLivePusherJni, z10);
    }
}
