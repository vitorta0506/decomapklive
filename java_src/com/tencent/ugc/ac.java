package com.tencent.ugc;

import com.tencent.ugc.TXVideoEditer;
/* loaded from: classes4.dex */
final /* synthetic */ class ac implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXVideoEditer f34693a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34694b;

    /* renamed from: c  reason: collision with root package name */
    private final int f34695c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f34696d;

    /* renamed from: e  reason: collision with root package name */
    private final int f34697e;

    /* renamed from: f  reason: collision with root package name */
    private final TXVideoEditer.TXThumbnailListener f34698f;

    private ac(TXVideoEditer tXVideoEditer, int i9, int i10, boolean z10, int i11, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        this.f34693a = tXVideoEditer;
        this.f34694b = i9;
        this.f34695c = i10;
        this.f34696d = z10;
        this.f34697e = i11;
        this.f34698f = tXThumbnailListener;
    }

    public static Runnable a(TXVideoEditer tXVideoEditer, int i9, int i10, boolean z10, int i11, TXVideoEditer.TXThumbnailListener tXThumbnailListener) {
        return new ac(tXVideoEditer, i9, i10, z10, i11, tXThumbnailListener);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TXVideoEditer.lambda$getThumbnail$34(this.f34693a, this.f34694b, this.f34695c, this.f34696d, this.f34697e, this.f34698f);
    }
}
