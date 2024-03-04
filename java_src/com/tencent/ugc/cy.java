package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cy implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34838a;

    private cy(UGCMediaListSource uGCMediaListSource) {
        this.f34838a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new cy(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34838a.uninitializeInternal();
    }
}
