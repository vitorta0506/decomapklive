package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class co implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34826a;

    private co(UGCImageProvider uGCImageProvider) {
        this.f34826a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new co(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCImageProvider.lambda$uninitialize$1(this.f34826a);
    }
}
