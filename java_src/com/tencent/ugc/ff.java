package com.tencent.ugc;
/* loaded from: classes4.dex */
final /* synthetic */ class ff implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final UGCSingleFilePixelFrameProvider f34934a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f34935b;

    private ff(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider, boolean z10) {
        this.f34934a = uGCSingleFilePixelFrameProvider;
        this.f34935b = z10;
    }

    public static Runnable a(UGCSingleFilePixelFrameProvider uGCSingleFilePixelFrameProvider, boolean z10) {
        return new ff(uGCSingleFilePixelFrameProvider, z10);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f34934a.setReverseInternal(this.f34935b);
    }
}
