package p0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import p0.a;
import v0.e;
/* loaded from: classes.dex */
final class j {

    /* renamed from: d  reason: collision with root package name */
    private static volatile j f56704d;

    /* renamed from: a  reason: collision with root package name */
    private final c f56705a;
    @GuardedBy("this")

    /* renamed from: b  reason: collision with root package name */
    final Set<a.InterfaceC0611a> f56706b = new HashSet();
    @GuardedBy("this")

    /* renamed from: c  reason: collision with root package name */
    private boolean f56707c;

    /* loaded from: classes.dex */
    class a implements e.b<ConnectivityManager> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f56708a;

        a(Context context) {
            this.f56708a = context;
        }

        @Override // v0.e.b
        /* renamed from: a */
        public ConnectivityManager get() {
            return (ConnectivityManager) this.f56708a.getSystemService("connectivity");
        }
    }

    /* loaded from: classes.dex */
    class b implements a.InterfaceC0611a {
        b() {
        }

        @Override // p0.a.InterfaceC0611a
        public void a(boolean z10) {
            ArrayList<a.InterfaceC0611a> arrayList;
            synchronized (j.this) {
                arrayList = new ArrayList(j.this.f56706b);
            }
            for (a.InterfaceC0611a interfaceC0611a : arrayList) {
                interfaceC0611a.a(z10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        void a();

        boolean b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static final class d implements c {

        /* renamed from: a  reason: collision with root package name */
        boolean f56711a;

        /* renamed from: b  reason: collision with root package name */
        final a.InterfaceC0611a f56712b;

        /* renamed from: c  reason: collision with root package name */
        private final e.b<ConnectivityManager> f56713c;

        /* renamed from: d  reason: collision with root package name */
        private final ConnectivityManager.NetworkCallback f56714d = new a();

        /* loaded from: classes.dex */
        class a extends ConnectivityManager.NetworkCallback {

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: p0.j$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public class RunnableC0612a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ boolean f56716a;

                RunnableC0612a(boolean z10) {
                    this.f56716a = z10;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(this.f56716a);
                }
            }

            a() {
            }

            private void b(boolean z10) {
                v0.k.v(new RunnableC0612a(z10));
            }

            void a(boolean z10) {
                v0.k.b();
                d dVar = d.this;
                boolean z11 = dVar.f56711a;
                dVar.f56711a = z10;
                if (z11 != z10) {
                    dVar.f56712b.a(z10);
                }
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(@NonNull Network network) {
                b(true);
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(@NonNull Network network) {
                b(false);
            }
        }

        d(e.b<ConnectivityManager> bVar, a.InterfaceC0611a interfaceC0611a) {
            this.f56713c = bVar;
            this.f56712b = interfaceC0611a;
        }

        @Override // p0.j.c
        public void a() {
            this.f56713c.get().unregisterNetworkCallback(this.f56714d);
        }

        @Override // p0.j.c
        public boolean b() {
            this.f56711a = this.f56713c.get().getActiveNetwork() != null;
            try {
                this.f56713c.get().registerDefaultNetworkCallback(this.f56714d);
                return true;
            } catch (RuntimeException e10) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to register callback", e10);
                }
                return false;
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class e implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Context f56718a;

        /* renamed from: b  reason: collision with root package name */
        final a.InterfaceC0611a f56719b;

        /* renamed from: c  reason: collision with root package name */
        private final e.b<ConnectivityManager> f56720c;

        /* renamed from: d  reason: collision with root package name */
        boolean f56721d;

        /* renamed from: e  reason: collision with root package name */
        private final BroadcastReceiver f56722e = new a();

        /* loaded from: classes.dex */
        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(@NonNull Context context, Intent intent) {
                e eVar = e.this;
                boolean z10 = eVar.f56721d;
                eVar.f56721d = eVar.c();
                if (z10 != e.this.f56721d) {
                    if (Log.isLoggable("ConnectivityMonitor", 3)) {
                        Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + e.this.f56721d);
                    }
                    e eVar2 = e.this;
                    eVar2.f56719b.a(eVar2.f56721d);
                }
            }
        }

        e(Context context, e.b<ConnectivityManager> bVar, a.InterfaceC0611a interfaceC0611a) {
            this.f56718a = context.getApplicationContext();
            this.f56720c = bVar;
            this.f56719b = interfaceC0611a;
        }

        @Override // p0.j.c
        public void a() {
            this.f56718a.unregisterReceiver(this.f56722e);
        }

        @Override // p0.j.c
        public boolean b() {
            this.f56721d = c();
            try {
                this.f56718a.registerReceiver(this.f56722e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                return true;
            } catch (SecurityException e10) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to register", e10);
                    return false;
                }
                return false;
            }
        }

        boolean c() {
            try {
                NetworkInfo activeNetworkInfo = this.f56720c.get().getActiveNetworkInfo();
                return activeNetworkInfo != null && activeNetworkInfo.isConnected();
            } catch (RuntimeException e10) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e10);
                }
                return true;
            }
        }
    }

    private j(@NonNull Context context) {
        c eVar;
        e.b a10 = v0.e.a(new a(context));
        b bVar = new b();
        if (Build.VERSION.SDK_INT >= 24) {
            eVar = new d(a10, bVar);
        } else {
            eVar = new e(context, a10, bVar);
        }
        this.f56705a = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(@NonNull Context context) {
        if (f56704d == null) {
            synchronized (j.class) {
                if (f56704d == null) {
                    f56704d = new j(context.getApplicationContext());
                }
            }
        }
        return f56704d;
    }

    @GuardedBy("this")
    private void b() {
        if (this.f56707c || this.f56706b.isEmpty()) {
            return;
        }
        this.f56707c = this.f56705a.b();
    }

    @GuardedBy("this")
    private void c() {
        if (this.f56707c && this.f56706b.isEmpty()) {
            this.f56705a.a();
            this.f56707c = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void d(a.InterfaceC0611a interfaceC0611a) {
        this.f56706b.add(interfaceC0611a);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void e(a.InterfaceC0611a interfaceC0611a) {
        this.f56706b.remove(interfaceC0611a);
        c();
    }
}
