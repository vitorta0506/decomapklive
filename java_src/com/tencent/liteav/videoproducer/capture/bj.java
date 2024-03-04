package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class bj implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final bi f32691a;

    private bj(bi biVar) {
        this.f32691a = biVar;
    }

    public static Runnable a(bi biVar) {
        return new bj(biVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32691a.a(false);
    }
}
