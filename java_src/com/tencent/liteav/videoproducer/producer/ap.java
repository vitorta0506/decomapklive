package com.tencent.liteav.videoproducer.producer;

import com.tencent.liteav.videobase.utils.Rotation;
/* loaded from: classes4.dex */
final /* synthetic */ class ap implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33208a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f33209b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33210c;

    private ap(f fVar, Rotation rotation, int i9) {
        this.f33208a = fVar;
        this.f33209b = rotation;
        this.f33210c = i9;
    }

    public static Runnable a(f fVar, Rotation rotation, int i9) {
        return new ap(fVar, rotation, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33208a, this.f33209b, this.f33210c);
    }
}
