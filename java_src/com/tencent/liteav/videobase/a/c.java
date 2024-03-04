package com.tencent.liteav.videobase.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f31666a;

    /* renamed from: b  reason: collision with root package name */
    private final int f31667b;

    /* renamed from: c  reason: collision with root package name */
    private final float f31668c;

    private c(b bVar, int i9, float f10) {
        this.f31666a = bVar;
        this.f31667b = i9;
        this.f31668c = f10;
    }

    public static Runnable a(b bVar, int i9, float f10) {
        return new c(bVar, i9, f10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.lambda$setFloatOnDraw$0(this.f31666a, this.f31667b, this.f31668c);
    }
}
