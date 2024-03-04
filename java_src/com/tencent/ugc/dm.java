package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class dm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34865a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34866b;

    private dm(UGCMediaListSource uGCMediaListSource, List list) {
        this.f34865a = uGCMediaListSource;
        this.f34866b = list;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, List list) {
        return new dm(uGCMediaListSource, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setSpeedList$13(this.f34865a, this.f34866b);
    }
}
