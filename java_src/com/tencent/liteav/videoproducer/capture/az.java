package com.tencent.liteav.videoproducer.capture;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class az implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final ay f32615a;

    private az(ay ayVar) {
        this.f32615a = ayVar;
    }

    public static Runnable a(ay ayVar) {
        return new az(ayVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f32615a.d();
    }
}
