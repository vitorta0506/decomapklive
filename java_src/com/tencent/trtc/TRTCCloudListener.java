package com.tencent.trtc;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.trtc.TRTCCloudDef;
import java.util.ArrayList;
/* loaded from: classes4.dex */
public abstract class TRTCCloudListener {

    /* loaded from: classes4.dex */
    public interface TRTCAudioFrameListener {
        void onCapturedRawAudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame);

        void onLocalProcessedAudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame);

        void onMixedAllAudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame);

        void onMixedPlayAudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame);

        void onRemoteUserAudioFrame(TRTCCloudDef.TRTCAudioFrame tRTCAudioFrame, String str);
    }

    /* loaded from: classes4.dex */
    public static abstract class TRTCLogListener {
        public abstract void onLog(String str, int i9, String str2);
    }

    /* loaded from: classes4.dex */
    public interface TRTCSnapshotListener {
        void onSnapshotComplete(Bitmap bitmap);
    }

    /* loaded from: classes4.dex */
    public interface TRTCVideoFrameListener {
        void onGLContextCreated();

        void onGLContextDestory();

        int onProcessVideoFrame(TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame, TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame2);
    }

    /* loaded from: classes4.dex */
    public interface TRTCVideoRenderListener {
        void onRenderVideoFrame(String str, int i9, TRTCCloudDef.TRTCVideoFrame tRTCVideoFrame);
    }

    @Deprecated
    public void onAudioEffectFinished(int i9, int i10) {
    }

    public void onAudioRouteChanged(int i9, int i10) {
    }

    public void onCameraDidReady() {
    }

    public void onCdnStreamStateChanged(String str, int i9, int i10, String str2, Bundle bundle) {
    }

    public void onConnectOtherRoom(String str, int i9, String str2) {
    }

    public void onConnectionLost() {
    }

    public void onConnectionRecovery() {
    }

    public void onDisConnectOtherRoom(int i9, String str) {
    }

    public void onEnterRoom(long j10) {
    }

    public void onError(int i9, String str, Bundle bundle) {
    }

    public void onExitRoom(int i9) {
    }

    public void onFirstAudioFrame(String str) {
    }

    public void onFirstVideoFrame(String str, int i9, int i10, int i11) {
    }

    public void onLocalRecordBegin(int i9, String str) {
    }

    public void onLocalRecordComplete(int i9, String str) {
    }

    public void onLocalRecording(long j10, String str) {
    }

    public void onMicDidReady() {
    }

    public void onMissCustomCmdMsg(String str, int i9, int i10, int i11) {
    }

    public void onNetworkQuality(TRTCCloudDef.TRTCQuality tRTCQuality, ArrayList<TRTCCloudDef.TRTCQuality> arrayList) {
    }

    public void onRecvCustomCmdMsg(String str, int i9, int i10, byte[] bArr) {
    }

    public void onRecvSEIMsg(String str, byte[] bArr) {
    }

    public void onRemoteAudioStatusUpdated(String str, int i9, int i10, Bundle bundle) {
    }

    public void onRemoteUserEnterRoom(String str) {
    }

    public void onRemoteUserLeaveRoom(String str, int i9) {
    }

    public void onRemoteVideoStatusUpdated(String str, int i9, int i10, int i11, Bundle bundle) {
    }

    public void onScreenCapturePaused() {
    }

    public void onScreenCaptureResumed() {
    }

    public void onScreenCaptureStarted() {
    }

    public void onScreenCaptureStopped(int i9) {
    }

    public void onSendFirstLocalAudioFrame() {
    }

    public void onSendFirstLocalVideoFrame(int i9) {
    }

    public void onSetMixTranscodingConfig(int i9, String str) {
    }

    public void onSpeedTest(TRTCCloudDef.TRTCSpeedTestResult tRTCSpeedTestResult, int i9, int i10) {
    }

    public void onSpeedTestResult(TRTCCloudDef.TRTCSpeedTestResult tRTCSpeedTestResult) {
    }

    public void onStartPublishCDNStream(int i9, String str) {
    }

    public void onStartPublishMediaStream(String str, int i9, String str2, Bundle bundle) {
    }

    public void onStartPublishing(int i9, String str) {
    }

    public void onStatistics(TRTCStatistics tRTCStatistics) {
    }

    public void onStopPublishCDNStream(int i9, String str) {
    }

    public void onStopPublishMediaStream(String str, int i9, String str2, Bundle bundle) {
    }

    public void onStopPublishing(int i9, String str) {
    }

    public void onSwitchRole(int i9, String str) {
    }

    public void onSwitchRoom(int i9, String str) {
    }

    public void onTryToReconnect() {
    }

    public void onUpdatePublishMediaStream(String str, int i9, String str2, Bundle bundle) {
    }

    public void onUserAudioAvailable(String str, boolean z10) {
    }

    @Deprecated
    public void onUserEnter(String str) {
    }

    @Deprecated
    public void onUserExit(String str, int i9) {
    }

    public void onUserSubStreamAvailable(String str, boolean z10) {
    }

    public void onUserVideoAvailable(String str, boolean z10) {
    }

    public void onUserVideoSizeChanged(String str, int i9, int i10, int i11) {
    }

    public void onUserVoiceVolume(ArrayList<TRTCCloudDef.TRTCVolumeInfo> arrayList, int i9) {
    }

    public void onWarning(int i9, String str, Bundle bundle) {
    }
}
