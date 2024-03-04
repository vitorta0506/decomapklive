package com.google.android.play.core.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class r implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ s f10594a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r(s sVar, q qVar) {
        this.f10594a = sVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        s.f(this.f10594a).d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f10594a.c().post(new o(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        s.f(this.f10594a).d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f10594a.c().post(new p(this));
    }
}
