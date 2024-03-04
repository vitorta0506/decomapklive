package com.tencent.rtmp.ui;
/* loaded from: classes4.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXCloudVideoView f33445a;

    /* renamed from: b  reason: collision with root package name */
    private final int f33446b;

    /* renamed from: c  reason: collision with root package name */
    private final int f33447c;

    /* renamed from: d  reason: collision with root package name */
    private final int f33448d;

    /* renamed from: e  reason: collision with root package name */
    private final int f33449e;

    private d(TXCloudVideoView tXCloudVideoView, int i9, int i10, int i11, int i12) {
        this.f33445a = tXCloudVideoView;
        this.f33446b = i9;
        this.f33447c = i10;
        this.f33448d = i11;
        this.f33449e = i12;
    }

    public static Runnable a(TXCloudVideoView tXCloudVideoView, int i9, int i10, int i11, int i12) {
        return new d(tXCloudVideoView, i9, i10, i11, i12);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33445a.showFocusViewInternal(this.f33446b, this.f33447c, this.f33448d, this.f33449e);
    }
}
