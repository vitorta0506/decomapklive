package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.videobase.DisplayTarget;
/* loaded from: classes4.dex */
final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33295a;

    /* renamed from: b  reason: collision with root package name */
    private final DisplayTarget f33296b;

    private h(f fVar, DisplayTarget displayTarget) {
        this.f33295a = fVar;
        this.f33296b = displayTarget;
    }

    public static Runnable a(f fVar, DisplayTarget displayTarget) {
        return new h(fVar, displayTarget);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33295a, this.f33296b);
    }
}
