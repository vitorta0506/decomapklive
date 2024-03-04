package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class ar implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final al f32596a;

    private ar(al alVar) {
        this.f32596a = alVar;
    }

    public static Runnable a(al alVar) {
        return new ar(alVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        al.a(this.f32596a);
    }
}
