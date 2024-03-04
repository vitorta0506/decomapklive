package com.tencent.liteav.videoproducer.encoder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final w f33005a;

    private z(w wVar) {
        this.f33005a = wVar;
    }

    public static Runnable a(w wVar) {
        return new z(wVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33005a.g();
    }
}
