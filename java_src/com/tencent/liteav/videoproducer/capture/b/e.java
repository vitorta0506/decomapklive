package com.tencent.liteav.videoproducer.capture.b;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import com.tencent.liteav.videoproducer.capture.b.a;
/* loaded from: classes4.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a.AnonymousClass4 f32657a;

    /* renamed from: b  reason: collision with root package name */
    private final CaptureRequest f32658b;

    /* renamed from: c  reason: collision with root package name */
    private final CameraCaptureSession f32659c;

    private e(a.AnonymousClass4 anonymousClass4, CaptureRequest captureRequest, CameraCaptureSession cameraCaptureSession) {
        this.f32657a = anonymousClass4;
        this.f32658b = captureRequest;
        this.f32659c = cameraCaptureSession;
    }

    public static Runnable a(a.AnonymousClass4 anonymousClass4, CaptureRequest captureRequest, CameraCaptureSession cameraCaptureSession) {
        return new e(anonymousClass4, captureRequest, cameraCaptureSession);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AnonymousClass4.a(this.f32657a, this.f32658b, this.f32659c);
    }
}
