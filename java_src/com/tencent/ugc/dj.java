package com.tencent.ugc;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dj implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34861a;

    private dj(UGCMediaListSource uGCMediaListSource) {
        this.f34861a = uGCMediaListSource;
    }

    public static Callable a(UGCMediaListSource uGCMediaListSource) {
        return new dj(uGCMediaListSource);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        boolean hasAudioDataInternal;
        hasAudioDataInternal = this.f34861a.hasAudioDataInternal();
        return Boolean.valueOf(hasAudioDataInternal);
    }
}
