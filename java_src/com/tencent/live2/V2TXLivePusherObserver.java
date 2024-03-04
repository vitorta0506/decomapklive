package com.tencent.live2;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.live2.V2TXLiveDef;
/* loaded from: classes4.dex */
public abstract class V2TXLivePusherObserver {
    public void onCaptureFirstAudioFrame() {
    }

    public void onCaptureFirstVideoFrame() {
    }

    public void onError(int i9, String str, Bundle bundle) {
    }

    public void onGLContextCreated() {
    }

    public void onGLContextDestroyed() {
    }

    public void onMicrophoneVolumeUpdate(int i9) {
    }

    public int onProcessVideoFrame(V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame, V2TXLiveDef.V2TXLiveVideoFrame v2TXLiveVideoFrame2) {
        return 0;
    }

    public void onPushStatusUpdate(V2TXLiveDef.V2TXLivePushStatus v2TXLivePushStatus, String str, Bundle bundle) {
    }

    public void onScreenCaptureStarted() {
    }

    public void onScreenCaptureStopped(int i9) {
    }

    public void onSetMixTranscodingConfig(int i9, String str) {
    }

    public void onSnapshotComplete(Bitmap bitmap) {
    }

    public void onStatisticsUpdate(V2TXLiveDef.V2TXLivePusherStatistics v2TXLivePusherStatistics) {
    }

    public void onWarning(int i9, String str, Bundle bundle) {
    }
}
