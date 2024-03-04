package com.tencent.liteav.videoconsumer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class u implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32458a;

    private u(p pVar) {
        this.f32458a = pVar;
    }

    public static Runnable a(p pVar) {
        return new u(pVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.c(this.f32458a);
    }
}
