package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class ap implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final al f32594a;

    private ap(al alVar) {
        this.f32594a = alVar;
    }

    public static Runnable a(al alVar) {
        return new ap(alVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        al.c(this.f32594a);
    }
}
