package com.tencent.liteav.live;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import android.view.Surface;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.frame.PixelFrame;
import com.tencent.liteav.videobase.videobase.DisplayTarget;
import com.tencent.rtmp.ITXLivePlayListener;
import com.tencent.rtmp.TXLivePlayConfig;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
import java.io.File;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import org.light.utils.FileUtils;
@JNINamespace("liteav")
/* loaded from: classes4.dex */
public class TXLivePlayerJni implements com.tencent.rtmp.a, TXCloudVideoView.b {
    private static final String TAG = "TXLivePlayerJni";
    private TXLivePlayer.ITXAudioRawDataListener mAudioRawDataListener;
    private Integer mAudioRoute;
    private TXLivePlayer.ITXAudioVolumeEvaluationListener mAudioVolumeEvaluationListener;
    private TXLivePlayConfig mConfig;
    private DisplayTarget mDisplayTarget;
    private Boolean mEnableHardwareDecoder;
    private Boolean mIsAudioMuted;
    private ITXLivePlayListener mListener;
    private Integer mRenderMode;
    private Integer mRenderRotate;
    private Boolean mShowDebugView;
    private TXLivePlayer.ITXSnapshotListener mSnapshotListener;
    private TXLivePlayer.ITXVideoRawDataListener mVideoRawDataListener;
    private TXRecordCommon.ITXVideoRecordListener mVideoRecordListener;
    private TXLivePlayer.ITXLivePlayVideoRenderListener mVideoRenderListener;
    private Integer mVolume;
    private Integer mVolumeIntervalMs;
    protected long mNativeTXLivePlayerJni = 0;
    private Object mGLContext = null;
    private final Map<String, String> mExperimentalAPIMap = new HashMap();

    public TXLivePlayerJni(Context context) {
        ContextUtils.initApplicationContext(context.getApplicationContext());
        ContextUtils.setDataDirectorySuffix("liteav");
    }

