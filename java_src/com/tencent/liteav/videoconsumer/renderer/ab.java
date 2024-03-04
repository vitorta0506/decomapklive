package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.videobase.DisplayTarget;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ab implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32362a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayTarget f32363b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f32364c;

    private ab(p pVar, DisplayTarget displayTarget, boolean z10) {
        this.f32362a = pVar;
        this.f32363b = displayTarget;
        this.f32364c = z10;
    }

    public static Runnable a(p pVar, DisplayTarget displayTarget, boolean z10) {
        return new ab(pVar, displayTarget, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32362a.a(this.f32363b, this.f32364c);
    }
}
