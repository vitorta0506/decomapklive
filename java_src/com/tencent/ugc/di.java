package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class di implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34859a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34860b;

    private di(UGCMediaListSource uGCMediaListSource, List list) {
        this.f34859a = uGCMediaListSource;
        this.f34860b = list;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, List list) {
        return new di(uGCMediaListSource, list);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setRepeatPlay$11(this.f34859a, this.f34860b);
    }
}
