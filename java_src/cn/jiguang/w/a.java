package cn.jiguang.w;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f2778a;

    /* renamed from: b  reason: collision with root package name */
    private String f2779b;

    public a(IBinder iBinder) {
        this.f2779b = "";
        this.f2778a = iBinder;
        this.f2779b = d.g("+Fc+/S0DV5xukan0E/9N4RvXQpEI8h8+6y3k9NAvwjKewmlEeKVcapnVp59DHSw2ZuSa3pDDty/LQ1R0HbmN4Tu7alH/m3nVMfORBLpozB8=");
    }

    public String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.f2779b);
            this.f2778a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } catch (Throwable th2) {
            try {
                cn.jiguang.al.a.d("AdvertisingInterface", "getId error: " + th2.getMessage());
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
