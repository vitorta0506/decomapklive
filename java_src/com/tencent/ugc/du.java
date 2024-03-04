package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class du implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34875a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34876b;

    private du(UGCMediaListSource uGCMediaListSource, List list) {
        this.f34875a = uGCMediaListSource;
        this.f34876b = list;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, List list) {
        return new du(uGCMediaListSource, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setVideoSources$0(this.f34875a, this.f34876b);
    }
}
