package com.tencent.liteav.videobase.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f31669a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31670b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f31671c;

    private d(b bVar, int i9, float[] fArr) {
        this.f31669a = bVar;
        this.f31670b = i9;
        this.f31671c = fArr;
    }

    public static Runnable a(b bVar, int i9, float[] fArr) {
        return new d(bVar, i9, fArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.lambda$setFloatVec3OnDraw$1(this.f31669a, this.f31670b, this.f31671c);
    }
}
