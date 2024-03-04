package cn.jiguang.ad;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f1830a;

    /* renamed from: b  reason: collision with root package name */
    private String f1831b = d.g("NZZdxIY39aBpJdeuRJ0VLp5xPlLZJqfiSSPak26ACVv4Y6EB33Z8c96zLnz4UMIR2tR6ldXn18NaPke3N1cdFQ==");

    public a(IBinder iBinder) {
        this.f1830a = iBinder;
    }

    public String a(Context context) {
        String str = "";
        if (context == null) {
            return "";
        }
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(this.f1831b);
            this.f1830a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            str = obtain2.readString();
        } finally {
            try {
                return str;
            } finally {
            }
        }
        return str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }
}
