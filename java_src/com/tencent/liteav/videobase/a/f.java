package com.tencent.liteav.videobase.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f31675a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31676b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f31677c;

    private f(b bVar, int i9, float[] fArr) {
        this.f31675a = bVar;
        this.f31676b = i9;
        this.f31677c = fArr;
    }

    public static Runnable a(b bVar, int i9, float[] fArr) {
        return new f(bVar, i9, fArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.lambda$setFloatVec4OnDraw$3(this.f31675a, this.f31676b, this.f31677c);
    }
}
