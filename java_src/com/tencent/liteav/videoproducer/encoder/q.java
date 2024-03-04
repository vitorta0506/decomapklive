package com.tencent.liteav.videoproducer.encoder;
/* loaded from: classes4.dex */
final /* synthetic */ class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final o f32950a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32951b;

    private q(o oVar, String str) {
        this.f32950a = oVar;
        this.f32951b = str;
    }

    public static Runnable a(o oVar, String str) {
        return new q(oVar, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        o.a(this.f32950a, this.f32951b);
    }
}
