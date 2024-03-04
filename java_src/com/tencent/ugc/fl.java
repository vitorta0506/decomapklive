package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fl implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCThumbnailGenerator f34942a;

    private fl(UGCThumbnailGenerator uGCThumbnailGenerator) {
        this.f34942a = uGCThumbnailGenerator;
    }

    public static Runnable a(UGCThumbnailGenerator uGCThumbnailGenerator) {
        return new fl(uGCThumbnailGenerator);
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCThumbnailGenerator.lambda$uninitialize$0(this.f34942a);
    }
}
