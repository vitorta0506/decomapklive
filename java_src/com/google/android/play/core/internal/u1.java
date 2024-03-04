package com.google.android.play.core.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes2.dex */
public final class u1 extends r1 implements w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService");
    }

    @Override // com.google.android.play.core.internal.w1
    public final void G(String str, Bundle bundle, Bundle bundle2, y1 y1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        t1.b(f10, bundle);
        t1.b(f10, bundle2);
        t1.c(f10, y1Var);
        D0(6, f10);
    }

    @Override // com.google.android.play.core.internal.w1
    public final void Q(String str, Bundle bundle, y1 y1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        t1.b(f10, bundle);
        t1.c(f10, y1Var);
        D0(10, f10);
    }

    @Override // com.google.android.play.core.internal.w1
    public final void R(String str, Bundle bundle, Bundle bundle2, y1 y1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        t1.b(f10, bundle);
        t1.b(f10, bundle2);
        t1.c(f10, y1Var);
        D0(9, f10);
    }

    @Override // com.google.android.play.core.internal.w1
    public final void X(String str, Bundle bundle, Bundle bundle2, y1 y1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        t1.b(f10, bundle);
        t1.b(f10, bundle2);
        t1.c(f10, y1Var);
        D0(7, f10);
    }

    @Override // com.google.android.play.core.internal.w1
    public final void k0(String str, Bundle bundle, y1 y1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        t1.b(f10, bundle);
        t1.c(f10, y1Var);
        D0(5, f10);
    }

    @Override // com.google.android.play.core.internal.w1
    public final void p0(String str, Bundle bundle, Bundle bundle2, y1 y1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        t1.b(f10, bundle);
        t1.b(f10, bundle2);
        t1.c(f10, y1Var);
        D0(11, f10);
    }

    @Override // com.google.android.play.core.internal.w1
    public final void v0(String str, List list, Bundle bundle, y1 y1Var) throws RemoteException {
        Parcel f10 = f();
        f10.writeString(str);
        f10.writeTypedList(list);
        t1.b(f10, bundle);
        t1.c(f10, y1Var);
        D0(14, f10);
    }
}
