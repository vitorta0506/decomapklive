package com.tencent.rtmp.ui;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TXCloudVideoView f33444a;

    private c(TXCloudVideoView tXCloudVideoView) {
        this.f33444a = tXCloudVideoView;
    }

    public static Runnable a(TXCloudVideoView tXCloudVideoView) {
        return new c(tXCloudVideoView);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f33444a.hideIndicatorView();
    }
}
