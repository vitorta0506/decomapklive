package com.tencent.ugc;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dl implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34864a;

    private dl(UGCMediaListSource uGCMediaListSource) {
        this.f34864a = uGCMediaListSource;
    }

    public static Callable a(UGCMediaListSource uGCMediaListSource) {
        return new dl(uGCMediaListSource);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        long calculateTotalDurationOfClips;
        calculateTotalDurationOfClips = this.f34864a.calculateTotalDurationOfClips();
        return Long.valueOf(calculateTotalDurationOfClips);
    }
}
