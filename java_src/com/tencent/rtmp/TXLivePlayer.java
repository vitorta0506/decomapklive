package com.tencent.rtmp;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import com.tencent.liteav.base.util.r;
import com.tencent.liteav.live.TXLivePlayerJni;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
/* loaded from: classes4.dex */
public class TXLivePlayer {
    public static final int PLAY_TYPE_LIVE_FLV = 1;
    public static final int PLAY_TYPE_LIVE_RTMP = 0;
    public static final int PLAY_TYPE_LIVE_RTMP_ACC = 5;
    public static final int PLAY_TYPE_LOCAL_VIDEO = 6;
    public static final int PLAY_TYPE_VOD_FLV = 2;
    public static final int PLAY_TYPE_VOD_HLS = 3;
    public static final int PLAY_TYPE_VOD_MP4 = 4;
    public static final String TAG = "TXLivePlayer";
    private a mImpl;

    /* loaded from: classes4.dex */
    public interface ITXAudioRawDataListener {
        void onAudioInfoChanged(int i9, int i10, int i11);

        void onPcmDataAvailable(byte[] bArr, long j10);
    }

    /* loaded from: classes4.dex */
    public interface ITXAudioVolumeEvaluationListener {
        void onAudioVolumeEvaluationNotify(int i9);
    }

    /* loaded from: classes4.dex */
    public interface ITXLivePlayVideoRenderListener {
        void onRenderVideoFrame(TXLiteAVTexture tXLiteAVTexture);
    }

    /* loaded from: classes4.dex */
    public interface ITXSnapshotListener {
        void onSnapshot(Bitmap bitmap);
    }

    /* loaded from: classes4.dex */
    public interface ITXVideoRawDataListener {
        void onVideoRawDataAvailable(byte[] bArr, int i9, int i10, int i11);
    }

    /* loaded from: classes4.dex */
    public static class TXLiteAVTexture {
        public Object eglContext;
        public int height;
        public int textureId;
        public int width;
    }

    static {
        r.a();
    }

    public TXLivePlayer(Context context) {
        this.mImpl = new TXLivePlayerJni(context);
    }

    public boolean addVideoRawData(byte[] bArr) {
        return this.mImpl.addVideoRawData(bArr);
    }

    public void callExperimentalAPI(String str) {
        this.mImpl.callExperimentalAPI(str);
    }

    public void enableAudioVolumeEvaluation(int i9) {
        this.mImpl.enableAudioVolumeEvaluation(i9);
    }

    public boolean enableHardwareDecode(boolean z10) {
        return this.mImpl.enableHardwareDecode(z10);
    }

    public long getCurrentRenderPts() {
        return this.mImpl.getCurrentRenderPts();
    }

    public boolean isPlaying() {
        return this.mImpl.isPlaying();
    }

    public void pause() {
        this.mImpl.pause();
    }

    public int prepareLiveSeek(String str, int i9) {
        return this.mImpl.prepareLiveSeek(str, i9);
    }

    public void resume() {
        this.mImpl.resume();
    }

    public int resumeLive() {
        return this.mImpl.resumeLive();
    }

    public void seek(int i9) {
        this.mImpl.seek(i9);
    }

    public void setAudioRawDataListener(ITXAudioRawDataListener iTXAudioRawDataListener) {
        this.mImpl.setAudioRawDataListener(iTXAudioRawDataListener);
    }

    public void setAudioRoute(int i9) {
        this.mImpl.setAudioRoute(i9);
    }

    public void setAudioVolumeEvaluationListener(ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener) {
        this.mImpl.setAudioVolumeEvaluationListener(iTXAudioVolumeEvaluationListener);
    }

    public void setAutoPlay(boolean z10) {
        this.mImpl.setAutoPlay(z10);
    }

    public void setConfig(TXLivePlayConfig tXLivePlayConfig) {
        this.mImpl.setConfig(tXLivePlayConfig);
    }

    public void setMute(boolean z10) {
        this.mImpl.setMute(z10);
    }

    public void setPlayListener(ITXLivePlayListener iTXLivePlayListener) {
        this.mImpl.setPlayListener(iTXLivePlayListener);
    }

    public void setPlayerView(TXCloudVideoView tXCloudVideoView) {
        this.mImpl.setPlayerView(tXCloudVideoView);
    }

    public void setRate(float f10) {
        this.mImpl.setRate(f10);
    }

    public void setRenderMode(int i9) {
        this.mImpl.setRenderMode(i9);
    }

    public void setRenderRotation(int i9) {
        this.mImpl.setRenderRotation(i9);
    }

    public void setSurface(Surface surface) {
        this.mImpl.setSurface(surface);
    }

    public void setSurfaceSize(int i9, int i10) {
        this.mImpl.setSurfaceSize(i9, i10);
    }

    public void setVideoRawDataListener(ITXVideoRawDataListener iTXVideoRawDataListener) {
        this.mImpl.setVideoRawDataListener(iTXVideoRawDataListener);
    }

    public void setVideoRecordListener(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener) {
        this.mImpl.setVideoRecordListener(iTXVideoRecordListener);
    }

    public int setVideoRenderListener(ITXLivePlayVideoRenderListener iTXLivePlayVideoRenderListener, Object obj) {
        return this.mImpl.setVideoRenderListener(iTXLivePlayVideoRenderListener, obj);
    }

    public void setVolume(int i9) {
        this.mImpl.setVolume(i9);
    }

    public void showDebugView(boolean z10) {
        this.mImpl.showDebugView(z10);
    }

    public void snapshot(ITXSnapshotListener iTXSnapshotListener) {
        this.mImpl.snapshot(iTXSnapshotListener);
    }

    public int startLivePlay(String str, int i9) {
        return this.mImpl.startLivePlay(str, i9);
    }

    public int startRecord(int i9) {
        return this.mImpl.startRecord(i9);
    }

    public int stopPlay(boolean z10) {
        return this.mImpl.stopPlay(z10);
    }

    public int stopRecord() {
        return this.mImpl.stopRecord();
    }

    public int switchStream(String str) {
        return this.mImpl.switchStream(str);
    }
}
