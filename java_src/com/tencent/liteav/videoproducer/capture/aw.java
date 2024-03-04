package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final av f32607a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureSourceListener f32608b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f32609c;

    /* renamed from: d  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f32610d;

    private aw(av avVar, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj, CaptureSourceInterface.CaptureParams captureParams) {
        this.f32607a = avVar;
        this.f32608b = captureSourceListener;
        this.f32609c = obj;
        this.f32610d = captureParams;
    }

    public static Runnable a(av avVar, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj, CaptureSourceInterface.CaptureParams captureParams) {
        return new aw(avVar, captureSourceListener, obj, captureParams);
    }

    @Override // java.lang.Runnable
    public final void run() {
        av.a(this.f32607a, this.f32608b, this.f32609c, this.f32610d);
    }
}
