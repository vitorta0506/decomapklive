package com.tencent.ugc;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dz implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34882a;

    private dz(UGCMediaListSource uGCMediaListSource) {
        this.f34882a = uGCMediaListSource;
    }

    public static Callable a(UGCMediaListSource uGCMediaListSource) {
        return new dz(uGCMediaListSource);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        long calculateTotalDurationOfClips;
        calculateTotalDurationOfClips = this.f34882a.calculateTotalDurationOfClips();
        return Long.valueOf(calculateTotalDurationOfClips);
    }
}
