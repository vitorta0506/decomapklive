package com.tencent.liteav.videoproducer.encoder;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ap implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final ah f32845a;

    private ap(ah ahVar) {
        this.f32845a = ahVar;
    }

    public static Callable a(ah ahVar) {
        return new ap(ahVar);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return ah.a(this.f32845a);
    }
}
