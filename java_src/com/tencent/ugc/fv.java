package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34960a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34961b;

    private fv(UGCVideoProcessor uGCVideoProcessor, List list) {
        this.f34960a = uGCVideoProcessor;
        this.f34961b = list;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, List list) {
        return new fv(uGCVideoProcessor, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setSpeedList$9(this.f34960a, this.f34961b);
    }
}
