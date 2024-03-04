package com.tencent.liteav.videoproducer.encoder;

import com.tencent.liteav.videobase.videobase.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class av implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32857a;

    /* renamed from: b  reason: collision with root package name */
    private final h.a f32858b;

    private av(ah ahVar, h.a aVar) {
        this.f32857a = ahVar;
        this.f32858b = aVar;
    }

    public static Runnable a(ah ahVar, h.a aVar) {
        return new av(ahVar, aVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah.a(this.f32857a, this.f32858b);
    }
}
