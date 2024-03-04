package cn.jiguang.ag;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.jiguang.o.d;
/* loaded from: classes.dex */
public interface c extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements c {

        /* renamed from: cn.jiguang.ag.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0034a implements c {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f1852a;

            public C0034a(IBinder iBinder) {
                this.f1852a = iBinder;
            }

            @Override // cn.jiguang.ag.c
            public String a() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(d.g("Halo+/ex0XYuOCl75w4mzBmlg/ol+vqLiEURlblgA+0="));
                    this.f1852a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } catch (Throwable th2) {
                    try {
                        cn.jiguang.al.a.d("ZTEOAID", "getOAID obtain exception:" + th2.getMessage());
                        obtain2.recycle();
                        obtain.recycle();
                        return null;
                    } finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f1852a;
            }

            @Override // cn.jiguang.ag.c
            public boolean b() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                boolean z10 = false;
                try {
                    obtain.writeInterfaceToken(d.g("Halo+/ex0XYuOCl75w4mzBmlg/ol+vqLiEURlblgA+0="));
                    this.f1852a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                } finally {
                    try {
                        return z10;
                    } finally {
                    }
                }
                return z10;
            }
        }
    }

    String a();

    boolean b();
}
