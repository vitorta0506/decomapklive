package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dc implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34850a;

    private dc(UGCMediaListSource uGCMediaListSource) {
        this.f34850a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new dc(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34850a.loadNextAudioFrameInternal(5L);
    }
}
