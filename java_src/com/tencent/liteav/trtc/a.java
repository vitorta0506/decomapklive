package com.tencent.liteav.trtc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final TrtcCloudJni f31343a;

    private a(TrtcCloudJni trtcCloudJni) {
        this.f31343a = trtcCloudJni;
    }

    public static Runnable a(TrtcCloudJni trtcCloudJni) {
        return new a(trtcCloudJni);
    }

    @Override // java.lang.Runnable
    public final void run() {
        TrtcCloudJni.lambda$enterRoom$0(this.f31343a);
    }
}
