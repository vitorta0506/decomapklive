package cn.jiguang.ah;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f1853a;

    /* renamed from: b  reason: collision with root package name */
    private String f1854b = d.g("Mpy0fkBSw1N+kug2cBPj2Z07jpK2SYpu9oSV4B2lEuO7ZdtoaGwNjuH9BjHR80mN");

    public a(IBinder iBinder) {
        this.f1853a = iBinder;
    }

    public String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.f1854b);
            this.f1853a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } catch (Throwable th2) {
            try {
                cn.jiguang.al.a.d("ZuiAdvertisingInterface", "get Ids-o error: " + th2.getMessage());
                obtain2.recycle();
                obtain.recycle();
                return "";
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }
}
