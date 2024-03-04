package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import h4.a;
/* loaded from: classes2.dex */
public final class q extends com.google.android.gms.internal.common.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public q(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int D0() throws RemoteException {
        Parcel b10 = b(6, f());
        int readInt = b10.readInt();
        b10.recycle();
        return readInt;
    }

    public final int E0(h4.a aVar, String str, boolean z10) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        com.google.android.gms.internal.common.l.c(f10, z10);
        Parcel b10 = b(3, f10);
        int readInt = b10.readInt();
        b10.recycle();
        return readInt;
    }

    public final int F0(h4.a aVar, String str, boolean z10) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        com.google.android.gms.internal.common.l.c(f10, z10);
        Parcel b10 = b(5, f10);
        int readInt = b10.readInt();
        b10.recycle();
        return readInt;
    }

    public final h4.a G0(h4.a aVar, String str, int i9) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        f10.writeInt(i9);
        Parcel b10 = b(2, f10);
        h4.a f11 = a.AbstractBinderC0438a.f(b10.readStrongBinder());
        b10.recycle();
        return f11;
    }

    public final h4.a H0(h4.a aVar, String str, int i9, h4.a aVar2) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        f10.writeInt(i9);
        com.google.android.gms.internal.common.l.e(f10, aVar2);
        Parcel b10 = b(8, f10);
        h4.a f11 = a.AbstractBinderC0438a.f(b10.readStrongBinder());
        b10.recycle();
        return f11;
    }

    public final h4.a I0(h4.a aVar, String str, int i9) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        f10.writeInt(i9);
        Parcel b10 = b(4, f10);
        h4.a f11 = a.AbstractBinderC0438a.f(b10.readStrongBinder());
        b10.recycle();
        return f11;
    }

    public final h4.a J0(h4.a aVar, String str, boolean z10, long j10) throws RemoteException {
        Parcel f10 = f();
        com.google.android.gms.internal.common.l.e(f10, aVar);
        f10.writeString(str);
        com.google.android.gms.internal.common.l.c(f10, z10);
        f10.writeLong(j10);
        Parcel b10 = b(7, f10);
        h4.a f11 = a.AbstractBinderC0438a.f(b10.readStrongBinder());
        b10.recycle();
        return f11;
    }
}
