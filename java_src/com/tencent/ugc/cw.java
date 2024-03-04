package com.tencent.ugc;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final /* synthetic */ class cw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final cw f34836a = new cw();

    private cw() {
    }

    public static Runnable a() {
        return f34836a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        UGCInitializer.nativeInitialize();
    }
}
