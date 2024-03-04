package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class tb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ nd f9070a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f9071b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ vb f9072c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tb(vb vbVar, nd ndVar, int i9) {
        this.f9072c = vbVar;
        this.f9070a = ndVar;
        this.f9071b = i9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.f9070a.isCancelled()) {
                vb.e0(this.f9072c, null);
                this.f9072c.cancel(false);
            } else {
                vb.g0(this.f9072c, this.f9071b, this.f9070a);
            }
        } finally {
            vb.h0(this.f9072c, null);
        }
    }
}
