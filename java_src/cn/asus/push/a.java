package cn.asus.push;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class a extends Binder implements b {
    private static final String DESCRIPTOR = "cn.asus.push.IAIDLCallback";
    static final int TRANSACTION_call = 1;

    public a() {
        attachInterface(this, DESCRIPTOR);
    }

    public static b asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
        return (queryLocalInterface == null || !(queryLocalInterface instanceof b)) ? new f(iBinder) : (b) queryLocalInterface;
    }

    public static b getDefaultImpl() {
        return f.f1773b;
    }

    public static boolean setDefaultImpl(b bVar) {
        if (f.f1773b != null || bVar == null) {
            return false;
        }
        f.f1773b = bVar;
        return true;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i9, Parcel parcel, Parcel parcel2, int i10) {
        if (i9 == 1) {
            parcel.enforceInterface(DESCRIPTOR);
            call(parcel.readInt() != 0 ? DataBuffer.CREATOR.createFromParcel(parcel) : null);
            return true;
        } else if (i9 != 1598968902) {
            return super.onTransact(i9, parcel, parcel2, i10);
        } else {
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }
}
