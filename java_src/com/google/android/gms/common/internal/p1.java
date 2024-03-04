package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class p1 implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ q1 f7768a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ p1(q1 q1Var, o1 o1Var) {
        this.f7768a = q1Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        HashMap hashMap;
        HashMap hashMap2;
        HashMap hashMap3;
        HashMap hashMap4;
        HashMap hashMap5;
        int i9 = message.what;
        if (i9 == 0) {
            hashMap = this.f7768a.f7773f;
            synchronized (hashMap) {
                m1 m1Var = (m1) message.obj;
                hashMap2 = this.f7768a.f7773f;
                n1 n1Var = (n1) hashMap2.get(m1Var);
                if (n1Var != null && n1Var.i()) {
                    if (n1Var.j()) {
                        n1Var.g("GmsClientSupervisor");
                    }
                    hashMap3 = this.f7768a.f7773f;
                    hashMap3.remove(m1Var);
                }
            }
            return true;
        } else if (i9 != 1) {
            return false;
        } else {
            hashMap4 = this.f7768a.f7773f;
            synchronized (hashMap4) {
                m1 m1Var2 = (m1) message.obj;
                hashMap5 = this.f7768a.f7773f;
                n1 n1Var2 = (n1) hashMap5.get(m1Var2);
                if (n1Var2 != null && n1Var2.a() == 3) {
                    String valueOf = String.valueOf(m1Var2);
                    Log.e("GmsClientSupervisor", "Timeout waiting for ServiceConnection callback " + valueOf, new Exception());
                    ComponentName b10 = n1Var2.b();
                    if (b10 == null) {
                        b10 = m1Var2.b();
                    }
                    if (b10 == null) {
                        String d10 = m1Var2.d();
                        p.j(d10);
                        b10 = new ComponentName(d10, "unknown");
                    }
                    n1Var2.onServiceDisconnected(b10);
                }
            }
            return true;
        }
    }
}
