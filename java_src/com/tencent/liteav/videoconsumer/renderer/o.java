package com.tencent.liteav.videoconsumer.renderer;

import androidx.annotation.NonNull;
import com.tencent.liteav.videobase.utils.f;
import com.tencent.liteav.videobase.videobase.IVideoReporter;
import com.tencent.liteav.videoconsumer.renderer.a;
/* loaded from: classes4.dex */
public final class o implements f.a {

    /* renamed from: a  reason: collision with root package name */
    public final IVideoReporter f32417a;

    /* renamed from: c  reason: collision with root package name */
    public int f32419c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f32420d = 0;

    /* renamed from: e  reason: collision with root package name */
    public a f32421e = new a(new a.InterfaceC0331a() { // from class: com.tencent.liteav.videoconsumer.renderer.o.1
        @Override // com.tencent.liteav.videoconsumer.renderer.a.InterfaceC0331a
        public final void a(long j10) {
            o.this.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_REEZE, Long.valueOf(j10));
        }
    });

    /* renamed from: f  reason: collision with root package name */
    public boolean f32422f = false;

    /* renamed from: b  reason: collision with root package name */
    public final com.tencent.liteav.videobase.utils.f f32418b = new com.tencent.liteav.videobase.utils.f("VideoRenderer", 1000, this);

    public o(@NonNull IVideoReporter iVideoReporter) {
        this.f32417a = iVideoReporter;
    }

    @Override // com.tencent.liteav.videobase.utils.f.a
    public final void a(double d10) {
        this.f32417a.updateStatus(com.tencent.liteav.videobase.videobase.i.STATUS_VIDEO_RENDER_AVARAGE_FPS, Double.valueOf(d10));
    }
}
