package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fq implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCThumbnailGenerator f34952a;

    private fq(UGCThumbnailGenerator uGCThumbnailGenerator) {
        this.f34952a = uGCThumbnailGenerator;
    }

    public static Runnable a(UGCThumbnailGenerator uGCThumbnailGenerator) {
        return new fq(uGCThumbnailGenerator);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCThumbnailGenerator.lambda$stop$4(this.f34952a);
    }
}
