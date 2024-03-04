package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.utils.Rotation;
/* loaded from: classes4.dex */
final /* synthetic */ class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33308a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f33309b;

    private m(f fVar, Rotation rotation) {
        this.f33308a = fVar;
        this.f33309b = rotation;
    }

    public static Runnable a(f fVar, Rotation rotation) {
        return new m(fVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.b(this.f33308a, this.f33309b);
    }
}
