package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class ao implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final al f32590a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f32591b;

    /* renamed from: c  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureSourceListener f32592c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f32593d;

    private ao(al alVar, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj) {
        this.f32590a = alVar;
        this.f32591b = captureParams;
        this.f32592c = captureSourceListener;
        this.f32593d = obj;
    }

    public static Runnable a(al alVar, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj) {
        return new ao(alVar, captureParams, captureSourceListener, obj);
    }

    @Override // java.lang.Runnable
    public final void run() {
        al.a(this.f32590a, this.f32591b, this.f32592c, this.f32593d);
    }
}
