package com.tencent.liteav.videoproducer.preprocessor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final h f33098a;

    /* renamed from: b  reason: collision with root package name */
    private final String f33099b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f33100c;

    private o(h hVar, String str, boolean z10) {
        this.f33098a = hVar;
        this.f33099b = str;
        this.f33100c = z10;
    }

    public static Runnable a(h hVar, String str, boolean z10) {
        return new o(hVar, str, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
