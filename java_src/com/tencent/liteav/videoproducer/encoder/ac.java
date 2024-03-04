package com.tencent.liteav.videoproducer.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32797a;

    private ac(w wVar) {
        this.f32797a = wVar;
    }

    public static Runnable a(w wVar) {
        return new ac(wVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = this.f32797a;
        if (wVar.f32982f.fullIFrame) {
            wVar.f();
        }
    }
}
