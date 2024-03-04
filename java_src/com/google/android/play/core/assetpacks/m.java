package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes2.dex */
final class m extends k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public m(s sVar, d5.o oVar) {
        super(sVar, oVar);
    }

    @Override // com.google.android.play.core.assetpacks.k, com.google.android.play.core.internal.y1
    public final void Z(Bundle bundle, Bundle bundle2) throws RemoteException {
        super.Z(bundle, bundle2);
        this.f10310a.e((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor"));
    }
}
