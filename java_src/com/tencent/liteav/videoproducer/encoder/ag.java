package com.tencent.liteav.videoproducer.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f32803a;

    private ag(w wVar) {
        this.f32803a = wVar;
    }

    public static Runnable a(w wVar) {
        return new ag(wVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        w wVar = this.f32803a;
        wVar.e();
        wVar.f32979c.removeCallbacks(wVar.f32990n);
        wVar.a(wVar.f32980d);
        wVar.f32980d = null;
    }
}
