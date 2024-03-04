package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34869a;

    private dp(UGCMediaListSource uGCMediaListSource) {
        this.f34869a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new dp(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34869a.prePareNextUGCPixelFrameProvider();
    }
}
