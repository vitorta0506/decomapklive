package com.tencent.rtmp;

import android.view.Surface;
import com.tencent.rtmp.TXLivePlayer;
import com.tencent.rtmp.ui.TXCloudVideoView;
import com.tencent.ugc.TXRecordCommon;
/* loaded from: classes4.dex */
public interface a {
    boolean addVideoRawData(byte[] bArr);

    void callExperimentalAPI(String str);

    void enableAudioVolumeEvaluation(int i9);

    boolean enableHardwareDecode(boolean z10);

    long getCurrentRenderPts();

    boolean isPlaying();

    void pause();

    int prepareLiveSeek(String str, int i9);

    void resume();

    int resumeLive();

    void seek(int i9);

    void setAudioRawDataListener(TXLivePlayer.ITXAudioRawDataListener iTXAudioRawDataListener);

    void setAudioRoute(int i9);

    void setAudioVolumeEvaluationListener(TXLivePlayer.ITXAudioVolumeEvaluationListener iTXAudioVolumeEvaluationListener);

    void setAutoPlay(boolean z10);

    void setConfig(TXLivePlayConfig tXLivePlayConfig);

    void setMute(boolean z10);

    void setPlayListener(ITXLivePlayListener iTXLivePlayListener);

    void setPlayerView(TXCloudVideoView tXCloudVideoView);

    void setRate(float f10);

    void setRenderMode(int i9);

    void setRenderRotation(int i9);

    void setSurface(Surface surface);

    void setSurfaceSize(int i9, int i10);

    void setVideoRawDataListener(TXLivePlayer.ITXVideoRawDataListener iTXVideoRawDataListener);

    void setVideoRecordListener(TXRecordCommon.ITXVideoRecordListener iTXVideoRecordListener);

    int setVideoRenderListener(TXLivePlayer.ITXLivePlayVideoRenderListener iTXLivePlayVideoRenderListener, Object obj);

    void setVolume(int i9);

    void showDebugView(boolean z10);

    void snapshot(TXLivePlayer.ITXSnapshotListener iTXSnapshotListener);

    int startLivePlay(String str, int i9);

    int startRecord(int i9);

    int stopPlay(boolean z10);

    int stopRecord();

    int switchStream(String str);
}
