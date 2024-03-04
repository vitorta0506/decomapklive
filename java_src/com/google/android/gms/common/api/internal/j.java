package com.google.android.gms.common.api.internal;

import android.os.Handler;
import com.google.android.gms.common.api.internal.a;
/* loaded from: classes2.dex */
final class j implements a.InterfaceC0086a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f7567a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(c cVar) {
        this.f7567a = cVar;
    }

    @Override // com.google.android.gms.common.api.internal.a.InterfaceC0086a
    public final void a(boolean z10) {
        Handler handler;
        Handler handler2;
        c cVar = this.f7567a;
        handler = cVar.f7533p;
        handler2 = cVar.f7533p;
        handler.sendMessage(handler2.obtainMessage(1, Boolean.valueOf(z10)));
    }
}
