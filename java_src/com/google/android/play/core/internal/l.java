package com.google.android.play.core.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class l extends h {

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ s f10580b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(s sVar) {
        this.f10580b = sVar;
    }

    @Override // com.google.android.play.core.internal.h
    public final void b() {
        IInterface iInterface;
        g gVar;
        Context context;
        ServiceConnection serviceConnection;
        s sVar = this.f10580b;
        iInterface = sVar.f10611n;
        if (iInterface != null) {
            gVar = sVar.f10599b;
            gVar.d("Unbind from service.", new Object[0]);
            s sVar2 = this.f10580b;
            context = sVar2.f10598a;
            serviceConnection = sVar2.f10610m;
            context.unbindService(serviceConnection);
            this.f10580b.f10604g = false;
            this.f10580b.f10611n = null;
            this.f10580b.f10610m = null;
        }
        this.f10580b.u();
    }
}
