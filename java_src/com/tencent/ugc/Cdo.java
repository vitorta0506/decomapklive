package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.tencent.ugc.do  reason: invalid class name */
/* loaded from: classes4.dex */
public final /* synthetic */ class Cdo implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34868a;

    private Cdo(UGCMediaListSource uGCMediaListSource) {
        this.f34868a = uGCMediaListSource;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource) {
        return new Cdo(uGCMediaListSource);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34868a.loadNextVideoFrameInternal(5L);
    }
}
