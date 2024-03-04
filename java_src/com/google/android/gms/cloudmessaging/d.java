package com.google.android.gms.cloudmessaging;

import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d extends l4.f {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f7406a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(b bVar, Looper looper) {
        super(looper);
        this.f7406a = bVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        b.d(this.f7406a, message);
    }
}
