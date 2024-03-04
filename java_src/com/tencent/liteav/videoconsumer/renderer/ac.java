package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.base.TakeSnapshotListener;
/* loaded from: classes4.dex */
final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32365a;

    /* renamed from: b  reason: collision with root package name */
    private final TakeSnapshotListener f32366b;

    private ac(p pVar, TakeSnapshotListener takeSnapshotListener) {
        this.f32365a = pVar;
        this.f32366b = takeSnapshotListener;
    }

    public static Runnable a(p pVar, TakeSnapshotListener takeSnapshotListener) {
        return new ac(pVar, takeSnapshotListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32365a, this.f32366b);
    }
}
