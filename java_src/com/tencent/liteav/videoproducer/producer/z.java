package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.utils.Rotation;
/* loaded from: classes4.dex */
final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33340a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f33341b;

    private z(f fVar, Rotation rotation) {
        this.f33340a = fVar;
        this.f33341b = rotation;
    }

    public static Runnable a(f fVar, Rotation rotation) {
        return new z(fVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33340a, this.f33341b);
    }
}
