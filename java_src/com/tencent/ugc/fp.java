package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class fp implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCThumbnailGenerator f34951a;

    private fp(UGCThumbnailGenerator uGCThumbnailGenerator) {
        this.f34951a = uGCThumbnailGenerator;
    }

    public static Runnable a(UGCThumbnailGenerator uGCThumbnailGenerator) {
        return new fp(uGCThumbnailGenerator);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34951a.getNextThumbnail();
    }
}
