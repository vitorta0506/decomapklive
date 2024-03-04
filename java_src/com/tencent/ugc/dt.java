package com.tencent.ugc;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dt implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34874a;

    private dt(UGCMediaListSource uGCMediaListSource) {
        this.f34874a = uGCMediaListSource;
    }

    public static Callable a(UGCMediaListSource uGCMediaListSource) {
        return new dt(uGCMediaListSource);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        long calculateTotalDurationOfClips;
        calculateTotalDurationOfClips = this.f34874a.calculateTotalDurationOfClips();
        return Long.valueOf(calculateTotalDurationOfClips);
    }
}