    private static String genFilePath(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            String valueOf = String.valueOf(System.currentTimeMillis() / 1000);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss");
            String format = simpleDateFormat.format(new Date(Long.valueOf(valueOf + "000").longValue()));
            String diskFileDir = getDiskFileDir(context);
            if (TextUtils.isEmpty(diskFileDir)) {
                return null;
            }
            return new File(diskFileDir, String.format("TXUGC_%s".concat(String.valueOf(str)), format)).getAbsolutePath();
        } catch (Exception e10) {
            LiteavLog.e(TAG, "create file path failed.", e10);
            return null;
        }
    }

    private static String getDiskFileDir(Context context) {
        if (context == null) {
            return null;
        }
        if (!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) {
            return context.getFilesDir().getPath();
        }
        File externalFilesDir = context.getExternalFilesDir(Environment.DIRECTORY_MOVIES);
        return externalFilesDir != null ? externalFilesDir.getPath() : null;
    }

    @CalledByNative
    public static String[] getMapKeys(Map<String, String> map) {
        String[] strArr = new String[map.size()];
        int i9 = 0;
        for (String str : map.keySet()) {
            strArr[i9] = str;
            i9++;
        }
        return strArr;
    }

    @CalledByNative
    public static String[] getMapValues(Map<String, String> map, String[] strArr) {
        String[] strArr2 = new String[map.size()];
        int length = strArr.length;
        int i9 = 0;
        int i10 = 0;
        while (i9 < length) {
            strArr2[i10] = map.get(strArr[i9]);
            i9++;
            i10++;
        }
        return strArr2;
    }

    private boolean isNativeValid() {
        return this.mNativeTXLivePlayerJni != 0;
    }

    private static native void nativeCallExperimentalAPI(long j10, String str);

    private static native long nativeCreate(WeakReference<TXLivePlayerJni> weakReference);

    private static native void nativeDestroy(long j10);

    private static native void nativeEnableAudioVolumeEvaluation(long j10, int i9);

    private static native void nativeEnableCustomAudioProcess(long j10, boolean z10);

    private static native void nativeEnableCustomRenderI420(long j10, boolean z10);

    private static native void nativeEnableCustomRenderTexture(long j10, boolean z10, Object obj);

    private static native void nativeEnableHardwareDecode(long j10, boolean z10);

    private static native long nativeGetCurrentRenderPts(long j10);

    private static native boolean nativeIsPlaying(long j10);

    private static native void nativePause(long j10);

    private static native void nativeResume(long j10);

    private static native void nativeSetAudioRoute(long j10, int i9);

    private static native void nativeSetConfig(long j10, float f10, float f11, float f12, int i9, int i10, int i11, boolean z10, boolean z11, boolean z12, String str, Map map);

    private static native void nativeSetMute(long j10, boolean z10);

    private static native void nativeSetPlayerView(long j10, DisplayTarget displayTarget);

    private static native void nativeSetRenderMode(long j10, int i9);

    private static native void nativeSetRenderRotation(long j10, int i9);

    private static native void nativeSetVolume(long j10, int i9);

    private static native void nativeShowDebugView(long j10, boolean z10);

    private static native void nativeSnapshot(long j10);

    private static native int nativeStartPlay(long j10, String str, int i9);

    private static native void nativeStartRecord(long j10, int i9, String str);

    private static native void nativeStopPlay(long j10, boolean z10);

    private static native void nativeStopRecord(long j10);

    private static native int nativeSwitchStream(long j10, String str);

    @CalledByNative
    public static TXLivePlayerJni weakToStrongReference(WeakReference<TXLivePlayerJni> weakReference) {
        return weakReference.get();
    }

    @Override // com.tencent.rtmp.a
    public boolean addVideoRawData(byte[] bArr) {
        return false;
    }

    @Override // com.tencent.rtmp.a
    public void callExperimentalAPI(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("api") && !TextUtils.isEmpty(jSONObject.getString("api"))) {
                this.mExperimentalAPIMap.put(jSONObject.getString("api"), str);
                if (isNativeValid()) {
                    nativeCallExperimentalAPI(this.mNativeTXLivePlayerJni, str);
                    return;
                }
                return;
            }
            LiteavLog.e(TAG, "call experimental api failed. json: ".concat(String.valueOf(str)));
        } catch (Exception e10) {
            e10.printStackTrace();
            LiteavLog.e(TAG, "call experimental api failed. json:".concat(String.valueOf(str)));
        }
    }

    @Override // com.tencent.rtmp.a
    public void enableAudioVolumeEvaluation(int i9) {
        synchronized (this) {
            this.mVolumeIntervalMs = Integer.valueOf(i9);
            if (isNativeValid()) {
                nativeEnableAudioVolumeEvaluation(this.mNativeTXLivePlayerJni, i9);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public boolean enableHardwareDecode(boolean z10) {
        synchronized (this) {
            this.mEnableHardwareDecoder = Boolean.valueOf(z10);
            if (isNativeValid()) {
                nativeEnableHardwareDecode(this.mNativeTXLivePlayerJni, z10);
            }
        }
        return true;
    }

    @Override // com.tencent.rtmp.a
    public long getCurrentRenderPts() {
        synchronized (this) {
            if (isNativeValid()) {
                return nativeGetCurrentRenderPts(this.mNativeTXLivePlayerJni);
            }
            return 0L;
        }
    }

    @Override // com.tencent.rtmp.a
    public boolean isPlaying() {
        synchronized (this) {
            if (isNativeValid()) {
                return nativeIsPlaying(this.mNativeTXLivePlayerJni);
            }
            return false;
        }
    }

    @CalledByNative
    public void onAudioInfoChanged(int i9, int i10, int i11) {
        TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener = this.mAudioRawDataListener;
        if (iTXAudioRawDataListener != null) {
            iTXAudioRawDataListener.onAudioInfoChanged(i9, i10, i11);
        }
    }

    @CalledByNative
    public void onAudioVolumeEvaluationNotify(int i9) {
        TXLivePlayer.ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener = this.mAudioVolumeEvaluationListener;
        if (iTXAudioVolumeEvaluationListener != null) {
            iTXAudioVolumeEvaluationListener.onAudioVolumeEvaluationNotify(i9);
        }
    }

    @CalledByNative
    public void onNetStatus(Bundle bundle) {
        ITXLivePlayListener iTXLivePlayListener = this.mListener;
        if (iTXLivePlayListener != null) {
            iTXLivePlayListener.onNetStatus(bundle);
        }
    }

    @CalledByNative
    public void onPcmDataAvailable(byte[] bArr, long j10) {
        TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener = this.mAudioRawDataListener;
        if (iTXAudioRawDataListener != null) {
            iTXAudioRawDataListener.onPcmDataAvailable(bArr, j10);
        }
    }

    @CalledByNative
    public void onPlayEvent(int i9, Bundle bundle) {
        ITXLivePlayListener iTXLivePlayListener = this.mListener;
        if (iTXLivePlayListener != null) {
            iTXLivePlayListener.onPlayEvent(i9, bundle);
        }
    }

    @CalledByNative
    public void onRecordComplete(int i9, String str, String str2, String str3) {
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mVideoRecordListener;
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
        TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener = this.mVideoRecordListener;
        if (iTXVideoRecordListener != null) {
            iTXVideoRecordListener.onRecordEvent(i9, bundle);
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
    public void onRenderVideoFrame(PixelFrame pixelFrame) {
        TXLivePlayer.ITXLivePlayVideoRenderListener iTXLivePlayVideoRenderListener = this.mVideoRenderListener;
        if (iTXLivePlayVideoRenderListener != null) {
            TXLivePlayer.TXLiteAVTexture tXLiteAVTexture = new TXLivePlayer.TXLiteAVTexture();
            tXLiteAVTexture.textureId = pixelFrame.getTextureId();
            tXLiteAVTexture.width = pixelFrame.getWidth();
            tXLiteAVTexture.height = pixelFrame.getHeight();
            tXLiteAVTexture.eglContext = pixelFrame.getGLContext();
            iTXLivePlayVideoRenderListener.onRenderVideoFrame(tXLiteAVTexture);
        }
        TXLivePlayer.ITXVideoRawDataListener iTXVideoRawDataListener = this.mVideoRawDataListener;
        if (iTXVideoRawDataListener != null) {
            iTXVideoRawDataListener.onVideoRawDataAvailable(pixelFrame.getData(), pixelFrame.getWidth(), pixelFrame.getHeight(), (int) pixelFrame.getTimestamp());
        }
    }

    @Override // com.tencent.rtmp.ui.TXCloudVideoView.b
    public void onShowLog(boolean z10) {
        showDebugView(z10);
    }

    @CalledByNative
    public void onSnapshot(Bitmap bitmap) {
        TXLivePlayer.ITXSnapshotListener iTXSnapshotListener = this.mSnapshotListener;
        if (iTXSnapshotListener != null) {
            iTXSnapshotListener.onSnapshot(bitmap);
        }
    }

    @Override // com.tencent.rtmp.a
    public void pause() {
        synchronized (this) {
            if (isNativeValid()) {
                nativePause(this.mNativeTXLivePlayerJni);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public int prepareLiveSeek(String str, int i9) {
        return 0;
    }

    @Override // com.tencent.rtmp.a
    public void resume() {
        synchronized (this) {
            if (isNativeValid()) {
                nativeResume(this.mNativeTXLivePlayerJni);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public int resumeLive() {
        return 0;
    }

    @Override // com.tencent.rtmp.a
    public void seek(int i9) {
    }

    @Override // com.tencent.rtmp.a
    public void setAudioRawDataListener(TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener) {
        synchronized (this) {
            this.mAudioRawDataListener = iTXAudioRawDataListener;
            if (isNativeValid()) {
                nativeEnableCustomAudioProcess(this.mNativeTXLivePlayerJni, iTXAudioRawDataListener != null);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setAudioRoute(int i9) {
        synchronized (this) {
            this.mAudioRoute = Integer.valueOf(i9);
            if (isNativeValid()) {
                nativeSetAudioRoute(this.mNativeTXLivePlayerJni, i9);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setAudioVolumeEvaluationListener(TXLivePlayer.ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener) {
        this.mAudioVolumeEvaluationListener = iTXAudioVolumeEvaluationListener;
    }

    @Override // com.tencent.rtmp.a
    public void setAutoPlay(boolean z10) {
    }

    @Override // com.tencent.rtmp.a
    public void setConfig(TXLivePlayConfig tXLivePlayConfig) {
        synchronized (this) {
            if (tXLivePlayConfig == null) {
                return;
            }
            this.mConfig = tXLivePlayConfig;
            if (isNativeValid()) {
                nativeSetConfig(this.mNativeTXLivePlayerJni, this.mConfig.getCacheTime(), this.mConfig.getMaxAutoAdjustCacheTime(), this.mConfig.getMinAutoAdjustCacheTime(), this.mConfig.getVideoBlockThreshold(), this.mConfig.getConnectRetryCount(), this.mConfig.getConnectRetryInterval(), this.mConfig.isAutoAdjustCacheTime(), this.mConfig.isEnableMessage(), this.mConfig.isEnableMetaData(), this.mConfig.getFlvSessionKey(), this.mConfig.getHeaders());
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setMute(boolean z10) {
        synchronized (this) {
            this.mIsAudioMuted = Boolean.valueOf(z10);
            if (isNativeValid()) {
                nativeSetMute(this.mNativeTXLivePlayerJni, z10);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setPlayListener(ITXLivePlayListener iTXLivePlayListener) {
        this.mListener = iTXLivePlayListener;
    }

    @Override // com.tencent.rtmp.a
    public void setPlayerView(TXCloudVideoView tXCloudVideoView) {
        if (tXCloudVideoView != null) {
            a.a(tXCloudVideoView, new WeakReference(this));
            showDebugView(a.a(tXCloudVideoView));
        }
        synchronized (this) {
            if (tXCloudVideoView != null) {
                this.mDisplayTarget = new DisplayTarget(tXCloudVideoView);
            } else {
                this.mDisplayTarget = null;
            }
            if (isNativeValid()) {
                nativeSetPlayerView(this.mNativeTXLivePlayerJni, this.mDisplayTarget);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setRate(float f10) {
    }

    @Override // com.tencent.rtmp.a
    public void setRenderMode(int i9) {
        synchronized (this) {
            this.mRenderMode = Integer.valueOf(i9);
            if (isNativeValid()) {
                nativeSetRenderMode(this.mNativeTXLivePlayerJni, i9);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setRenderRotation(int i9) {
        synchronized (this) {
            this.mRenderRotate = Integer.valueOf(i9);
            if (isNativeValid()) {
                nativeSetRenderRotation(this.mNativeTXLivePlayerJni, i9);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setSurface(Surface surface) {
        synchronized (this) {
            if (surface != null) {
                this.mDisplayTarget = new DisplayTarget(surface);
            } else {
                this.mDisplayTarget = null;
            }
            if (isNativeValid()) {
                nativeSetPlayerView(this.mNativeTXLivePlayerJni, this.mDisplayTarget);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setSurfaceSize(int i9, int i10) {
    }

    @Override // com.tencent.rtmp.a
    public void setVideoRawDataListener(TXLivePlayer.ITXVideoRawDataListener iTXVideoRawDataListener) {
        synchronized (this) {
            if (this.mVideoRenderListener != null) {
                this.mVideoRenderListener = null;
                this.mGLContext = null;
                if (isNativeValid()) {
                    nativeEnableCustomRenderTexture(this.mNativeTXLivePlayerJni, false, null);
                }
            }
            this.mVideoRawDataListener = iTXVideoRawDataListener;
            if (isNativeValid()) {
                nativeEnableCustomRenderI420(this.mNativeTXLivePlayerJni, iTXVideoRawDataListener != null);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void setVideoRecordListener(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        this.mVideoRecordListener = iTXVideoRecordListener;
    }

    @Override // com.tencent.rtmp.a
    public int setVideoRenderListener(TXLivePlayer.ITXLivePlayVideoRenderListener iTXLivePlayVideoRenderListener, Object obj) {
        synchronized (this) {
            if (this.mVideoRawDataListener != null) {
                this.mVideoRawDataListener = null;
                if (isNativeValid()) {
                    nativeEnableCustomRenderI420(this.mNativeTXLivePlayerJni, false);
                }
            }
            this.mVideoRenderListener = iTXLivePlayVideoRenderListener;
            if (iTXLivePlayVideoRenderListener == null) {
                obj = null;
            }
            this.mGLContext = obj;
            if (isNativeValid()) {
                nativeEnableCustomRenderTexture(this.mNativeTXLivePlayerJni, iTXLivePlayVideoRenderListener != null, this.mGLContext);
            }
        }
        return 0;
    }

    @Override // com.tencent.rtmp.a
    public void setVolume(int i9) {
        synchronized (this) {
            this.mVolume = Integer.valueOf(i9);
            if (isNativeValid()) {
                nativeSetVolume(this.mNativeTXLivePlayerJni, i9);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void showDebugView(boolean z10) {
        synchronized (this) {
            this.mShowDebugView = Boolean.valueOf(z10);
            if (isNativeValid()) {
                nativeShowDebugView(this.mNativeTXLivePlayerJni, z10);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public void snapshot(TXLivePlayer.ITXSnapshotListener iTXSnapshotListener) {
        synchronized (this) {
            this.mSnapshotListener = iTXSnapshotListener;
            if (isNativeValid()) {
                nativeSnapshot(this.mNativeTXLivePlayerJni);
            }
        }
    }

    @Override // com.tencent.rtmp.a
    public int startLivePlay(String str, int i9) {
        int nativeStartPlay;
        synchronized (this) {
            if (!isNativeValid()) {
                long nativeCreate = nativeCreate(new WeakReference(this));
                this.mNativeTXLivePlayerJni = nativeCreate;
                nativeSetPlayerView(nativeCreate, this.mDisplayTarget);
                TXLivePlayConfig tXLivePlayConfig = this.mConfig;
                if (tXLivePlayConfig != null) {
                    nativeSetConfig(this.mNativeTXLivePlayerJni, tXLivePlayConfig.getCacheTime(), this.mConfig.getMaxAutoAdjustCacheTime(), this.mConfig.getMinAutoAdjustCacheTime(), this.mConfig.getVideoBlockThreshold(), this.mConfig.getConnectRetryCount(), this.mConfig.getConnectRetryInterval(), this.mConfig.isAutoAdjustCacheTime(), this.mConfig.isEnableMessage(), this.mConfig.isEnableMetaData(), this.mConfig.getFlvSessionKey(), this.mConfig.getHeaders());
                }
                boolean z10 = true;
                if (this.mVideoRenderListener != null) {
                    nativeEnableCustomRenderI420(this.mNativeTXLivePlayerJni, false);
                    nativeEnableCustomRenderTexture(this.mNativeTXLivePlayerJni, true, this.mGLContext);
                } else if (this.mVideoRawDataListener != null) {
                    nativeEnableCustomRenderTexture(this.mNativeTXLivePlayerJni, false, this.mGLContext);
                    nativeEnableCustomRenderI420(this.mNativeTXLivePlayerJni, true);
                } else {
                    nativeEnableCustomRenderTexture(this.mNativeTXLivePlayerJni, false, this.mGLContext);
                    nativeEnableCustomRenderI420(this.mNativeTXLivePlayerJni, false);
                }
                long j10 = this.mNativeTXLivePlayerJni;
                if (this.mAudioRawDataListener == null) {
                    z10 = false;
                }
                nativeEnableCustomAudioProcess(j10, z10);
                Integer num = this.mRenderMode;
                if (num != null) {
                    nativeSetRenderMode(this.mNativeTXLivePlayerJni, num.intValue());
                }
                Integer num2 = this.mRenderRotate;
                if (num2 != null) {
                    nativeSetRenderRotation(this.mNativeTXLivePlayerJni, num2.intValue());
                }
                Boolean bool = this.mEnableHardwareDecoder;
                if (bool != null) {
                    nativeEnableHardwareDecode(this.mNativeTXLivePlayerJni, bool.booleanValue());
                }
                Integer num3 = this.mVolume;
                if (num3 != null) {
                    nativeSetVolume(this.mNativeTXLivePlayerJni, num3.intValue());
                }
                Integer num4 = this.mAudioRoute;
                if (num4 != null) {
                    nativeSetAudioRoute(this.mNativeTXLivePlayerJni, num4.intValue());
                }
                Integer num5 = this.mVolumeIntervalMs;
                if (num5 != null) {
                    nativeEnableAudioVolumeEvaluation(this.mNativeTXLivePlayerJni, num5.intValue());
                }
                Boolean bool2 = this.mIsAudioMuted;
                if (bool2 != null) {
                    nativeSetMute(this.mNativeTXLivePlayerJni, bool2.booleanValue());
                }
                Boolean bool3 = this.mShowDebugView;
                if (bool3 != null) {
                    nativeShowDebugView(this.mNativeTXLivePlayerJni, bool3.booleanValue());
                }
                for (Map.Entry<String, String> entry : this.mExperimentalAPIMap.entrySet()) {
                    nativeCallExperimentalAPI(this.mNativeTXLivePlayerJni, entry.getValue());
                }
            }
            nativeStartPlay = nativeStartPlay(this.mNativeTXLivePlayerJni, str, i9);
        }
        return nativeStartPlay;
    }

    @Override // com.tencent.rtmp.a
    public int startRecord(int i9) {
        synchronized (this) {
            if (isNativeValid()) {
                String genFilePath = genFilePath(ContextUtils.getApplicationContext(), FileUtils.PIC_POSTFIX_MP4);
                if (TextUtils.isEmpty(genFilePath)) {
                    return -1;
                }
                nativeStartRecord(this.mNativeTXLivePlayerJni, i9, genFilePath);
            }
            return 0;
        }
    }

    @Override // com.tencent.rtmp.a
    public int stopPlay(boolean z10) {
        synchronized (this) {
            if (isNativeValid()) {
                nativeStopPlay(this.mNativeTXLivePlayerJni, z10);
                nativeDestroy(this.mNativeTXLivePlayerJni);
                this.mNativeTXLivePlayerJni = 0L;
            }
        }
        return 0;
    }

    @Override // com.tencent.rtmp.a
    public int stopRecord() {
        synchronized (this) {
            if (isNativeValid()) {
                nativeStopRecord(this.mNativeTXLivePlayerJni);
            }
        }
        return 0;
    }

    @Override // com.tencent.rtmp.a
    public int switchStream(String str) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                LiteavLog.e(TAG, "Invalid params.");
                return -1;
            } else if (isNativeValid()) {
                return nativeSwitchStream(this.mNativeTXLivePlayerJni, str);
            } else {
                return -1;
            }
        }
    }
}
