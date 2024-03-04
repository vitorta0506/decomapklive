package sf;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
final class c {

    /* loaded from: classes5.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f57890a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f57891b;

        a(String str, boolean z10) {
            this.f57890a = str;
            this.f57891b = z10;
        }

        public String a() {
            return this.f57890a;
        }

        public boolean b() {
            return this.f57891b;
        }
    }

    /* loaded from: classes5.dex */
    private static final class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        boolean f57892a;

        /* renamed from: b  reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f57893b;

        private b() {
            this.f57892a = false;
            this.f57893b = new LinkedBlockingQueue<>(1);
        }

        public IBinder a() {
            if (this.f57892a) {
                throw new IllegalStateException();
            }
            this.f57892a = true;
            return this.f57893b.poll(30000L, TimeUnit.MILLISECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f57893b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: sf.c$c  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0645c implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f57894a;

        public C0645c(IBinder iBinder) {
            this.f57894a = iBinder;
        }

        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f57894a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f57894a;
        }

        public boolean b(boolean z10) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z10 ? 1 : 0);
                this.f57894a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public static a a(Context context) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                b bVar = new b();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (context.bindService(intent, bVar, 1)) {
                    try {
                        try {
                            IBinder a10 = bVar.a();
                            if (a10 != null) {
                                C0645c c0645c = new C0645c(a10);
                                return new a(c0645c.a(), c0645c.b(true));
                            }
                        } catch (Exception e10) {
                            throw e10;
                        }
                    } finally {
                        context.unbindService(bVar);
                    }
                }
                throw new IOException("Google Play connection failed");
            } catch (Exception e11) {
                throw e11;
            }
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }
}
