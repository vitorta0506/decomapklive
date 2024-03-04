package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.utils.Rotation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32833a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f32834b;

    private aj(ah ahVar, Rotation rotation) {
        this.f32833a = ahVar;
        this.f32834b = rotation;
    }

    public static Runnable a(ah ahVar, Rotation rotation) {
        return new aj(ahVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32833a, this.f32834b);
    }
}
