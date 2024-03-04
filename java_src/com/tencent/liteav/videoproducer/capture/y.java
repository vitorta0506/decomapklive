package com.tencent.liteav.videoproducer.capture;

import com.tencent.liteav.videoproducer.capture.CaptureSourceInterface;
/* loaded from: classes4.dex */
final /* synthetic */ class y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final t f32750a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureParams f32751b;

    /* renamed from: c  reason: collision with root package name */
    private final CaptureSourceInterface.CaptureSourceListener f32752c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f32753d;

    private y(t tVar, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj) {
        this.f32750a = tVar;
        this.f32751b = captureParams;
        this.f32752c = captureSourceListener;
        this.f32753d = obj;
    }

    public static Runnable a(t tVar, CaptureSourceInterface.CaptureParams captureParams, CaptureSourceInterface.CaptureSourceListener captureSourceListener, Object obj) {
        return new y(tVar, captureParams, captureSourceListener, obj);
    }

    @Override // java.lang.Runnable
    public final void run() {
        t.a(this.f32750a, this.f32751b, this.f32752c, this.f32753d);
    }
}
