package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fk implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34941a;

    private fk(UGCMediaListSource uGCMediaListSource) {
        this.f34941a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new fk(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34941a.initialize();
    }
}
