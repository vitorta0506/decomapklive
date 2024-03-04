package com.tencent.liteav.videoproducer.producer;
/* loaded from: classes4.dex */
final /* synthetic */ class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final f f33310a;

    /* renamed from: b  reason: collision with root package name */
    private final String f33311b;

    private n(f fVar, String str) {
        this.f33310a = fVar;
        this.f33311b = str;
    }

    public static Runnable a(f fVar, String str) {
        return new n(fVar, str);
    }

    @Override // java.lang.Runnable
    public final void run() {
        f.a(this.f33310a, this.f33311b);
    }
}
