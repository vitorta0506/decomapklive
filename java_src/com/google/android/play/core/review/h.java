package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import d5.o;
/* loaded from: classes2.dex */
final class h extends g {

    /* renamed from: d  reason: collision with root package name */
    final String f10641d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(i iVar, o oVar, String str) {
        super(iVar, new com.google.android.play.core.internal.g("OnRequestInstallCallback"), oVar);
        this.f10641d = str;
    }

    @Override // com.google.android.play.core.review.g, com.google.android.play.core.internal.f
    public final void A0(Bundle bundle) throws RemoteException {
        super.A0(bundle);
        this.f10639b.e(new zza((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
