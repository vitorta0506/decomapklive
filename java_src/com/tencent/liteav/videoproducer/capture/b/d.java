package com.tencent.liteav.videoproducer.capture.b;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import com.tencent.liteav.videoproducer.capture.b.a;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a.AnonymousClass4 f32653a;

    /* renamed from: b  reason: collision with root package name */
    private final TotalCaptureResult f32654b;

    /* renamed from: c  reason: collision with root package name */
    private final CameraCaptureSession f32655c;

    /* renamed from: d  reason: collision with root package name */
    private final CaptureRequest f32656d;

    private d(a.AnonymousClass4 anonymousClass4, TotalCaptureResult totalCaptureResult, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest) {
        this.f32653a = anonymousClass4;
        this.f32654b = totalCaptureResult;
        this.f32655c = cameraCaptureSession;
        this.f32656d = captureRequest;
    }

    public static Runnable a(a.AnonymousClass4 anonymousClass4, TotalCaptureResult totalCaptureResult, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest) {
        return new d(anonymousClass4, totalCaptureResult, cameraCaptureSession, captureRequest);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AnonymousClass4.a(this.f32653a, this.f32654b, this.f32655c, this.f32656d);
    }
}
