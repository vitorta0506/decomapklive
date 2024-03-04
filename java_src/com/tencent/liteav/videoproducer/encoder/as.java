package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.base.TakeSnapshotListener;
/* loaded from: classes4.dex */
public final /* synthetic */ class as implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32849a;

    /* renamed from: b  reason: collision with root package name */
    private final TakeSnapshotListener f32850b;

    private as(ah ahVar, TakeSnapshotListener takeSnapshotListener) {
        this.f32849a = ahVar;
        this.f32850b = takeSnapshotListener;
    }

    public static Runnable a(ah ahVar, TakeSnapshotListener takeSnapshotListener) {
        return new as(ahVar, takeSnapshotListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32849a, this.f32850b);
    }
}
