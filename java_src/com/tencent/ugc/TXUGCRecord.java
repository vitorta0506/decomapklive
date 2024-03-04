package com.tencent.ugc;

import android.content.Context;
import android.graphics.Bitmap;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.beauty.TXBeautyManager;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import com.tencent.ugc.TXVideoEditConstants;
/* loaded from: classes4.dex */
public class TXUGCRecord {
    private static final String TAG = "TXUGCRecord";
    private static TXUGCRecord instance;
    private UGCRecorderJni mUGCRecorder;

    /* loaded from: classes4.dex */
    public interface VideoCustomProcessListener {
        void onDetectFacePoints(float[] fArr);

        int onTextureCustomProcess(int i9, int i10, int i11);

        void onTextureDestroyed();
    }

    protected TXUGCRecord(Context context) {
        UGCRecorderJni uGCRecorderJni = new UGCRecorderJni(context);
        this.mUGCRecorder = uGCRecorderJni;
        uGCRecorderJni.setBGMLoop(true);
    }

    public static synchronized TXUGCRecord getInstance(Context context) {
        TXUGCRecord tXUGCRecord;
        synchronized (TXUGCRecord.class) {
            if (instance == null) {
                instance = new TXUGCRecord(context);
            }
            tXUGCRecord = instance;
        }
        return tXUGCRecord;
    }

    public TXBeautyManager getBeautyManager() {
        return this.mUGCRecorder.getBeautyManager();
    }

    public int getMaxZoom() {
        return this.mUGCRecorder.getMaxZoom();
    }

