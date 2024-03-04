package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cx implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final cx f34837a = new cx();

    private cx() {
    }

    public static Runnable a() {
        return f34837a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCInitializer.nativeUninitialize();
    }
}
