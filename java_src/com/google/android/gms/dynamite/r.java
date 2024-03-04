package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h4.a;
/* loaded from: classes2.dex */
public final class r extends com.google.android.gms.internal.common.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public r(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final h4.a D0(h4.a aVar, String str, int i9, h4.a aVar2) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        f10.writeInt(i9);
        com.google.android.gms.internal.common.l.e(f10, aVar2);
        Parcel b10 = b(2, f10);
        h4.a f11 = a.AbstractBinderC0438a.f(b10.readStrongBinder());
        b10.recycle();
        return f11;
    }

    public final h4.a E0(h4.a aVar, String str, int i9, h4.a aVar2) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        f10.writeInt(i9);
        com.google.android.gms.internal.common.l.e(f10, aVar2);
        Parcel b10 = b(3, f10);
        h4.a f11 = a.AbstractBinderC0438a.f(b10.readStrongBinder());
        b10.recycle();
        return f11;
    }
}
