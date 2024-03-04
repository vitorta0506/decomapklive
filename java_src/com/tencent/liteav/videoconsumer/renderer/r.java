package com.tencent.liteav.videoconsumer.renderer;

import com.tencent.liteav.videobase.utils.Rotation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32452a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f32453b;

    private r(p pVar, Rotation rotation) {
        this.f32452a = pVar;
        this.f32453b = rotation;
    }

    public static Runnable a(p pVar, Rotation rotation) {
        return new r(pVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32452a, this.f32453b);
    }
}
