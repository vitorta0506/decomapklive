package com.google.android.gms.internal.recaptcha;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class cd<V> extends lb<V> implements Runnable {

    /* renamed from: h  reason: collision with root package name */
    private nd<V> f8566h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cd(nd<V> ndVar) {
        this.f8566h = ndVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.recaptcha.cb
    public final String k() {
        nd<V> ndVar = this.f8566h;
        if (ndVar != null) {
            String valueOf = String.valueOf(ndVar);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 11);
            sb2.append("delegate=[");
            sb2.append(valueOf);
            sb2.append("]");
            return sb2.toString();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.recaptcha.cb
    protected final void l() {
        this.f8566h = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        nd<V> ndVar = this.f8566h;
        if (ndVar != null) {
            n(ndVar);
        }
    }
}
