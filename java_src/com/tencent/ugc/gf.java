package com.tencent.ugc;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class gf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCVideoProcessor f34985a;

    /* renamed from: b  reason: collision with root package name */
    private final List f34986b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34987c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34988d;

    private gf(UGCVideoProcessor uGCVideoProcessor, List list, int i9, int i10) {
        this.f34985a = uGCVideoProcessor;
        this.f34986b = list;
        this.f34987c = i9;
        this.f34988d = i10;
    }

    public static Runnable a(UGCVideoProcessor uGCVideoProcessor, List list, int i9, int i10) {
        return new gf(uGCVideoProcessor, list, i9, i10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCVideoProcessor.lambda$setSplitScreenList$2(this.f34985a, this.f34986b, this.f34987c, this.f34988d);
    }
}
