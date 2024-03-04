package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;
/* loaded from: classes2.dex */
public final class f1 extends r0 {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    public final IBinder f7733g;

    /* renamed from: h  reason: collision with root package name */
    final /* synthetic */ d f7734h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @BinderThread
    public f1(d dVar, @Nullable int i9, @Nullable IBinder iBinder, Bundle bundle) {
        super(dVar, i9, bundle);
        this.f7734h = dVar;
        this.f7733g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.r0
    protected final void f(ConnectionResult connectionResult) {
        if (this.f7734h.f7706v != null) {
            this.f7734h.f7706v.f(connectionResult);
        }
        this.f7734h.I(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.r0
    protected final boolean g() {
        d.a aVar;
        d.a aVar2;
        try {
            IBinder iBinder = this.f7733g;
            p.j(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            if (!this.f7734h.B().equals(interfaceDescriptor)) {
                String B = this.f7734h.B();
                Log.w("GmsClient", "service descriptor mismatch: " + B + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface p10 = this.f7734h.p(this.f7733g);
            if (p10 == null || !(d.d0(this.f7734h, 2, 4, p10) || d.d0(this.f7734h, 3, 4, p10))) {
                return false;
            }
            this.f7734h.f7710z = null;
            Bundle u10 = this.f7734h.u();
            d dVar = this.f7734h;
            aVar = dVar.f7705u;
            if (aVar != null) {
                aVar2 = dVar.f7705u;
                aVar2.b(u10);
                return true;
            }
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
