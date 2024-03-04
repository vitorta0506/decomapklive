package com.tencent.ugc;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dh implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34858a;

    private dh(UGCMediaListSource uGCMediaListSource) {
        this.f34858a = uGCMediaListSource;
    }

    public static Callable a(UGCMediaListSource uGCMediaListSource) {
        return new dh(uGCMediaListSource);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        long calculateTotalDurationOfClips;
        calculateTotalDurationOfClips = this.f34858a.calculateTotalDurationOfClips();
        return Long.valueOf(calculateTotalDurationOfClips);
    }
}
