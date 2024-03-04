package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
/* loaded from: classes2.dex */
final class s extends r<Bundle> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public s(int i9, int i10, Bundle bundle) {
        super(i9, 1, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.r
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("data");
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        d(bundle2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.r
    public final boolean b() {
        return false;
    }
}
