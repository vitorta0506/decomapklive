package com.tencent.ugc;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.ThreadUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.beauty.TXBeautyManager;
import com.tencent.liteav.beauty.TXBeautyManagerImpl;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import com.tencent.ugc.TXUGCRecord;
import com.tencent.ugc.TXVideoEditConstants;
import com.tencent.ugc.datereport.UGCDataReport;
import com.tencent.ugc.datereport.UGCDataReportDef;
import com.vk.api.sdk.exceptions.VKApiCodes;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class UGCRecorderJni {
    private static final String OUTPUT_DIR_NAME = "TXUGC";
    private static final String OUTPUT_TEMP_DIR_NAME = "TXUGCParts";
    private static final String OUTPUT_VIDEO_COVER_NAME = "TXUGCCover.jpg";
    private static final String OUTPUT_VIDEO_NAME = "TXUGCRecord.mp4";
    private static final String TAG = "UGCRecorderJni";
    private TXRecordCommon.ITXBGMNotify mBGMListener;
    private TXBeautyManager mBeautyManager;
    private Context mContext;
    private String mCoverPath;
    private TXUGCRecord.VideoCustomProcessListener mCustomProcessListener;
    private long mNativeUGCRecorderJni;
    private TXCloudVideoView mPreviewView;
    private RecordParams mRecorderParams = new RecordParams();
    private TXRecordCommon.ITXSnapshotListener mSnapshotListener;
    private TXUGCPartsManager mTXUGCPartsManager;
    private String mVideoFilePath;
    private String mVideoPartFolder;
    private TXRecordCommon.ITXVideoRecordListener mVideoRecordListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static class RecordParams {

        /* renamed from: a  reason: collision with root package name */
        public int f34664a = 540;

        /* renamed from: b  reason: collision with root package name */
        public int f34665b = VKApiCodes.CODE_CALL_REQUIRES_AUTH;

        /* renamed from: c  reason: collision with root package name */
        public int f34666c = 20;

        /* renamed from: d  reason: collision with root package name */
        public int f34667d = 1800;

        /* renamed from: e  reason: collision with root package name */
        public int f34668e = 3;

        /* renamed from: f  reason: collision with root package name */
        public boolean f34669f = true;

        /* renamed from: g  reason: collision with root package name */
        public boolean f34670g = false;

        /* renamed from: h  reason: collision with root package name */
        public int f34671h = 5000;

        /* renamed from: i  reason: collision with root package name */
        public int f34672i = 60000;

        /* renamed from: j  reason: collision with root package name */
        public int f34673j = 48000;

        /* renamed from: k  reason: collision with root package name */
        public boolean f34674k = true;

        /* renamed from: l  reason: collision with root package name */
        public int f34675l = 0;

        RecordParams() {
        }

        @CalledByNative("RecordParams")
        public int getAudioSampleRate() {
            return this.f34673j;
        }

        @CalledByNative("RecordParams")
        public int getMaxDuration() {
            return this.f34672i;
        }

        @CalledByNative("RecordParams")
        public int getMinDuration() {
            return this.f34671h;
        }

        @CalledByNative("RecordParams")
        public int getVideoBitrate() {
            return this.f34667d;
        }

        @CalledByNative("RecordParams")
        public int getVideoFps() {
            return this.f34666c;
        }

        @CalledByNative("RecordParams")
        public int getVideoGop() {
            return this.f34668e;
        }

        @CalledByNative("RecordParams")
        public int getVideoHeight() {
            return this.f34665b;
        }

        @CalledByNative("RecordParams")
        public int getVideoProfile() {
            return this.f34675l;
        }

        @CalledByNative("RecordParams")
        public int getVideoWidth() {
            return this.f34664a;
        }

        @CalledByNative("RecordParams")
        public boolean isFullIFrame() {
            return this.f34674k;
        }
    }

    static {
        com.tencent.liteav.base.util.r.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public UGCRecorderJni(Context context) {
        this.mNativeUGCRecorderJni = 0L;
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        ContextUtils.initApplicationContext(applicationContext);
        ContextUtils.setDataDirectorySuffix("liteav");
        long nativeCreate = nativeCreate(this);
        this.mNativeUGCRecorderJni = nativeCreate;
        this.mBeautyManager = new TXBeautyManagerImpl(nativeCreateBeautyManager(nativeCreate));
        this.mTXUGCPartsManager = new TXUGCPartsManagerImpl(nativeCreatePartsManager(this.mNativeUGCRecorderJni));
        initFileAndFolder();
    }

    private int checkRecordPath(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            LiteavLog.e(TAG, "startRecord: init videoRecord failed, videoFilePath is empty");
            return -2;
        }
        this.mVideoFilePath = str;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        if (!TextUtils.isEmpty(str3)) {
            this.mCoverPath = str3;
        }
        if (!TextUtils.isEmpty(str2)) {
            this.mVideoPartFolder = str2;
        }
        File file2 = new File(this.mVideoPartFolder);
        if (file2.exists()) {
            return 0;
        }
        file2.mkdirs();
        return 0;
    }

    private void createThumbFile(String str, String str2) {
        Bitmap sampleImage;
        FileOutputStream fileOutputStream;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (sampleImage = TXVideoInfoReader.getInstance(this.mContext).getSampleImage(0L, str)) == null) {
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            File file = new File(str2);
            if (file.exists()) {
                file.delete();
            }
            fileOutputStream = new FileOutputStream(file);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            sampleImage.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            fileOutputStream.flush();
            com.tencent.liteav.base.util.f.a(fileOutputStream);
        } catch (Exception unused2) {
            fileOutputStream2 = fileOutputStream;
            com.tencent.liteav.base.util.f.a(fileOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            com.tencent.liteav.base.util.f.a(fileOutputStream2);
            throw th;
        }
    }

    private String getDefaultDir() {
        File a10 = com.tencent.liteav.base.util.f.a(this.mContext, OUTPUT_DIR_NAME);
        if (a10 == null) {
            a10 = this.mContext.getFilesDir();
        }
        return a10 != null ? a10.getPath() : "";
    }

    private int getEditBitrateWithSize(int i9, int i10) {
        if (i9 > 640 || i10 > 640) {
            if (i9 > 960 || i10 > 960) {
                return (i9 > 1280 || i10 > 1280) ? 12000 : 7200;
            }
            return 5200;
        }
        return 2000;
    }

    private com.tencent.liteav.base.util.q getVideoSize(int i9) {
        com.tencent.liteav.base.util.q qVar = new com.tencent.liteav.base.util.q();
        if (i9 == 0) {
            qVar.f31029a = 360;
            qVar.f31030b = 640;
        } else if (i9 == 1) {
            qVar.f31029a = 480;
            qVar.f31030b = 640;
        } else if (i9 == 3) {
            qVar.f31029a = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;
            qVar.f31030b = UGCTransitionRules.DEFAULT_IMAGE_HEIGHT;
        } else if (i9 != 4) {
            qVar.f31029a = 540;
            qVar.f31030b = VKApiCodes.CODE_CALL_REQUIRES_AUTH;
        } else {
            qVar.f31029a = 1080;
            qVar.f31030b = 1920;
        }
        return qVar;
    }

    private void initFileAndFolder() {
        String defaultDir = getDefaultDir();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(defaultDir);
        String str = File.separator;
        sb2.append(str);
        sb2.append(OUTPUT_VIDEO_NAME);
        this.mVideoFilePath = sb2.toString();
        this.mCoverPath = defaultDir + str + OUTPUT_VIDEO_COVER_NAME;
        this.mVideoPartFolder = defaultDir + str + OUTPUT_TEMP_DIR_NAME;
        File file = new File(this.mVideoPartFolder);
        if (!file.exists()) {
            file.mkdir();
        }
        File file2 = new File(this.mVideoFilePath);
        if (file2.exists()) {
            file2.delete();
        }
    }

    private void initRecorderParams(TXRecordCommon.TXUGCSimpleConfig tXUGCSimpleConfig) {
        int i9 = tXUGCSimpleConfig.videoQuality;
        if (i9 == 0) {
            RecordParams recordParams = this.mRecorderParams;
            recordParams.f34664a = 360;
            recordParams.f34665b = 640;
            recordParams.f34667d = 2000;
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_BD);
        } else if (i9 == 1) {
            RecordParams recordParams2 = this.mRecorderParams;
            recordParams2.f34664a = 480;
            recordParams2.f34665b = 640;
            recordParams2.f34667d = 3200;
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_HD);
        } else if (i9 != 3) {
            RecordParams recordParams3 = this.mRecorderParams;
            recordParams3.f34664a = 540;
            recordParams3.f34665b = VKApiCodes.CODE_CALL_REQUIRES_AUTH;
            recordParams3.f34667d = 5200;
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_HD);
        } else {
            RecordParams recordParams4 = this.mRecorderParams;
            recordParams4.f34664a = UGCTransitionRules.DEFAULT_IMAGE_WIDTH;
            recordParams4.f34665b = UGCTransitionRules.DEFAULT_IMAGE_HEIGHT;
            recordParams4.f34667d = 7200;
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_FHD);
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_VIDEO_BITRATE, this.mRecorderParams.f34667d, "");
        RecordParams recordParams5 = this.mRecorderParams;
        recordParams5.f34666c = 30;
        boolean z10 = tXUGCSimpleConfig.needEdit;
        recordParams5.f34674k = z10;
        recordParams5.f34669f = tXUGCSimpleConfig.isFront;
        recordParams5.f34670g = tXUGCSimpleConfig.touchFocus;
        recordParams5.f34675l = tXUGCSimpleConfig.profile;
        recordParams5.f34671h = tXUGCSimpleConfig.minDuration;
        recordParams5.f34672i = tXUGCSimpleConfig.maxDuration;
        if (z10) {
            recordParams5.f34668e = 1;
            recordParams5.f34667d = getEditBitrateWithSize(recordParams5.f34664a, recordParams5.f34665b);
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_FPS, this.mRecorderParams.f34666c, "");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onRecordComplete$1(int i9, String str, String str2, String str3, TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        TXRecordCommon.TXRecordResult tXRecordResult = new TXRecordCommon.TXRecordResult();
        tXRecordResult.retCode = i9;
        tXRecordResult.descMsg = str;
        tXRecordResult.videoPath = str2;
        tXRecordResult.coverPath = str3;
        iTXVideoRecordListener.onRecordComplete(tXRecordResult);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$setFocusPosition$0(UGCRecorderJni uGCRecorderJni, float f10, float f11) {
        try {
            Class cls = Integer.TYPE;
            Method declaredMethod = TXCloudVideoView.class.getDeclaredMethod("showIndicatorView", cls, cls, cls, cls);
            declaredMethod.setAccessible(true);
            TXCloudVideoView tXCloudVideoView = uGCRecorderJni.mPreviewView;
            if (tXCloudVideoView != null) {
                declaredMethod.invoke(tXCloudVideoView, Integer.valueOf((int) f10), Integer.valueOf((int) f11), Integer.valueOf(tXCloudVideoView.getWidth()), Integer.valueOf(tXCloudVideoView.getHeight()));
            }
        } catch (Exception e10) {
            LiteavLog.w(TAG, " showIndicatorView ".concat(String.valueOf(e10)));
        }
    }

    private static native long nativeCreate(UGCRecorderJni uGCRecorderJni);

    private static native long nativeCreateBeautyManager(long j10);

    private static native long nativeCreatePartsManager(long j10);

    private static native void nativeDestroy(long j10);

    private static native void nativeEnableBGMNotify(long j10, boolean z10);

    private static native void nativeEnableCameraAutoFocus(long j10, boolean z10);

    private static native void nativeEnableVideoCustomPreprocess(long j10, boolean z10);

    private static native int nativeGetMusicDuration(long j10, String str);

    private static native int nativeGetZoomLevel(long j10);

    private static native boolean nativePauseBGM(long j10);

    private static native int nativePauseRecord(long j10);

    private static native boolean nativePlayBGM(long j10, int i9, int i10);

    private static native boolean nativeResumeBGM(long j10);

    private static native int nativeResumeRecord(long j10);

    private static native void nativeSetAspectRatio(long j10, int i9);

    private static native void nativeSetBGMLoop(long j10, boolean z10);

    private static native int nativeSetBGMPath(long j10, String str);

    private static native boolean nativeSetBGMVolume(long j10, int i9);

    private static native void nativeSetFilter(long j10, Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12);

    private static native void nativeSetFocusPosition(long j10, float f10, float f11);

    private static native void nativeSetHomeOrientation(long j10, int i9);

    private static native void nativeSetMicVolume(long j10, int i9);

    public static native void nativeSetMute(long j10, boolean z10);

    private static native void nativeSetRecordParams(long j10, RecordParams recordParams);

    private static native void nativeSetRecordSpeed(long j10, int i9);

    private static native void nativeSetRenderMode(long j10, int i9);

    private static native void nativeSetRenderRotation(long j10, int i9);

    private static native void nativeSetReverbType(long j10, int i9);

    private static native void nativeSetView(long j10, DisplayTarget displayTarget);

    private static native void nativeSetVoiceChangerType(long j10, int i9);

    private static native void nativeSetWatermark(long j10, Bitmap bitmap, float f10, float f11, float f12);

    private static native boolean nativeSetZoomLevel(long j10, int i9);

    private static native void nativeSnapshot(long j10);

    private static native void nativeStartCamera(long j10, boolean z10);

    private static native int nativeStartRecord(long j10, String str, String str2, String str3);

    private static native boolean nativeStopBGM(long j10);

    private static native void nativeStopCamera(long j10);

    private static native int nativeStopRecord(long j10);

    private static native boolean nativeSwitchCamera(long j10, boolean z10);

    private static native boolean nativeTurnOnTorch(long j10, boolean z10);

    protected void finalize() throws Throwable {
        super.finalize();
        long j10 = this.mNativeUGCRecorderJni;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.mNativeUGCRecorderJni = 0L;
        }
    }

    public TXBeautyManager getBeautyManager() {
        return this.mBeautyManager;
    }

    public int getMaxZoom() {
        return nativeGetZoomLevel(this.mNativeUGCRecorderJni);
    }

    public int getMusicDuration(String str) {
        long j10 = this.mNativeUGCRecorderJni;
        if (str == null) {
            str = "";
        }
        return nativeGetMusicDuration(j10, str);
    }

    public TXUGCPartsManager getPartsManager() {
        return this.mTXUGCPartsManager;
    }

    @CalledByNative
    public void onBGMComplete(int i9) {
        TXRecordCommon.ITXBGMNotify iTXBGMNotify = this.mBGMListener;
        if (iTXBGMNotify != null) {
            iTXBGMNotify.onBGMComplete(i9);
        }
    }

    @CalledByNative
    public void onBGMProgress(long j10, long j11) {
        TXRecordCommon.ITXBGMNotify iTXBGMNotify = this.mBGMListener;
        if (iTXBGMNotify != null) {
            iTXBGMNotify.onBGMProgress(j10, j11);
        }
    }

    @CalledByNative
    public void onBGMStart() {
        TXRecordCommon.ITXBGMNotify iTXBGMNotify = this.mBGMListener;
        if (iTXBGMNotify != null) {
            iTXBGMNotify.onBGMStart();
        }
    }

    @CalledByNative
    public void onDetectFacePoints(float[] fArr) {
        TXUGCRecord.VideoCustomProcessListener videoCustomProcessListener = this.mCustomProcessListener;
        if (videoCustomProcessListener != null) {
            videoCustomProcessListener.onDetectFacePoints(fArr);
        }
    }

    @CalledByNative
    public void onGLContextDestroy() {
        TXUGCRecord.VideoCustomProcessListener videoCustomProcessListener = this.mCustomProcessListener;
        if (videoCustomProcessListener != null) {
            videoCustomProcessListener.onTextureDestroyed();
        }
    }

    @CalledByNative
    public boolean onPreprocessVideoFrame(PixelFrame pixelFrame, PixelFrame pixelFrame2) {
        int onTextureCustomProcess;
        TXUGCRecord.VideoCustomProcessListener videoCustomProcessListener = this.mCustomProcessListener;
        if (videoCustomProcessListener == null || (onTextureCustomProcess = videoCustomProcessListener.onTextureCustomProcess(pixelFrame.getTextureId(), pixelFrame.getWidth(), pixelFrame.getHeight())) < 0) {
            return false;
        }
        pixelFrame2.setTextureId(onTextureCustomProcess);
        return true;
    }

    @CalledByNative
    public void onRecordComplete(int i9, String str, String str2, String str3) {
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mVideoRecordListener;
        if (iTXVideoRecordListener != null) {
            createThumbFile(str2, str3);
            ThreadUtils.getUiThreadHandler().post(ej.a(i9, str, str2, str3, iTXVideoRecordListener));
        }
    }

    @CalledByNative
    public void onRecordEvent(int i9) {
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mVideoRecordListener;
        if (iTXVideoRecordListener != null) {
            iTXVideoRecordListener.onRecordEvent(i9, new Bundle());
        }
    }

    @CalledByNative
    public void onRecordProgress(long j10) {
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mVideoRecordListener;
        if (iTXVideoRecordListener != null) {
            iTXVideoRecordListener.onRecordProgress(j10);
        }
    }

    @CalledByNative
    public void onSnapshot(Bitmap bitmap) {
        TXRecordCommon.ITXSnapshotListener iTXSnapshotListener = this.mSnapshotListener;
        if (iTXSnapshotListener != null) {
            iTXSnapshotListener.onSnapshot(bitmap);
        }
    }

    public boolean pauseBGM() {
        return nativePauseBGM(this.mNativeUGCRecorderJni);
    }

    public int pauseRecord() {
        return nativePauseRecord(this.mNativeUGCRecorderJni);
    }

    public boolean playBGMFromTime(int i9, int i10) {
        UGCDataReport.reportDAU(1008);
        return nativePlayBGM(this.mNativeUGCRecorderJni, i9, i10);
    }

    public void release() {
        setVoiceChangerType(0);
        setReverb(0);
        setRecordSpeed(2);
        stopBGM();
        stopCameraPreview();
        stopRecord();
    }

    public boolean resumeBGM() {
        return nativeResumeBGM(this.mNativeUGCRecorderJni);
    }

    public int resumeRecord() {
        return nativeResumeRecord(this.mNativeUGCRecorderJni);
    }

    public boolean seekBGM(int i9, int i10) {
        return nativePlayBGM(this.mNativeUGCRecorderJni, i9, i10);
    }

    public void setAspectRatio(int i9) {
        nativeSetAspectRatio(this.mNativeUGCRecorderJni, i9);
        if (i9 == 0) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RATIO_9_16);
        } else if (i9 == 1) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RATIO_3_4);
        } else if (i9 == 2) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RATIO_1_1);
        } else if (i9 == 3) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RATIO_16_9);
        } else if (i9 == 4) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RATIO_4_3);
        }
    }

    public int setBGM(String str) {
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_BGM);
        long j10 = this.mNativeUGCRecorderJni;
        if (str == null) {
            str = "";
        }
        return nativeSetBGMPath(j10, str);
    }

    public void setBGMLoop(boolean z10) {
        nativeSetBGMLoop(this.mNativeUGCRecorderJni, z10);
    }

    public void setBGMNotify(TXRecordCommon.ITXBGMNotify iTXBGMNotify) {
        this.mBGMListener = iTXBGMNotify;
        nativeEnableBGMNotify(this.mNativeUGCRecorderJni, iTXBGMNotify != null);
    }

    public boolean setBGMVolume(float f10) {
        return nativeSetBGMVolume(this.mNativeUGCRecorderJni, (int) (f10 * 100.0f));
    }

    public void setBeautyDepth(int i9, int i10, int i11, int i12) {
        this.mBeautyManager.setBeautyStyle(i9);
        this.mBeautyManager.setBeautyLevel(i10);
        this.mBeautyManager.setWhitenessLevel(i11);
        this.mBeautyManager.setRuddyLevel(i12);
    }

    public void setBeautyStyle(int i9) {
        this.mBeautyManager.setBeautyStyle(i9);
    }

    public void setChinLevel(int i9) {
        this.mBeautyManager.setChinLevel(i9);
    }

    public void setEyeScaleLevel(float f10) {
        this.mBeautyManager.setEyeScaleLevel(f10);
    }

    public void setFaceScaleLevel(float f10) {
        this.mBeautyManager.setFaceSlimLevel(f10);
    }

    public void setFaceShortLevel(int i9) {
        this.mBeautyManager.setFaceShortLevel(i9);
    }

    public void setFaceVLevel(int i9) {
        this.mBeautyManager.setFaceVLevel(i9);
    }

    public void setFilter(Bitmap bitmap) {
        this.mBeautyManager.setFilter(bitmap);
    }

    public void setFocusPosition(float f10, float f11) {
        if (this.mRecorderParams.f34670g) {
            nativeSetFocusPosition(this.mNativeUGCRecorderJni, f10, f11);
            ThreadUtils.getUiThreadHandler().postDelayed(ei.a(this, f10, f11), 100L);
        }
    }

    public void setGreenScreenFile(String str, boolean z10) {
        TXBeautyManager tXBeautyManager = this.mBeautyManager;
        if (str == null) {
            str = "";
        }
        tXBeautyManager.setGreenScreenFile(str);
    }

    public void setHomeOrientation(int i9) {
        nativeSetHomeOrientation(this.mNativeUGCRecorderJni, i9);
    }

    public boolean setMicVolume(float f10) {
        nativeSetMicVolume(this.mNativeUGCRecorderJni, (int) (f10 * 100.0f));
        return true;
    }

    public void setMotionMute(boolean z10) {
        this.mBeautyManager.setMotionMute(z10);
    }

    public void setMotionTmpl(String str) {
        TXBeautyManager tXBeautyManager = this.mBeautyManager;
        if (str == null) {
            str = "";
        }
        tXBeautyManager.setMotionTmpl(str);
    }

    public void setMute(boolean z10) {
        nativeSetMute(this.mNativeUGCRecorderJni, z10);
    }

    public void setNoseSlimLevel(int i9) {
        this.mBeautyManager.setNoseSlimLevel(i9);
    }

    public void setRecordSpeed(int i9) {
        nativeSetRecordSpeed(this.mNativeUGCRecorderJni, i9);
        if (i9 == 0) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_SPEED, i9, "SLOWEST");
        } else if (i9 == 1) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_SPEED, i9, "SLOW");
        } else if (i9 == 2) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_SPEED, i9, "NORMAL");
        } else if (i9 == 3) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_SPEED, i9, "FAST");
        } else if (i9 != 4) {
        } else {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_SPEED, i9, "FASTEST");
        }
    }

    public void setRenderRotation(int i9) {
        nativeSetRenderRotation(this.mNativeUGCRecorderJni, i9);
    }

    public void setReverb(int i9) {
        nativeSetReverbType(this.mNativeUGCRecorderJni, i9);
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_REVERB, i9, "");
        UGCDataReport.reportDAU(1007);
    }

    public void setSpecialRatio(float f10) {
        this.mBeautyManager.setFilterStrength(f10);
    }

    public void setVideoBitrate(int i9) {
        RecordParams recordParams = this.mRecorderParams;
        recordParams.f34667d = i9;
        nativeSetRecordParams(this.mNativeUGCRecorderJni, recordParams);
    }

    public void setVideoProcessListener(TXUGCRecord.VideoCustomProcessListener videoCustomProcessListener) {
        this.mCustomProcessListener = videoCustomProcessListener;
        nativeEnableVideoCustomPreprocess(this.mNativeUGCRecorderJni, videoCustomProcessListener != null);
    }

    public void setVideoRecordListener(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        this.mVideoRecordListener = iTXVideoRecordListener;
    }

    public void setVideoRenderMode(int i9) {
        nativeSetRenderMode(this.mNativeUGCRecorderJni, i9);
    }

    public void setVideoResolution(int i9) {
        com.tencent.liteav.base.util.q videoSize = getVideoSize(i9);
        RecordParams recordParams = this.mRecorderParams;
        recordParams.f34664a = videoSize.f31029a;
        recordParams.f34665b = videoSize.f31030b;
        nativeSetRecordParams(this.mNativeUGCRecorderJni, recordParams);
    }

    public void setVoiceChangerType(int i9) {
        nativeSetVoiceChangerType(this.mNativeUGCRecorderJni, i9);
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_CHANGER, i9, "");
    }

    public void setWatermark(Bitmap bitmap, TXVideoEditConstants.TXRect tXRect) {
        nativeSetWatermark(this.mNativeUGCRecorderJni, bitmap, tXRect.f34645x, tXRect.f34646y, tXRect.width);
    }

    public boolean setZoom(int i9) {
        return nativeSetZoomLevel(this.mNativeUGCRecorderJni, i9);
    }

    public void snapshot(TXRecordCommon.ITXSnapshotListener iTXSnapshotListener) {
        this.mSnapshotListener = iTXSnapshotListener;
        nativeSnapshot(this.mNativeUGCRecorderJni);
    }

    public int startCameraCustomPreview(TXRecordCommon.TXUGCCustomConfig tXUGCCustomConfig, TXCloudVideoView tXCloudVideoView) {
        initRecorderParams(tXUGCCustomConfig);
        nativeSetRecordParams(this.mNativeUGCRecorderJni, this.mRecorderParams);
        nativeSetView(this.mNativeUGCRecorderJni, new DisplayTarget(tXCloudVideoView));
        nativeEnableCameraAutoFocus(this.mNativeUGCRecorderJni, !this.mRecorderParams.f34670g);
        nativeStartCamera(this.mNativeUGCRecorderJni, this.mRecorderParams.f34669f);
        nativeEnableVideoCustomPreprocess(this.mNativeUGCRecorderJni, this.mCustomProcessListener != null);
        Bitmap bitmap = tXUGCCustomConfig.watermark;
        if (bitmap != null) {
            nativeSetWatermark(this.mNativeUGCRecorderJni, bitmap, tXUGCCustomConfig.watermarkX, tXUGCCustomConfig.watermarkY, bitmap.getWidth());
        }
        this.mPreviewView = tXCloudVideoView;
        return 0;
    }

    public int startCameraSimplePreview(TXRecordCommon.TXUGCSimpleConfig tXUGCSimpleConfig, TXCloudVideoView tXCloudVideoView) {
        initRecorderParams(tXUGCSimpleConfig);
        nativeSetRecordParams(this.mNativeUGCRecorderJni, this.mRecorderParams);
        nativeSetView(this.mNativeUGCRecorderJni, new DisplayTarget(tXCloudVideoView));
        nativeEnableCameraAutoFocus(this.mNativeUGCRecorderJni, !this.mRecorderParams.f34670g);
        nativeStartCamera(this.mNativeUGCRecorderJni, this.mRecorderParams.f34669f);
        nativeEnableVideoCustomPreprocess(this.mNativeUGCRecorderJni, this.mCustomProcessListener != null);
        Bitmap bitmap = tXUGCSimpleConfig.watermark;
        if (bitmap != null) {
            nativeSetWatermark(this.mNativeUGCRecorderJni, bitmap, tXUGCSimpleConfig.watermarkX, tXUGCSimpleConfig.watermarkY, bitmap.getWidth());
        }
        this.mPreviewView = tXCloudVideoView;
        return 0;
    }

    public int startRecord() {
        UGCDataReport.reportDAU(1002);
        return nativeStartRecord(this.mNativeUGCRecorderJni, this.mVideoFilePath, this.mVideoPartFolder, this.mCoverPath);
    }

    public boolean stopBGM() {
        return nativeStopBGM(this.mNativeUGCRecorderJni);
    }

    public void stopCameraPreview() {
        nativeEnableVideoCustomPreprocess(this.mNativeUGCRecorderJni, false);
        nativeStopCamera(this.mNativeUGCRecorderJni);
        this.mPreviewView = null;
    }

    public int stopRecord() {
        return nativeStopRecord(this.mNativeUGCRecorderJni);
    }

    public boolean switchCamera(boolean z10) {
        return nativeSwitchCamera(this.mNativeUGCRecorderJni, z10);
    }

    public boolean toggleTorch(boolean z10) {
        return nativeTurnOnTorch(this.mNativeUGCRecorderJni, z10);
    }

    public void setFilter(Bitmap bitmap, float f10, Bitmap bitmap2, float f11, float f12) {
        nativeSetFilter(this.mNativeUGCRecorderJni, bitmap, f10, bitmap2, f11, f12);
    }

    public int startRecord(String str, String str2) {
        int checkRecordPath = checkRecordPath(str, this.mVideoPartFolder, str2);
        return checkRecordPath != 0 ? checkRecordPath : nativeStartRecord(this.mNativeUGCRecorderJni, this.mVideoFilePath, this.mVideoPartFolder, this.mCoverPath);
    }

    public int startRecord(String str, String str2, String str3) {
        int checkRecordPath = checkRecordPath(str, str2, str3);
        return checkRecordPath != 0 ? checkRecordPath : nativeStartRecord(this.mNativeUGCRecorderJni, this.mVideoFilePath, this.mVideoPartFolder, this.mCoverPath);
    }

    private void initRecorderParams(TXRecordCommon.TXUGCCustomConfig tXUGCCustomConfig) {
        com.tencent.liteav.base.util.q videoSize = getVideoSize(tXUGCCustomConfig.videoResolution);
        if (tXUGCCustomConfig.enableHighResolutionCapture) {
            videoSize.f31029a = 1080;
            videoSize.f31030b = 1920;
        }
        RecordParams recordParams = this.mRecorderParams;
        int i9 = videoSize.f31029a;
        recordParams.f34664a = i9;
        int i10 = videoSize.f31030b;
        recordParams.f34665b = i10;
        recordParams.f34667d = tXUGCCustomConfig.videoBitrate;
        recordParams.f34666c = tXUGCCustomConfig.videoFps;
        recordParams.f34668e = tXUGCCustomConfig.videoGop;
        boolean z10 = tXUGCCustomConfig.needEdit;
        recordParams.f34674k = z10;
        recordParams.f34669f = tXUGCCustomConfig.isFront;
        recordParams.f34670g = tXUGCCustomConfig.touchFocus;
        recordParams.f34675l = tXUGCCustomConfig.profile;
        recordParams.f34671h = tXUGCCustomConfig.minDuration;
        recordParams.f34672i = tXUGCCustomConfig.maxDuration;
        recordParams.f34673j = tXUGCCustomConfig.audioSampleRate;
        if (z10) {
            recordParams.f34668e = 1;
            recordParams.f34667d = getEditBitrateWithSize(i9, i10);
        }
        int i11 = tXUGCCustomConfig.videoResolution;
        if (i11 == 0) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_BD, 360, "360x640");
        } else if (i11 == 1) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_HD, 480, "480x640");
        } else if (i11 == 3) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_FHD, UGCTransitionRules.DEFAULT_IMAGE_WIDTH, "720x1280");
        } else if (i11 != 4) {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_HD, 540, "540x960");
        } else {
            UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_RESOLUTION_1080P, 1080, "1080x1920");
        }
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_FPS, tXUGCCustomConfig.videoFps, "");
        UGCDataReport.reportDAU(UGCDataReportDef.DR_DAU_EVENT_ID_RECORD_GOP, tXUGCCustomConfig.videoGop, "");
    }
}
