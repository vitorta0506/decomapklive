package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34823a;

    private cl(UGCImageProvider uGCImageProvider) {
        this.f34823a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new cl(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCImageProvider.lambda$initialize$0(this.f34823a);
    }
}
