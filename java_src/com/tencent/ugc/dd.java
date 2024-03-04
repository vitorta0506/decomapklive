package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34851a;

    private dd(UGCMediaListSource uGCMediaListSource) {
        this.f34851a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new dd(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34851a.loadNextVideoFrameInternal(5L);
    }
}
