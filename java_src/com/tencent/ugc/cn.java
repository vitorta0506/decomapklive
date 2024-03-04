package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cn implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCImageProvider f34825a;

    private cn(UGCImageProvider uGCImageProvider) {
        this.f34825a = uGCImageProvider;
    }

    public static Runnable a(UGCImageProvider uGCImageProvider) {
        return new cn(uGCImageProvider);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34825a.decodeBitmapFrame();
    }
}
