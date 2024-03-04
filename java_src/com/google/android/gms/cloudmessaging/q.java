package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* loaded from: classes2.dex */
final class q extends r<Void> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q(int i9, int i10, Bundle bundle) {
        super(i9, 2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.r
    public final void a(Bundle bundle) {
        if (bundle.getBoolean("ack", false)) {
            d(null);
        } else {
            c(new zzq(4, "Invalid response to one way request", null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.r
    public final boolean b() {
        return true;
    }
}
