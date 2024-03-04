package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34827a;

    private cp(UGCImageProvider uGCImageProvider) {
        this.f34827a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new cp(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCImageProvider.lambda$start$2(this.f34827a);
    }
}
