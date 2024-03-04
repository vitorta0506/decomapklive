package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34867a;

    private dn(UGCMediaListSource uGCMediaListSource) {
        this.f34867a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new dn(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34867a.loadNextAudioFrameInternal(5L);
    }
}
