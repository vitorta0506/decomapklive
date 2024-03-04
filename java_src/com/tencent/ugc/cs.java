package com.tencent.ugc;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cs implements Callable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34831a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34832b;

    private cs(UGCImageProvider uGCImageProvider, int i9) {
        this.f34831a = uGCImageProvider;
        this.f34832b = i9;
    }

    public static Callable a(UGCImageProvider uGCImageProvider, int i9) {
        return new cs(uGCImageProvider, i9);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return UGCImageProvider.lambda$setPictureTransition$5(this.f34831a, this.f34832b);
    }
}
