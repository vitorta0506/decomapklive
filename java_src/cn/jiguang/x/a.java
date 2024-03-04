package cn.jiguang.x;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f2782a;

    /* renamed from: b  reason: collision with root package name */
    private String f2783b = d.g("axDZqud6H+CDQBXA/yBXOryhAsxzPh1PgN4N991nACfTSsXdCfZsE70k+cjPDPVB6dhHsO0zfFF8mVkwxeVKdQ==");

    public a(IBinder iBinder) {
        this.f2782a = iBinder;
    }

    public String a() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            try {
                obtain.writeInterfaceToken(this.f2783b);
                this.f2782a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } catch (Exception e10) {
                cn.jiguang.al.a.d("HuaweiAdvertisingInterface", "getIds error: " + e10.getMessage());
                obtain2.recycle();
                obtain.recycle();
                return "";
            }
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }
}
