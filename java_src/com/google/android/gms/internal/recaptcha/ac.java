package com.google.android.gms.internal.recaptcha;

import java.util.Set;
/* loaded from: classes2.dex */
final class ac extends yb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ac(xb xbVar) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.yb
    public final int a(bc<?> bcVar) {
        int S;
        synchronized (bcVar) {
            S = bc.S(bcVar);
        }
        return S;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.recaptcha.yb
    public final void b(bc<?> bcVar, Set<Throwable> set, Set<Throwable> set2) {
        Set set3;
        synchronized (bcVar) {
            set3 = ((bc) bcVar).f8527h;
            if (set3 == null) {
                ((bc) bcVar).f8527h = set2;
            }
        }
    }
}
