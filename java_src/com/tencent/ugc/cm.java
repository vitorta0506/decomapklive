package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34824a;

    private cm(UGCImageProvider uGCImageProvider) {
        this.f34824a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new cm(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34824a.decodeBitmapFrame();
    }
}
