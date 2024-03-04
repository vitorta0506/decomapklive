package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class as implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final al f32597a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f32598b;

    private as(al alVar, CaptureSourceInterface.CaptureParams captureParams) {
        this.f32597a = alVar;
        this.f32598b = captureParams;
    }

    public static Runnable a(al alVar, CaptureSourceInterface.CaptureParams captureParams) {
        return new as(alVar, captureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        al.a(this.f32597a, this.f32598b);
    }
}
