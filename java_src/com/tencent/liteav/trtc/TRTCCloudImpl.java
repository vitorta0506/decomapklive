package com.tencent.liteav.trtc;

import android.content.Context;
import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.NonNull;
import com.tencent.liteav.audio.TXAudioEffectManager;
import com.tencent.liteav.audio.TXAudioEffectManagerImpl;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.Log;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.TimeUtil;
import com.tencent.liteav.base.util.f;
import com.tencent.liteav.beauty.TXBeautyManager;
import com.tencent.liteav.beauty.TXBeautyManagerImpl;
import com.tencent.liteav.device.TXDeviceManager;
import com.tencent.liteav.device.TXDeviceManagerImpl;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.trtc.TRTCCloud;
import com.tencent.trtc.TRTCCloudDef;
import com.tencent.trtc.TRTCCloudListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4.dex */
public class TRTCCloudImpl extends TRTCCloud implements TXAudioEffectManager.TXMusicPlayObserver {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f31299a = false;

    /* renamed from: b  reason: collision with root package name */
    private static TRTCCloudImpl f31300b;

    /* renamed from: c  reason: collision with root package name */
    private Context f31301c;

    /* renamed from: d  reason: collision with root package name */
    private TRTCCloudListener f31302d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private TrtcCloudJni f31303e;

    /* renamed from: f  reason: collision with root package name */
    private TRTCCloud.BGMNotify f31304f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private TXAudioEffectManagerImpl f31305g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private TXDeviceManagerImpl f31306h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private TXBeautyManager f31307i;

    /* renamed from: j  reason: collision with root package name */
    private int f31308j;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<TRTCCloudImpl> f31309k = new ArrayList<>();

    private TRTCCloudImpl(Context context, boolean z10) {
        b(context);
        this.f31301c = context;
        a(context, 0L, z10);
    }

    private static void b(@NonNull Context context) {
        synchronized (TRTCCloudImpl.class) {
            if (!f31299a) {
                ContextUtils.initApplicationContext(context.getApplicationContext());
                ContextUtils.setDataDirectorySuffix("liteav");
                TrtcCloudJni.init(0);
                f31299a = true;
            }
        }
    }

    public static TRTCCloud createInstance(Context context) {
        return new TRTCCloudImpl(context, false);
    }

