package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class ei implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCRecorderJni f34896a;

    /* renamed from: b  reason: collision with root package name */
    private final float f34897b;

    /* renamed from: c  reason: collision with root package name */
    private final float f34898c;

    private ei(UGCRecorderJni uGCRecorderJni, float f10, float f11) {
        this.f34896a = uGCRecorderJni;
        this.f34897b = f10;
        this.f34898c = f11;
    }

    public static Runnable a(UGCRecorderJni uGCRecorderJni, float f10, float f11) {
        return new ei(uGCRecorderJni, f10, f11);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCRecorderJni.lambda$setFocusPosition$0(this.f34896a, this.f34897b, this.f34898c);
    }
}
