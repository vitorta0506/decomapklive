package com.tencent.liteav.videobase.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f31672a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31673b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f31674c;

    private e(b bVar, int i9, float[] fArr) {
        this.f31672a = bVar;
        this.f31673b = i9;
        this.f31674c = fArr;
    }

    public static Runnable a(b bVar, int i9, float[] fArr) {
        return new e(bVar, i9, fArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.lambda$setFloatVec2OnDraw$2(this.f31672a, this.f31673b, this.f31674c);
    }
}
