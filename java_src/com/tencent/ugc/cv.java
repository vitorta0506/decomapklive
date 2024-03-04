package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34835a;

    private cv(UGCImageProvider uGCImageProvider) {
        this.f34835a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new cv(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34835a.decodeBitmapFrame();
    }
}
