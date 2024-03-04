package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33123a;

    private x(h hVar) {
        this.f33123a = hVar;
    }

    public static Runnable a(h hVar) {
        return new x(hVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33123a.a();
    }
}
