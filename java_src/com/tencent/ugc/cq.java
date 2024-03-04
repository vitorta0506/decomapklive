package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class cq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34828a;

    private cq(UGCImageProvider uGCImageProvider) {
        this.f34828a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new cq(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCImageProvider.lambda$stop$3(this.f34828a);
    }
}
