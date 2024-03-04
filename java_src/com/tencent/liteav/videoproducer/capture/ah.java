package com.tencent.liteav.videoproducer.capture;

import android.graphics.SurfaceTexture;
import com.tencent.liteav.videobase.utils.Rotation;
import com.tencent.liteav.videoproducer.producer.ServerVideoProducerConfig;
/* loaded from: classes4.dex */
public interface ah {
    void a();

    void a(float f10);

    void a(int i9, int i10);

    void a(CaptureCloudConfig captureCloudConfig);

    void a(ServerVideoProducerConfig serverVideoProducerConfig);

    void a(boolean z10);

    boolean a(int i9, int i10, boolean z10);

    boolean a(CameraCaptureParams cameraCaptureParams, SurfaceTexture surfaceTexture, ai aiVar);

    Rotation b();

    void b(float f10);

    void b(boolean z10);

    int c();

    com.tencent.liteav.base.util.q d();

    boolean e();

    boolean f();

    boolean g();

    boolean h();
}
