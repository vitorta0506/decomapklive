package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class b1 extends com.google.android.gms.internal.common.n {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f7679a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b1(d dVar, Looper looper) {
        super(looper);
        this.f7679a = dVar;
    }

    private static final void a(Message message) {
        c1 c1Var = (c1) message.obj;
        c1Var.b();
        c1Var.e();
    }

    private static final boolean b(Message message) {
        int i9 = message.what;
        return i9 == 2 || i9 == 1 || i9 == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        d.a aVar;
        d.a aVar2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        boolean z10;
        if (this.f7679a.C.get() != message.arg1) {
            if (b(message)) {
                a(message);
                return;
            }
            return;
        }
        int i9 = message.what;
        if ((i9 != 1 && i9 != 7 && ((i9 != 4 || this.f7679a.q()) && message.what != 5)) || this.f7679a.isConnecting()) {
            int i10 = message.what;
            if (i10 == 4) {
                this.f7679a.f7710z = new ConnectionResult(message.arg2);
                if (d.e0(this.f7679a)) {
                    d dVar = this.f7679a;
                    z10 = dVar.A;
                    if (!z10) {
                        dVar.f0(3, null);
                        return;
                    }
                }
                d dVar2 = this.f7679a;
                connectionResult2 = dVar2.f7710z;
                ConnectionResult connectionResult3 = connectionResult2 != null ? dVar2.f7710z : new ConnectionResult(8);
                this.f7679a.f7700p.a(connectionResult3);
                this.f7679a.I(connectionResult3);
                return;
            } else if (i10 == 5) {
                d dVar3 = this.f7679a;
                connectionResult = dVar3.f7710z;
                ConnectionResult connectionResult4 = connectionResult != null ? dVar3.f7710z : new ConnectionResult(8);
                this.f7679a.f7700p.a(connectionResult4);
                this.f7679a.I(connectionResult4);
                return;
            } else if (i10 == 3) {
                Object obj = message.obj;
                ConnectionResult connectionResult5 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
                this.f7679a.f7700p.a(connectionResult5);
                this.f7679a.I(connectionResult5);
                return;
            } else if (i10 == 6) {
                this.f7679a.f0(5, null);
                d dVar4 = this.f7679a;
                aVar = dVar4.f7705u;
                if (aVar != null) {
                    aVar2 = dVar4.f7705u;
                    aVar2.onConnectionSuspended(message.arg2);
                }
                this.f7679a.J(message.arg2);
                d.d0(this.f7679a, 5, 1, null);
                return;
            } else if (i10 == 2 && !this.f7679a.isConnected()) {
                a(message);
                return;
            } else if (b(message)) {
                ((c1) message.obj).c();
                return;
            } else {
                int i11 = message.what;
                Log.wtf("GmsClient", "Don't know how to handle message: " + i11, new Exception());
                return;
            }
        }
        a(message);
    }
}
