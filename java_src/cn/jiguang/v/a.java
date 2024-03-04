package cn.jiguang.v;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f2775a;

    /* renamed from: b  reason: collision with root package name */
    private String f2776b;

    public a(IBinder iBinder) {
        this.f2776b = "";
        this.f2775a = iBinder;
        this.f2776b = d.g("8lAhWp7NB89J3VIJU4lIGfGqvEuhZG7tBjI4IuOrU/y3j/vpb/c+G/Rylr/l3ZwQ");
    }

    public String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.f2776b);
            this.f2775a.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } catch (Throwable th2) {
            try {
                cn.jiguang.al.a.d("AsusAdvertisingInterface", "get ids-o e: " + th2.getMessage());
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
        return this.f2775a;
    }
}
