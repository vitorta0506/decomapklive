package com.tencent.liteav.videoconsumer.consumer;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class VideoConsumerReporter extends com.tencent.liteav.videobase.videobase.d {
    @CalledByNative
    public VideoConsumerReporter(long j10) {
        this.mNativeVideoReporter = j10;
    }

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeNotifyError(long j10, int i9, String str);

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeNotifyEvent(long j10, int i9, String str);

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeNotifyWarning(long j10, int i9, String str);

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeUpdateKeyStatus(long j10, int i9, int i10, double d10);

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeUpdateKeyStatusObject(long j10, int i9, int i10, Object obj);

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeUpdateStatus(long j10, int i9, double d10);

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeUpdateStatusObject(long j10, int i9, Object obj);

    @Override // com.tencent.liteav.videobase.videobase.d
    public native void nativeUpdateStatusString(long j10, int i9, String str);

    @CalledByNative
    public synchronized void resetNativeHandle() {
        this.mNativeVideoReporter = 0L;
    }
}
