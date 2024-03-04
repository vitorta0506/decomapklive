package com.tencent.liteav.videoconsumer.renderer;
/* loaded from: classes4.dex */
final /* synthetic */ class ad implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32367a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32368b;

    /* renamed from: c  reason: collision with root package name */
    private final int f32369c;

    /* renamed from: d  reason: collision with root package name */
    private final int f32370d;

    /* renamed from: e  reason: collision with root package name */
    private final int f32371e;

    private ad(p pVar, int i9, int i10, int i11, int i12) {
        this.f32367a = pVar;
        this.f32368b = i9;
        this.f32369c = i10;
        this.f32370d = i11;
        this.f32371e = i12;
    }

    public static Runnable a(p pVar, int i9, int i10, int i11, int i12) {
        return new ad(pVar, i9, i10, i11, i12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.a(this.f32367a, this.f32368b, this.f32369c, this.f32370d, this.f32371e);
    }
}
