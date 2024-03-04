package com.tencent.rtmp;

import android.graphics.Bitmap;
import android.view.Surface;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.beauty.TXBeautyManager;
import com.tencent.rtmp.TXLivePusher;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
/* loaded from: classes4.dex */
public interface b {
    void callExperimentalAPI(String str);

    void enableAudioVolumeEvaluation(int i9);

    TXAudioEffectManager getAudioEffectManager();

    TXBeautyManager getBeautyManager();

    TXLivePushConfig getConfig();

    int getMaxZoom();

    @Deprecated
    int getMusicDuration(String str);

    boolean isPushing();

    void onLogRecord(String str);

    @Deprecated
    boolean pauseBGM();

    void pausePusher();

    @Deprecated
    boolean playBGM(String str);

    void release();

    @Deprecated
    boolean resumeBGM();

    void resumePusher();

    void sendCustomPCMData(byte[] bArr);

    int sendCustomVideoData(byte[] bArr, int i9, int i10, int i11);

    int sendCustomVideoTexture(int i9, int i10, int i11);

    @Deprecated
    void sendMessage(byte[] bArr);

    boolean sendMessageEx(byte[] bArr);

    void setAudioProcessListener(TXLivePusher.AudioCustomProcessListener audioCustomProcessListener);

    void setAudioVolumeEvaluationListener(TXLivePusher.ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener);

    @Deprecated
    void setBGMNofify(TXLivePusher.OnBGMNotify onBGMNotify);

    @Deprecated
    void setBGMPitch(float f10);

    @Deprecated
    boolean setBGMPosition(int i9);

    @Deprecated
    boolean setBGMVolume(float f10);

    boolean setBeautyFilter(int i9, int i10, int i11, int i12);

    @Deprecated
    void setChinLevel(int i9);

    void setConfig(TXLivePushConfig tXLivePushConfig);

    void setExposureCompensation(float f10);

    @Deprecated
    void setEyeScaleLevel(int i9);

    @Deprecated
    void setFaceShortLevel(int i9);

    @Deprecated
    void setFaceSlimLevel(int i9);

    @Deprecated
    void setFaceVLevel(int i9);

    @Deprecated
    void setFilter(Bitmap bitmap);

    void setFocusPosition(float f10, float f11);

    @Deprecated
    boolean setGreenScreenFile(String str);

    @Deprecated
    boolean setMicVolume(float f10);

    boolean setMirror(boolean z10);

    @Deprecated
    void setMotionMute(boolean z10);

    @Deprecated
    void setMotionTmpl(String str);

    void setMute(boolean z10);

    @Deprecated
    void setNoseSlimLevel(int i9);

    void setPushListener(ITXLivePushListener iTXLivePushListener);

    void setRenderRotation(int i9);

    @Deprecated
    void setReverb(int i9);

    @Deprecated
    void setSpecialRatio(float f10);

    void setSurface(Surface surface);

    void setSurfaceSize(int i9, int i10);

    void setVideoProcessListener(TXLivePusher.VideoCustomProcessListener videoCustomProcessListener);

    void setVideoQuality(int i9, boolean z10, boolean z11);

    void setVideoRecordListener(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener);

    @Deprecated
    void setVoiceChangerType(int i9);

    boolean setZoom(int i9);

    void snapshot(TXLivePusher.ITXSnapshotListener iTXSnapshotListener);

    void startCameraPreview(TXCloudVideoView tXCloudVideoView);

    int startPusher(String str);

    int startRecord(String str);

    void startScreenCapture();

    @Deprecated
    boolean stopBGM();

    void stopCameraPreview(boolean z10);

    void stopPusher();

    void stopRecord();

    void stopScreenCapture();

    void switchCamera();

    boolean turnOnFlashLight(boolean z10);
}