    public int getMusicDuration(String str) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMVolume is not supported in UGC_Smart license");
            return 0;
        }
        return this.mUGCRecorder.getMusicDuration(str);
    }

    public TXUGCPartsManager getPartsManager() {
        return this.mUGCRecorder.getPartsManager();
    }

    public boolean pauseBGM() {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "pauseBGM is not supported in UGC_Smart license");
            return false;
        }
        return this.mUGCRecorder.pauseBGM();
    }

    public int pauseRecord() {
        return this.mUGCRecorder.pauseRecord();
    }

    public boolean playBGMFromTime(int i9, int i10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "playBGMFromTime is not supported in UGC_Smart license");
            return false;
        }
        return this.mUGCRecorder.playBGMFromTime(i9, i10);
    }

    public void release() {
        this.mUGCRecorder.release();
    }

    public boolean resumeBGM() {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "resumeBGM is not supported in UGC_Smart license");
            return false;
        }
        return this.mUGCRecorder.resumeBGM();
    }

    public int resumeRecord() {
        return this.mUGCRecorder.resumeRecord();
    }

    public boolean seekBGM(int i9, int i10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "seekBGM is not supported in UGC_Smart license");
            return false;
        }
        return this.mUGCRecorder.seekBGM(i9, i10);
    }

    public void setAspectRatio(int i9) {
        this.mUGCRecorder.setAspectRatio(i9);
    }

    public int setBGM(String str) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGM is not supported in UGC_Smart license");
            return -1;
        }
        return this.mUGCRecorder.setBGM(str);
    }

    public void setBGMLoop(boolean z10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMLoop is not supported in UGC_Smart license");
        } else {
            this.mUGCRecorder.setBGMLoop(z10);
        }
    }

    public void setBGMNofify(TXRecordCommon.ITXBGMNotify iTXBGMNotify) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMNofify is not supported in UGC_Smart license");
        } else {
            this.mUGCRecorder.setBGMNotify(iTXBGMNotify);
        }
    }

    public boolean setBGMVolume(float f10) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setBGMVolume is not supported in UGC_Smart license");
            return false;
        }
        return this.mUGCRecorder.setBGMVolume(f10);
    }

    @Deprecated
    public void setBeautyDepth(int i9, int i10, int i11, int i12) {
        this.mUGCRecorder.setBeautyDepth(i9, i10, i11, i12);
    }

    @Deprecated
    public void setBeautyStyle(int i9) {
        this.mUGCRecorder.setBeautyStyle(i9);
    }

    @Deprecated
    public void setChinLevel(int i9) {
        if (!UGCLicenseChecker.isEnterpriseProFunctionSupport()) {
            LiteavLog.e(TAG, "setChinLevel is not supported below enterprise pro license");
        } else {
            this.mUGCRecorder.setChinLevel(i9);
        }
    }

    @Deprecated
    public void setEyeScaleLevel(float f10) {
        if (!UGCLicenseChecker.isEnterpriseProFunctionSupport()) {
            LiteavLog.e(TAG, "setEyeScaleLevel is not supported below enterprise pro license");
        } else {
            this.mUGCRecorder.setEyeScaleLevel(f10);
        }
    }

    @Deprecated
    public void setFaceScaleLevel(float f10) {
        if (!UGCLicenseChecker.isEnterpriseProFunctionSupport()) {
            LiteavLog.e(TAG, "setFaceScaleLevel is not supported below enterprise pro license");
        } else {
            this.mUGCRecorder.setFaceScaleLevel(f10);
        }
    }

    @Deprecated
    public void setFaceShortLevel(int i9) {
        if (!UGCLicenseChecker.isEnterpriseProFunctionSupport()) {
            LiteavLog.e(TAG, "setFaceVLevel is not supported below enterprise pro license");
        } else {
            this.mUGCRecorder.setFaceShortLevel(i9);
        }
    }

    @Deprecated
    public void setFaceVLevel(int i9) {
        if (!UGCLicenseChecker.isEnterpriseProFunctionSupport()) {
            LiteavLog.e(TAG, "setFaceVLevel is not supported below enterprise pro license");
        } else {
            this.mUGCRecorder.setFaceVLevel(i9);
        }
    }

    @Deprecated
    public void setFilter(Bitmap bitmap) {
        this.mUGCRecorder.setFilter(bitmap);
    }

    public void setFocusPosition(float f10, float f11) {
        this.mUGCRecorder.setFocusPosition(f10, f11);
    }

    @Deprecated
    public void setGreenScreenFile(String str, boolean z10) {
        if (!UGCLicenseChecker.isEnterpriseProFunctionSupport()) {
            LiteavLog.e(TAG, "setGreenScreenFile is not supported below enterprise license");
        } else {
            this.mUGCRecorder.setGreenScreenFile(str, z10);
        }
    }

    public void setHomeOrientation(int i9) {
        this.mUGCRecorder.setHomeOrientation(i9);
    }

    public boolean setMicVolume(float f10) {
        return this.mUGCRecorder.setMicVolume(f10);
    }

    @Deprecated
    public void setMotionMute(boolean z10) {
        if (!UGCLicenseChecker.isEnterpriseFunctionSupport()) {
            LiteavLog.e(TAG, "setMotionMute is not supported below enterprise license");
        } else {
            this.mUGCRecorder.setMotionMute(z10);
        }
    }

    @Deprecated
    public void setMotionTmpl(String str) {
        if (!UGCLicenseChecker.isEnterpriseFunctionSupport()) {
            LiteavLog.e(TAG, "setMotionTmpl is not supported below enterprise license");
        } else {
            this.mUGCRecorder.setMotionTmpl(str);
        }
    }

    public void setMute(boolean z10) {
        this.mUGCRecorder.setMute(z10);
    }

    @Deprecated
    public void setNoseSlimLevel(int i9) {
        if (!UGCLicenseChecker.isEnterpriseProFunctionSupport()) {
            LiteavLog.e(TAG, "setNoseSlimLevel is not supported below enterprise pro license");
        } else {
            this.mUGCRecorder.setNoseSlimLevel(i9);
        }
    }

    public void setRecordSpeed(int i9) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setRecordSpeed is not supported in UGC_Smart license");
        } else {
            this.mUGCRecorder.setRecordSpeed(i9);
        }
    }

    public void setRenderRotation(int i9) {
        this.mUGCRecorder.setRenderRotation(i9);
    }

    public void setReverb(int i9) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setReverb is not supported in UGC_Smart license");
        } else {
            this.mUGCRecorder.setReverb(i9);
        }
    }

    @Deprecated
    public void setSpecialRatio(float f10) {
        this.mUGCRecorder.setSpecialRatio(f10);
    }

    public void setVideoBitrate(int i9) {
        this.mUGCRecorder.setVideoBitrate(i9);
    }

    public void setVideoProcessListener(VideoCustomProcessListener videoCustomProcessListener) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setVideoProcessListener is not supported in UGC_Smart license");
        } else {
            this.mUGCRecorder.setVideoProcessListener(videoCustomProcessListener);
        }
    }

    public void setVideoRecordListener(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        this.mUGCRecorder.setVideoRecordListener(iTXVideoRecordListener);
    }

    public void setVideoRenderMode(int i9) {
        this.mUGCRecorder.setVideoRenderMode(i9);
    }

    public void setVideoResolution(int i9) {
        this.mUGCRecorder.setVideoResolution(i9);
    }

    public void setVoiceChangerType(int i9) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setVoiceChangerType is not supported in UGC_Smart license");
        } else {
            this.mUGCRecorder.setVoiceChangerType(i9);
        }
    }

    public void setWatermark(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "setWatermark is not supported in UGC_Smart license");
        } else {
            this.mUGCRecorder.setWatermark(bitmap, tXRect);
        }
    }

    public boolean setZoom(int i9) {
        return this.mUGCRecorder.setZoom(i9);
    }

    public void snapshot(TXRecordCommon.ITXSnapshotListener iTXSnapshotListener) {
        if (UGCLicenseChecker.isStandardFunctionSupport()) {
            this.mUGCRecorder.snapshot(iTXSnapshotListener);
        }
    }

    public int startCameraCustomPreview(TXRecordCommon.TXUGCCustomConfig tXUGCCustomConfig, TXCloudVideoView tXCloudVideoView) {
        return this.mUGCRecorder.startCameraCustomPreview(tXUGCCustomConfig, tXCloudVideoView);
    }

    public int startCameraSimplePreview(TXRecordCommon.TXUGCSimpleConfig tXUGCSimpleConfig, TXCloudVideoView tXCloudVideoView) {
        return this.mUGCRecorder.startCameraSimplePreview(tXUGCSimpleConfig, tXCloudVideoView);
    }

    public int startRecord() {
        if (UGCLicenseChecker.isSimpleFunctionSupport()) {
            return this.mUGCRecorder.startRecord();
        }
        return -5;
    }

    public boolean stopBGM() {
        if (!UGCLicenseChecker.isStandardFunctionSupport()) {
            LiteavLog.e(TAG, "stopBGM is not supported in UGC_Smart license");
            return false;
        }
        return this.mUGCRecorder.stopBGM();
    }

    public void stopCameraPreview() {
        this.mUGCRecorder.stopCameraPreview();
    }

    public int stopRecord() {
        return this.mUGCRecorder.stopRecord();
    }

    public boolean switchCamera(boolean z10) {
        return this.mUGCRecorder.switchCamera(z10);
    }

    public boolean toggleTorch(boolean z10) {
        return this.mUGCRecorder.toggleTorch(z10);
    }

    public void setFilter(Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        this.mUGCRecorder.setFilter(bitmap, f10, bitmap2, f11, f12);
    }

    public int startRecord(String str, String str2) {
        if (UGCLicenseChecker.isSimpleFunctionSupport()) {
            return this.mUGCRecorder.startRecord(str, str2);
        }
        return -5;
    }

    public int startRecord(String str, String str2, String str3) {
        if (UGCLicenseChecker.isSimpleFunctionSupport()) {
            return this.mUGCRecorder.startRecord(str, str2, str3);
        }
        return -5;
    }
}