    public static void destroyInstance(TRTCCloud tRTCCloud) {
        if (tRTCCloud instanceof TRTCCloudImpl) {
            ((TRTCCloudImpl) tRTCCloud).f31303e.destroy();
        } else {
            LiteavLog.w("TRTCCloudImpl", "destroyInstance trtcCloud=".concat(String.valueOf(tRTCCloud)));
        }
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void ConnectOtherRoom(String str) {
        this.f31303e.connectOtherRoom(str);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void DisconnectOtherRoom() {
        this.f31303e.disconnectOtherRoom();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void callExperimentalAPI(String str) {
        this.f31303e.callExperimentalAPI(str);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public int checkAudioCapabilitySupport(int i9) {
        return (i9 == 2 && this.f31306h.isLowLatencyEarMonitorSupported()) ? 1 : 0;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public TRTCCloud createSubCloud() {
        TRTCCloudImpl tRTCCloudImpl;
        synchronized (TRTCCloudImpl.class) {
            tRTCCloudImpl = new TRTCCloudImpl(ContextUtils.getApplicationContext(), this.f31303e.getTrtcCloudJni());
            this.f31309k.add(tRTCCloudImpl);
        }
        return tRTCCloudImpl;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void destroySubCloud(TRTCCloud tRTCCloud) {
        synchronized (TRTCCloudImpl.class) {
            if (tRTCCloud instanceof TRTCCloudImpl) {
                LiteavLog.i("TRTCCloudImpl", "destructor destroySubCloud");
                ((TRTCCloudImpl) tRTCCloud).f31303e.destroy();
                this.f31309k.remove(tRTCCloud);
            }
        }
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void enable3DSpatialAudioEffect(boolean z10) {
        this.f31303e.enable3DSpatialAudioEffect(z10);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void enableAudioEarMonitoring(boolean z10) {
        this.f31305g.enableVoiceEarMonitor(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void enableAudioVolumeEvaluation(int i9, boolean z10) {
        this.f31303e.enableAudioVolumeEvaluation(i9, z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void enableCustomAudioCapture(boolean z10) {
        this.f31303e.enableCustomAudioCapture(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void enableCustomAudioRendering(boolean z10) {
        this.f31303e.enableCustomAudioRendering(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void enableCustomVideoCapture(int i9, boolean z10) {
        this.f31303e.enableCustomVideoCapture(i9, z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int enableEncSmallVideoStream(boolean z10, TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam) {
        return this.f31303e.enableEncSmallVideoStream(z10, tRTCVideoEncParam);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void enableMixExternalAudioFrame(boolean z10, boolean z11) {
        this.f31303e.enableMixExternalAudioFrame(z10, z11);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public boolean enableTorch(boolean z10) {
        return this.f31306h.enableCameraTorch(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void enterRoom(TRTCCloudDef.TRTCParams tRTCParams, int i9) {
        this.f31303e.enterRoom(tRTCParams, i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void exitRoom() {
        this.f31303e.exitRoom();
        try {
            File file = new File(b());
            if (file.exists() && file.isDirectory() && f.a(file, 5) > 52428800) {
                for (File file2 : file.listFiles()) {
                    file2.delete();
                }
            }
        } catch (Exception e10) {
            LiteavLog.w("TRTCCloudImpl", "clearCache error " + e10.toString());
        }
    }

    @Override // com.tencent.trtc.TRTCCloud
    public long generateCustomPTS() {
        return TimeUtil.c();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int getAudioCaptureVolume() {
        return this.f31303e.getAudioCaptureVolume();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public TXAudioEffectManager getAudioEffectManager() {
        return this.f31305g;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int getAudioPlayoutVolume() {
        return this.f31303e.getAudioPlayoutVolume();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public int getBGMDuration(String str) {
        return (int) this.f31305g.getMusicDurationInMS(str);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public TXBeautyManager getBeautyManager() {
        return this.f31307i;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void getCustomAudioRenderingFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
        this.f31303e.getCustomAudioRenderingFrame(tRTCAudioFrame);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public TXDeviceManager getDeviceManager() {
        return this.f31306h;
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public boolean isCameraAutoFocusFaceModeSupported() {
        return this.f31306h.isCameraAutoFocusFaceModeSupported();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public boolean isCameraFocusPositionInPreviewSupported() {
        return this.f31306h.isCameraFocusPositionInPreviewSupported();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public boolean isCameraTorchSupported() {
        return this.f31306h.isCameraTorchSupported();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public boolean isCameraZoomSupported() {
        return this.f31306h.isCameraZoomSupported();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int mixExternalAudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
        return this.f31303e.mixExternalAudioFrame(tRTCAudioFrame);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void muteAllRemoteAudio(boolean z10) {
        this.f31303e.muteAllRemoteAudio(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void muteAllRemoteVideoStreams(boolean z10) {
        this.f31303e.muteAllRemoteVideoStreams(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void muteLocalAudio(boolean z10) {
        this.f31303e.muteLocalAudio(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void muteLocalVideo(int i9, boolean z10) {
        this.f31303e.muteLocalVideo(i9, z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void muteRemoteAudio(String str, boolean z10) {
        this.f31303e.muteRemoteAudio(str, z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void muteRemoteVideoStream(String str, int i9, boolean z10) {
        this.f31303e.muteRemoteVideoStream(str, i9, z10);
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onComplete(int i9, int i10) {
        TRTCCloud.BGMNotify bGMNotify = this.f31304f;
        if (bGMNotify != null) {
            bGMNotify.onBGMComplete(i10);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onPlayProgress(int i9, long j10, long j11) {
        TRTCCloud.BGMNotify bGMNotify = this.f31304f;
        if (bGMNotify != null) {
            bGMNotify.onBGMProgress(j10, j11);
        }
    }

    @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
    public void onStart(int i9, int i10) {
        TRTCCloud.BGMNotify bGMNotify = this.f31304f;
        if (bGMNotify != null) {
            bGMNotify.onBGMStart(i10);
        }
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void pauseAudioEffect(int i9) {
        this.f31305g.pauseAudioEffect(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void pauseBGM() {
        this.f31305g.pausePlayMusic(Integer.MAX_VALUE);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void pauseScreenCapture() {
        this.f31303e.pauseScreenCapture(this.f31308j);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void playAudioEffect(TRTCCloudDef.TRTCAudioEffectParam tRTCAudioEffectParam) {
        if (tRTCAudioEffectParam == null) {
            return;
        }
        final int i9 = tRTCAudioEffectParam.effectId;
        TXAudioEffectManager.AudioMusicParam audioMusicParam = new TXAudioEffectManager.AudioMusicParam(i9, b(tRTCAudioEffectParam.path));
        audioMusicParam.publish = tRTCAudioEffectParam.publish;
        audioMusicParam.loopCount = tRTCAudioEffectParam.loopCount;
        audioMusicParam.isShortFile = true;
        this.f31305g.playAudioEffect(audioMusicParam);
        this.f31305g.setEffectObserver(i9, new TXAudioEffectManager.TXMusicPlayObserver() { // from class: com.tencent.liteav.trtc.TRTCCloudImpl.1
            @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
            public final void onComplete(int i10, int i11) {
                TRTCCloudListener tRTCCloudListener = TRTCCloudImpl.this.f31302d;
                if (tRTCCloudListener != null) {
                    tRTCCloudListener.onAudioEffectFinished(i9, i11);
                }
            }

            @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
            public final void onPlayProgress(int i10, long j10, long j11) {
            }

            @Override // com.tencent.liteav.audio.TXAudioEffectManager.TXMusicPlayObserver
            public final void onStart(int i10, int i11) {
                TRTCCloudListener tRTCCloudListener = TRTCCloudImpl.this.f31302d;
                if (tRTCCloudListener == null || i11 >= 0) {
                    return;
                }
                tRTCCloudListener.onAudioEffectFinished(i9, i11);
            }
        });
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void playBGM(String str, TRTCCloud.BGMNotify bGMNotify) {
        this.f31304f = bGMNotify;
        TXAudioEffectManager.AudioMusicParam audioMusicParam = new TXAudioEffectManager.AudioMusicParam(Integer.MAX_VALUE, str);
        audioMusicParam.publish = true;
        audioMusicParam.loopCount = 0;
        this.f31305g.setMusicObserver(Integer.MAX_VALUE, this);
        this.f31305g.startPlayMusic(audioMusicParam);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void resumeAudioEffect(int i9) {
        this.f31305g.resumeAudioEffect(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void resumeBGM() {
        this.f31305g.resumePlayMusic(Integer.MAX_VALUE);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void resumeScreenCapture() {
        this.f31303e.resumeScreenCapture(this.f31308j);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void selectMotionTmpl(String str) {
        this.f31307i.setMotionTmpl(str);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void sendCustomAudioData(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame) {
        this.f31303e.sendCustomAudioData(tRTCAudioFrame);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public boolean sendCustomCmdMsg(int i9, byte[] bArr, boolean z10, boolean z11) {
        if (bArr == null) {
            LiteavLog.w("TRTCCloudImpl", "custom msg data is null.");
            return false;
        }
        return this.f31303e.sendCustomCmdMsg(i9, bArr, z10, z11);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void sendCustomVideoData(int i9, TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame) {
        if (tRTCVideoFrame == null) {
            LiteavLog.w("TRTCCloudImpl", "sendCustomVideoData frame is null");
            return;
        }
        if (tRTCVideoFrame.bufferType == 2) {
            GLES20.glFinish();
        }
        this.f31303e.sendCustomVideoData(i9, tRTCVideoFrame);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public boolean sendSEIMsg(byte[] bArr, int i9) {
        if (bArr != null && i9 != 0) {
            return this.f31303e.sendSEIMsg(bArr, i9);
        }
        LiteavLog.w("TRTCCloudImpl", "sei msg data is null or repeatCount is zero.");
        return false;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void set3DSpatialReceivingRange(String str, int i9) {
        this.f31303e.set3DSpatialReceivingRange(str, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setAllAudioEffectsVolume(int i9) {
        this.f31305g.setAllAudioEffectsVolume(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setAudioCaptureVolume(int i9) {
        this.f31303e.setAudioCaptureVolume(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setAudioEffectVolume(int i9, int i10) {
        this.f31305g.setAudioEffectVolume(i9, i10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setAudioFrameListener(TRTCCloudListener.TRTCAudioFrameListener tRTCAudioFrameListener) {
        this.f31303e.setAudioFrameListener(tRTCAudioFrameListener);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setAudioPlayoutVolume(int i9) {
        this.f31303e.setAudioPlayoutVolume(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setAudioQuality(int i9) {
        this.f31303e.setAudioQuality(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setAudioRoute(int i9) {
        this.f31306h.setAudioRoute(TXDeviceManagerImpl.audioRouteFromInt(i9));
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setBGMPlayoutVolume(int i9) {
        this.f31305g.setMusicPlayoutVolume(Integer.MAX_VALUE, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public int setBGMPosition(int i9) {
        this.f31305g.seekMusicToPosInMS(Integer.MAX_VALUE, i9);
        return 0;
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setBGMPublishVolume(int i9) {
        this.f31305g.setMusicPublishVolume(Integer.MAX_VALUE, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setBGMVolume(int i9) {
        this.f31305g.setMusicPlayoutVolume(Integer.MAX_VALUE, i9);
        this.f31305g.setMusicPublishVolume(Integer.MAX_VALUE, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setBeautyStyle(int i9, int i10, int i11, int i12) {
        this.f31307i.setBeautyStyle(i9);
        this.f31307i.setBeautyLevel(i10);
        this.f31307i.setWhitenessLevel(i11);
        this.f31307i.setRuddyLevel(i12);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int setCapturedRawAudioFrameCallbackFormat(TRTCCloudDef.TRTCAudioFrameCallbackFormat tRTCAudioFrameCallbackFormat) {
        return this.f31303e.setCapturedRawAudioFrameCallbackFormat(tRTCAudioFrameCallbackFormat.sampleRate, tRTCAudioFrameCallbackFormat.channel, tRTCAudioFrameCallbackFormat.samplesPerCall, tRTCAudioFrameCallbackFormat.mode);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setChinLevel(int i9) {
        this.f31307i.setChinLevel(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setDebugViewMargin(String str, TRTCCloud.TRTCViewMargin tRTCViewMargin) {
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setDefaultStreamRecvMode(boolean z10, boolean z11) {
        this.f31303e.setDefaultStreamRecvMode(z10, z11);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setEyeScaleLevel(int i9) {
        this.f31307i.setEyeScaleLevel(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setFaceShortLevel(int i9) {
        this.f31307i.setFaceShortLevel(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setFaceSlimLevel(int i9) {
        this.f31307i.setFaceSlimLevel(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setFaceVLevel(int i9) {
        this.f31307i.setFaceVLevel(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setFilter(Bitmap bitmap) {
        this.f31307i.setFilter(bitmap);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setFilterConcentration(float f10) {
        this.f31307i.setFilterStrength(f10);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setFocusPosition(int i9, int i10) {
        this.f31306h.setCameraFocusPosition(i9, i10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setGSensorMode(int i9) {
        this.f31303e.setGSensorMode(0, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public boolean setGreenScreenFile(String str) {
        return false;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setListener(TRTCCloudListener tRTCCloudListener) {
        Log.d("TRTCCloudImpl", "setListener ".concat(String.valueOf(tRTCCloudListener)), new Object[0]);
        this.f31302d = tRTCCloudListener;
        this.f31303e.setListener(tRTCCloudListener);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setListenerHandler(Handler handler) {
        this.f31303e.setListenerHandler(handler);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int setLocalProcessedAudioFrameCallbackFormat(TRTCCloudDef.TRTCAudioFrameCallbackFormat tRTCAudioFrameCallbackFormat) {
        return this.f31303e.setLocalProcessedAudioFrameCallbackFormat(tRTCAudioFrameCallbackFormat.sampleRate, tRTCAudioFrameCallbackFormat.channel, tRTCAudioFrameCallbackFormat.samplesPerCall, tRTCAudioFrameCallbackFormat.mode);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setLocalRenderParams(TRTCCloudDef.TRTCRenderParams tRTCRenderParams) {
        setLocalViewFillMode(tRTCRenderParams.fillMode);
        setLocalViewRotation(tRTCRenderParams.rotation);
        setLocalViewMirror(tRTCRenderParams.mirrorType);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int setLocalVideoProcessListener(int i9, int i10, TRTCCloudListener.TRTCVideoFrameListener tRTCVideoFrameListener) {
        return this.f31303e.setLocalVideoProcessListener(0, i9, i10, tRTCVideoFrameListener);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int setLocalVideoRenderListener(int i9, int i10, TRTCCloudListener.TRTCVideoRenderListener tRTCVideoRenderListener) {
        return this.f31303e.setLocalVideoRenderListener(i9, i10, tRTCVideoRenderListener);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setLocalViewFillMode(int i9) {
        this.f31303e.setLocalViewFillMode(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setLocalViewMirror(int i9) {
        this.f31303e.setLocalViewMirror(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setLocalViewRotation(int i9) {
        this.f31303e.setLocalViewRotation(b(i9));
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setMicVolumeOnMixing(int i9) {
        this.f31305g.setVoiceCaptureVolume(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setMixExternalAudioVolume(int i9, int i10) {
        this.f31303e.setMixExternalAudioVolume(i9, i10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setMixTranscodingConfig(TRTCCloudDef.TRTCTranscodingConfig tRTCTranscodingConfig) {
        this.f31303e.setMixTranscodingConfig(tRTCTranscodingConfig);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int setMixedPlayAudioFrameCallbackFormat(TRTCCloudDef.TRTCAudioFrameCallbackFormat tRTCAudioFrameCallbackFormat) {
        return this.f31303e.setMixedPlayAudioFrameCallbackFormat(tRTCAudioFrameCallbackFormat.sampleRate, tRTCAudioFrameCallbackFormat.channel, tRTCAudioFrameCallbackFormat.samplesPerCall, tRTCAudioFrameCallbackFormat.mode);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setMotionMute(boolean z10) {
        this.f31307i.setMotionMute(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setNetworkQosParam(TRTCCloudDef.TRTCNetworkQosParam tRTCNetworkQosParam) {
        this.f31303e.setNetworkQosParam(tRTCNetworkQosParam);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setNoseSlimLevel(int i9) {
        this.f31307i.setNoseSlimLevel(i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public int setPriorRemoteVideoStreamType(int i9) {
        return this.f31303e.setPriorRemoteVideoStreamType(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setRemoteAudioParallelParams(TRTCCloudDef.TRTCAudioParallelParams tRTCAudioParallelParams) {
        this.f31303e.setRemoteAudioParallelParams(tRTCAudioParallelParams);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setRemoteAudioVolume(String str, int i9) {
        this.f31303e.setRemoteAudioVolume(str, i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setRemoteRenderParams(String str, int i9, TRTCCloudDef.TRTCRenderParams tRTCRenderParams) {
        this.f31303e.setRemoteViewFillMode(str, i9, tRTCRenderParams.fillMode);
        this.f31303e.setRemoteViewRotation(str, i9, b(tRTCRenderParams.rotation));
        this.f31303e.setRemoteViewMirror(str, i9, tRTCRenderParams.mirrorType);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setRemoteSubStreamViewFillMode(String str, int i9) {
        this.f31303e.setRemoteViewFillMode(str, 2, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setRemoteSubStreamViewRotation(String str, int i9) {
        this.f31303e.setRemoteViewRotation(str, 2, b(i9));
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int setRemoteVideoRenderListener(String str, int i9, int i10, TRTCCloudListener.TRTCVideoRenderListener tRTCVideoRenderListener) {
        return this.f31303e.setRemoteVideoRenderListener(str, i9, i10, tRTCVideoRenderListener);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int setRemoteVideoStreamType(String str, int i9) {
        return this.f31303e.setRemoteVideoStreamType(str, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setRemoteViewFillMode(String str, int i9) {
        this.f31303e.setRemoteViewFillMode(str, 0, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setRemoteViewRotation(String str, int i9) {
        this.f31303e.setRemoteViewRotation(str, 0, b(i9));
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setReverbType(int i9) {
        this.f31305g.setVoiceReverbType(TXAudioEffectManagerImpl.voiceReverbTypeFromInt(i9));
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setSubStreamEncoderParam(TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam) {
        this.f31303e.setVideoEncoderParams(2, tRTCVideoEncParam);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setSystemVolumeType(int i9) {
        this.f31306h.setSystemVolumeType(TXDeviceManagerImpl.systemVolumeTypefromInt(i9));
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setVideoEncoderMirror(boolean z10) {
        this.f31303e.setVideoEncoderMirror(z10);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setVideoEncoderParam(TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam) {
        this.f31303e.setVideoEncoderParams(0, tRTCVideoEncParam);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setVideoEncoderRotation(int i9) {
        this.f31303e.setVideoEncoderRotation(b(i9));
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setVideoMuteImage(Bitmap bitmap, int i9) {
        this.f31303e.setVideoMuteImage(0, bitmap, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public boolean setVoiceChangerType(int i9) {
        this.f31305g.setVoiceChangerType(TXAudioEffectManagerImpl.voiceChangerTypeFromInt(i9));
        return true;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void setWatermark(Bitmap bitmap, int i9, float f10, float f11, float f12) {
        this.f31303e.setWatermark(bitmap, i9, f10, f11, f12);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void setZoom(int i9) {
        this.f31306h.setCameraZoomRatio(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void showDebugView(int i9) {
        this.f31303e.showDashboardManager(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void snapshotVideo(String str, int i9, TRTCCloudListener.TRTCSnapshotListener tRTCSnapshotListener) {
        this.f31303e.snapshotVideo(str, i9, tRTCSnapshotListener);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int startAudioRecording(TRTCCloudDef.TRTCAudioRecordingParams tRTCAudioRecordingParams) {
        return this.f31303e.startAudioRecording(tRTCAudioRecordingParams);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startLocalAudio(int i9) {
        this.f31303e.startLocalAudio(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startLocalPreview(boolean z10, TXCloudVideoView tXCloudVideoView) {
        this.f31303e.startLocalPreview(z10, tXCloudVideoView);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startLocalRecording(TRTCCloudDef.TRTCLocalRecordingParams tRTCLocalRecordingParams) {
        this.f31303e.startLocalRecording(tRTCLocalRecordingParams);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startPublishCDNStream(TRTCCloudDef.TRTCPublishCDNParam tRTCPublishCDNParam) {
        this.f31303e.startPublishCDNStream(tRTCPublishCDNParam);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startPublishMediaStream(TRTCCloudDef.TRTCPublishTarget tRTCPublishTarget, TRTCCloudDef.TRTCStreamEncoderParam tRTCStreamEncoderParam, TRTCCloudDef.TRTCStreamMixingConfig tRTCStreamMixingConfig) {
        this.f31303e.startPublishMediaStream(tRTCPublishTarget, tRTCStreamEncoderParam, tRTCStreamMixingConfig);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startPublishing(String str, int i9) {
        this.f31303e.startPublishing(str, i9);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void startRemoteSubStreamView(String str, TXCloudVideoView tXCloudVideoView) {
        startRemoteView(str, 2, tXCloudVideoView);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startRemoteView(String str, int i9, TXCloudVideoView tXCloudVideoView) {
        this.f31303e.startRemoteView(str, i9, tXCloudVideoView);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startScreenCapture(int i9, TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam, TRTCCloudDef.TRTCScreenShareParams tRTCScreenShareParams) {
        this.f31308j = i9;
        this.f31303e.startScreenCapture(i9, tRTCVideoEncParam, tRTCScreenShareParams);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public int startSpeedTest(TRTCCloudDef.TRTCSpeedTestParams tRTCSpeedTestParams) {
        this.f31303e.startSpeedTest(true, tRTCSpeedTestParams);
        return 0;
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void startSystemAudioLoopback() {
        if (LiteavSystemInfo.getSystemOSVersionInt() < 29) {
            LiteavLog.e("TRTCCloudImpl", "current system don't support system audio loopback");
        } else {
            this.f31303e.startSystemAudioLoopback();
        }
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void stopAllAudioEffects() {
        this.f31305g.stopAllAudioEffects();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopAllRemoteView() {
        this.f31303e.stopAllRemoteView();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void stopAudioEffect(int i9) {
        this.f31305g.stopAudioEffect(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopAudioRecording() {
        this.f31303e.stopAudioRecording();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void stopBGM() {
        this.f31305g.stopPlayMusic(Integer.MAX_VALUE);
        this.f31305g.setMusicObserver(Integer.MAX_VALUE, null);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopLocalAudio() {
        this.f31303e.stopLocalAudio();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopLocalPreview() {
        this.f31303e.stopLocalPreview();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopLocalRecording() {
        this.f31303e.stopLocalRecording();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopPublishCDNStream() {
        this.f31303e.stopPublishCDNStream();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopPublishMediaStream(String str) {
        this.f31303e.stopPublishMediaStream(str);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopPublishing() {
        this.f31303e.stopPublishing();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void stopRemoteSubStreamView(String str) {
        stopRemoteView(str, 2);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopRemoteView(String str, int i9) {
        this.f31303e.stopRemoteView(str, i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopScreenCapture() {
        this.f31303e.stopScreenCapture(this.f31308j);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopSpeedTest() {
        this.f31303e.stopSpeedTest();
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void stopSystemAudioLoopback() {
        this.f31303e.stopSystemAudioLoopback();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void switchCamera() {
        this.f31306h.switchCamera(!this.f31306h.isFrontCamera());
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void switchRole(int i9) {
        this.f31303e.switchRole(i9);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void switchRoom(TRTCCloudDef.TRTCSwitchRoomConfig tRTCSwitchRoomConfig) {
        this.f31303e.switchRoom(tRTCSwitchRoomConfig);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void updateLocalView(TXCloudVideoView tXCloudVideoView) {
        this.f31303e.updateLocalView(tXCloudVideoView);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void updatePublishMediaStream(String str, TRTCCloudDef.TRTCPublishTarget tRTCPublishTarget, TRTCCloudDef.TRTCStreamEncoderParam tRTCStreamEncoderParam, TRTCCloudDef.TRTCStreamMixingConfig tRTCStreamMixingConfig) {
        this.f31303e.updatePublishMediaStream(str, tRTCPublishTarget, tRTCStreamEncoderParam, tRTCStreamMixingConfig);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void updateRemote3DSpatialPosition(String str, int[] iArr) {
        this.f31303e.updateRemote3DSpatialPosition(str, iArr);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void updateRemoteView(String str, int i9, TXCloudVideoView tXCloudVideoView) {
        this.f31303e.updateRemoteView(str, i9, tXCloudVideoView);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void updateSelf3DSpatialPosition(int[] iArr, float[] fArr, float[] fArr2, float[] fArr3) {
        this.f31303e.updateSelf3DSpatialPosition(iArr, fArr, fArr2, fArr3);
    }

    public static TRTCCloud a(Context context) {
        TRTCCloudImpl tRTCCloudImpl;
        synchronized (TRTCCloudImpl.class) {
            if (f31300b == null) {
                f31300b = new TRTCCloudImpl(context, true);
            }
            tRTCCloudImpl = f31300b;
        }
        return tRTCCloudImpl;
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void enableAudioVolumeEvaluation(int i9) {
        enableAudioVolumeEvaluation(i9, false);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void enableCustomVideoCapture(boolean z10) {
        enableCustomVideoCapture(0, z10);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void muteLocalVideo(boolean z10) {
        this.f31303e.muteLocalVideo(0, z10);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void muteRemoteVideoStream(String str, boolean z10) {
        muteRemoteVideoStream(str, 0, z10);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void startLocalAudio() {
        this.f31303e.startLocalAudio();
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void startRemoteView(String str, TXCloudVideoView tXCloudVideoView) {
        this.f31303e.startRemoteView(str, tXCloudVideoView);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void startSpeedTest(int i9, String str, String str2) {
        TRTCCloudDef.TRTCSpeedTestParams tRTCSpeedTestParams = new TRTCCloudDef.TRTCSpeedTestParams();
        tRTCSpeedTestParams.sdkAppId = i9;
        tRTCSpeedTestParams.userId = str;
        tRTCSpeedTestParams.userSig = str2;
        this.f31303e.startSpeedTest(false, tRTCSpeedTestParams);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void stopRemoteView(String str) {
        this.f31303e.stopRemoteView(str);
    }

    @Override // com.tencent.trtc.TRTCCloud
    public void switchRole(int i9, String str) {
        this.f31303e.switchRole(i9, str);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void startScreenCapture(TRTCCloudDef.TRTCVideoEncParam tRTCVideoEncParam, TRTCCloudDef.TRTCScreenShareParams tRTCScreenShareParams) {
        this.f31308j = 0;
        startScreenCapture(0, tRTCVideoEncParam, tRTCScreenShareParams);
    }

    @Override // com.tencent.trtc.DeprecatedTRTCCloud
    public void sendCustomVideoData(TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame) {
        sendCustomVideoData(0, tRTCVideoFrame);
    }

    private TRTCCloudImpl(Context context, long j10) {
        b(context);
        this.f31301c = context;
        a(context, j10, false);
    }

    public static void a() {
        synchronized (TRTCCloudImpl.class) {
            if (f31300b != null) {
                LiteavLog.i("TRTCCloudImpl", "destructor destroySharedInstance");
                Iterator<TRTCCloudImpl> it = f31300b.f31309k.iterator();
                while (it.hasNext()) {
                    it.next().f31303e.destroy();
                }
                f31300b.f31303e.destroy();
                f31300b = null;
            }
        }
    }

    public static void b(boolean z10) {
        TrtcCloudJni.setLogCompressEnabled(z10);
    }

    private String b() {
        return this.f31301c.getCacheDir() + File.separator + "liteav_effect";
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00f2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String b(java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.liteav.trtc.TRTCCloudImpl.b(java.lang.String):java.lang.String");
    }

    private void a(Context context, long j10, boolean z10) {
        this.f31301c = context.getApplicationContext();
        if (j10 == 0) {
            this.f31303e = new TrtcCloudJni(z10);
        } else {
            this.f31303e = new TrtcCloudJni(j10, z10);
        }
        this.f31306h = new TXDeviceManagerImpl(this.f31303e.createDeviceManager());
        this.f31305g = new TXAudioEffectManagerImpl(this.f31303e.createAudioEffectManager());
        this.f31307i = new TXBeautyManagerImpl(this.f31303e.createBeautyManager());
    }

    public static void a(int i9) {
        TrtcCloudJni.setLogLevel(i9);
    }

    public static void a(boolean z10) {
        TrtcCloudJni.setConsoleEnabled(z10);
    }

    public static void a(String str) {
        TrtcCloudJni.setLogDirPath(str);
    }

    private static int b(int i9) {
        if (i9 < 0) {
            return 0;
        }
        return i9 > 3 ? (i9 / 90) % 4 : i9;
    }
}
