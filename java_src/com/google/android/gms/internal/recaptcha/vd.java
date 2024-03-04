package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class vd implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Runnable f9107a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public vd(xd xdVar, Runnable runnable) {
        this.f9107a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9107a.run();
    }

    public final String toString() {
        return this.f9107a.toString();
    }
}
