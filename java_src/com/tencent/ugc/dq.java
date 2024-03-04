package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34870a;

    private dq(UGCMediaListSource uGCMediaListSource) {
        this.f34870a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new dq(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34870a.prePareNextUGCPixelFrameProvider();
    }
}
