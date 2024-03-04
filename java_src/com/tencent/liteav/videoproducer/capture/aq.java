package com.tencent.liteav.videoproducer.capture;
/* loaded from: classes4.dex */
final /* synthetic */ class aq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final al f32595a;

    private aq(al alVar) {
        this.f32595a = alVar;
    }

    public static Runnable a(al alVar) {
        return new aq(alVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        al.b(this.f32595a);
    }
}
