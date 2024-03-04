package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.play.core.internal.s;
import d5.o;
/* loaded from: classes2.dex */
class g extends com.google.android.play.core.internal.e {

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.play.core.internal.g f10638a;

    /* renamed from: b  reason: collision with root package name */
    final o f10639b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ i f10640c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(i iVar, com.google.android.play.core.internal.g gVar, o oVar) {
        this.f10640c = iVar;
        this.f10638a = gVar;
        this.f10639b = oVar;
    }

    @Override // com.google.android.play.core.internal.f
    public void A0(Bundle bundle) throws RemoteException {
        s sVar = this.f10640c.f10643a;
        if (sVar != null) {
            sVar.s(this.f10639b);
        }
        this.f10638a.d("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
