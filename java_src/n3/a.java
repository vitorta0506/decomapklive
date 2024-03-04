package n3;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.p;
import i4.e;
import i4.f;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    u3.a f55337a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    f f55338b;

    /* renamed from: c  reason: collision with root package name */
    boolean f55339c;

    /* renamed from: d  reason: collision with root package name */
    final Object f55340d = new Object();
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    c f55341e;

    /* renamed from: f  reason: collision with root package name */
    private final Context f55342f;

    /* renamed from: g  reason: collision with root package name */
    final long f55343g;

    /* renamed from: n3.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0580a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final String f55344a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f55345b;

        @Deprecated
        public C0580a(@Nullable String str, boolean z10) {
            this.f55344a = str;
            this.f55345b = z10;
        }

        @Nullable
        public String a() {
            return this.f55344a;
        }

        public boolean b() {
            return this.f55345b;
        }

        @NonNull
        public String toString() {
            String str = this.f55344a;
            boolean z10 = this.f55345b;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
            sb2.append("{");
            sb2.append(str);
            sb2.append("}");
            sb2.append(z10);
            return sb2.toString();
        }
    }

    public a(@NonNull Context context, long j10, boolean z10, boolean z11) {
        Context applicationContext;
        p.j(context);
        if (z10 && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f55342f = context;
        this.f55339c = false;
        this.f55343g = j10;
    }

    @NonNull
    public static C0580a a(@NonNull Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        a aVar = new a(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            aVar.d(false);
            C0580a f10 = aVar.f(-1);
            aVar.e(f10, true, 0.0f, SystemClock.elapsedRealtime() - elapsedRealtime, "", null);
            return f10;
        } finally {
        }
    }

    public static void b(boolean z10) {
    }

    private final C0580a f(int i9) throws IOException {
        C0580a c0580a;
        p.i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (!this.f55339c) {
                synchronized (this.f55340d) {
                    c cVar = this.f55341e;
                    if (cVar == null || !cVar.f55350d) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    d(false);
                    if (!this.f55339c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                } catch (Exception e10) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e10);
                }
            }
            p.j(this.f55337a);
            p.j(this.f55338b);
            try {
                c0580a = new C0580a(this.f55338b.E(), this.f55338b.o(true));
            } catch (RemoteException e11) {
                Log.i("AdvertisingIdClient", "GMS remote exception ", e11);
                throw new IOException("Remote exception");
            }
        }
        g();
        return c0580a;
    }

    private final void g() {
        synchronized (this.f55340d) {
            c cVar = this.f55341e;
            if (cVar != null) {
                cVar.f55349c.countDown();
                try {
                    this.f55341e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j10 = this.f55343g;
            if (j10 > 0) {
                this.f55341e = new c(this, j10);
            }
        }
    }

    public final void c() {
        p.i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f55342f == null || this.f55337a == null) {
                return;
            }
            if (this.f55339c) {
                d4.a.b().c(this.f55342f, this.f55337a);
            }
            this.f55339c = false;
            this.f55338b = null;
            this.f55337a = null;
        }
    }

    protected final void d(boolean z10) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        p.i("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f55339c) {
                c();
            }
            Context context = this.f55342f;
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                int h10 = com.google.android.gms.common.b.f().h(context, com.google.android.gms.common.d.f7626a);
                if (h10 != 0 && h10 != 2) {
                    throw new IOException("Google Play services not available");
                }
                u3.a aVar = new u3.a();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (d4.a.b().a(context, intent, aVar, 1)) {
                    this.f55337a = aVar;
                    try {
                        this.f55338b = e.b(aVar.a(10000L, TimeUnit.MILLISECONDS));
                        this.f55339c = true;
                        if (z10) {
                            g();
                        }
                    } catch (InterruptedException unused) {
                        throw new IOException("Interrupted exception");
                    } catch (Throwable th2) {
                        throw new IOException(th2);
                    }
                } else {
                    throw new IOException("Connection failure");
                }
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new GooglePlayServicesNotAvailableException(9);
            }
        }
    }

    final boolean e(@Nullable C0580a c0580a, boolean z10, float f10, long j10, String str, @Nullable Throwable th2) {
        if (Math.random() <= 0.0d) {
            HashMap hashMap = new HashMap();
            hashMap.put("app_context", "1");
            if (c0580a != null) {
                hashMap.put("limit_ad_tracking", true != c0580a.b() ? "0" : "1");
                String a10 = c0580a.a();
                if (a10 != null) {
                    hashMap.put("ad_id_size", Integer.toString(a10.length()));
                }
            }
            if (th2 != null) {
                hashMap.put("error", th2.getClass().getName());
            }
            hashMap.put("tag", "AdvertisingIdClient");
            hashMap.put("time_spent", Long.toString(j10));
            new b(this, hashMap).start();
            return true;
        }
        return false;
    }

    protected final void finalize() throws Throwable {
        c();
        super.finalize();
    }
}
