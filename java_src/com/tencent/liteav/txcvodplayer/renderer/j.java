package com.tencent.liteav.txcvodplayer.renderer;

import com.tencent.liteav.videobase.utils.Rotation;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final d f31660a;

    /* renamed from: b  reason: collision with root package name */
    private final Rotation f31661b;

    private j(d dVar, Rotation rotation) {
        this.f31660a = dVar;
        this.f31661b = rotation;
    }

    public static Runnable a(d dVar, Rotation rotation) {
        return new j(dVar, rotation);
    }

    @Override // java.lang.Runnable
    public final void run() {
        d.a(this.f31660a, this.f31661b);
    }
}
