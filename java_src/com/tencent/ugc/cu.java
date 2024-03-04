package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34834a;

    private cu(UGCImageProvider uGCImageProvider) {
        this.f34834a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new cu(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34834a.decodeBitmapFrame();
    }
}
