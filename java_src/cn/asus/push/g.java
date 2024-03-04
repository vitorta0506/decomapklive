package cn.asus.push;

import android.os.IBinder;
import android.os.Parcel;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g implements d {

    /* renamed from: b  reason: collision with root package name */
    public static d f1775b;

    /* renamed from: a  reason: collision with root package name */
    private IBinder f1776a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(IBinder iBinder) {
        this.f1776a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1776a;
    }

    @Override // cn.asus.push.d
    public final void r0(DataBuffer dataBuffer, b bVar) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("cn.asus.push.IAIDLInvoke");
            if (dataBuffer != null) {
                obtain.writeInt(1);
                dataBuffer.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            obtain.writeStrongBinder(bVar != null ? bVar.asBinder() : null);
            if (this.f1776a.transact(2, obtain, null, 1) || c.f() == null) {
                return;
            }
            c.f().r0(dataBuffer, bVar);
        } finally {
            obtain.recycle();
        }
    }
}
