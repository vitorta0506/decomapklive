package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.base.TakeSnapshotListener;
import com.tencent.liteav.videobase.common.SnapshotSourceType;
/* loaded from: classes4.dex */
final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33167a;

    /* renamed from: b  reason: collision with root package name */
    private final SnapshotSourceType f33168b;

    /* renamed from: c  reason: collision with root package name */
    private final TakeSnapshotListener f33169c;

    private aa(f fVar, SnapshotSourceType snapshotSourceType, TakeSnapshotListener takeSnapshotListener) {
        this.f33167a = fVar;
        this.f33168b = snapshotSourceType;
        this.f33169c = takeSnapshotListener;
    }

    public static Runnable a(f fVar, SnapshotSourceType snapshotSourceType, TakeSnapshotListener takeSnapshotListener) {
        return new aa(fVar, snapshotSourceType, takeSnapshotListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33167a, this.f33168b, this.f33169c);
    }
}
