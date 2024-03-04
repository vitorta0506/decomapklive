package com.tencent.liteav.videoconsumer.renderer;

import android.view.Surface;
/* loaded from: classes4.dex */
final /* synthetic */ class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32465a;

    /* renamed from: b  reason: collision with root package name */
    private final Surface f32466b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f32467c;

    private w(p pVar, Surface surface, boolean z10) {
        this.f32465a = pVar;
        this.f32466b = surface;
        this.f32467c = z10;
    }

    public static Runnable a(p pVar, Surface surface, boolean z10) {
        return new w(pVar, surface, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32465a, this.f32466b, this.f32467c);
    }
}
