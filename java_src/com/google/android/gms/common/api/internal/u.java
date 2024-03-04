package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class u extends d {

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ d.a f7605d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(d.a aVar, Feature[] featureArr, boolean z10, int i9) {
        super(featureArr, z10, i9);
        this.f7605d = aVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.d
    public final void b(a.b bVar, t4.h hVar) throws RemoteException {
        v3.i iVar;
        iVar = this.f7605d.f7540a;
        iVar.accept(bVar, hVar);
    }
}
