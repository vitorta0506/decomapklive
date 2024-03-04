package com.tencent.liteav.videoconsumer.renderer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class aa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final p f32360a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f32361b;

    private aa(p pVar, boolean z10) {
        this.f32360a = pVar;
        this.f32361b = z10;
    }

    public static Runnable a(p pVar, boolean z10) {
        return new aa(pVar, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        p.e(this.f32360a, this.f32361b);
    }
}
