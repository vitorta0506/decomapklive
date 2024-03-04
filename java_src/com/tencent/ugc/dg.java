package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class dg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34857a;

    private dg(UGCMediaListSource uGCMediaListSource) {
        this.f34857a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new dg(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34857a.resetReadPositionInternal();
    }
}
