package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class da implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCMediaListSource f34845a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34846b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34847c;

    private da(UGCMediaListSource uGCMediaListSource, List list, int i9) {
        this.f34845a = uGCMediaListSource;
        this.f34846b = list;
        this.f34847c = i9;
    }

    public static Runnable a(UGCMediaListSource uGCMediaListSource, List list, int i9) {
        return new da(uGCMediaListSource, list, i9);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCMediaListSource.lambda$setPictureList$5(this.f34845a, this.f34846b, this.f34847c);
    }
}
