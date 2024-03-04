package com.google.firebase;

import a6.o;
import a6.u;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import com.google.android.gms.common.api.internal.a;
import com.google.android.gms.common.internal.p;
import com.google.firebase.components.ComponentDiscoveryService;
import com.google.firebase.components.ComponentRegistrar;
import e4.m;
import e4.n;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public class d {

    /* renamed from: k  reason: collision with root package name */
    private static final Object f13821k = new Object();

    /* renamed from: l  reason: collision with root package name */
    private static final Executor f13822l = new ExecutorC0133d();
    @GuardedBy("LOCK")

    /* renamed from: m  reason: collision with root package name */
    static final Map<String, d> f13823m = new ArrayMap();

    /* renamed from: a  reason: collision with root package name */
    private final Context f13824a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13825b;

    /* renamed from: c  reason: collision with root package name */
    private final i f13826c;

    /* renamed from: d  reason: collision with root package name */
    private final o f13827d;

    /* renamed from: g  reason: collision with root package name */
    private final u<p6.a> f13830g;

    /* renamed from: h  reason: collision with root package name */
    private final k6.b<com.google.firebase.heartbeatinfo.a> f13831h;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f13828e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    private final AtomicBoolean f13829f = new AtomicBoolean();

    /* renamed from: i  reason: collision with root package name */
    private final List<b> f13832i = new CopyOnWriteArrayList();

    /* renamed from: j  reason: collision with root package name */
    private final List<Object> f13833j = new CopyOnWriteArrayList();

    /* loaded from: classes2.dex */
    public interface b {
        void a(boolean z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c implements a.InterfaceC0086a {

        /* renamed from: a  reason: collision with root package name */
        private static AtomicReference<c> f13834a = new AtomicReference<>();

        private c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void c(Context context) {
            if (m.a() && (context.getApplicationContext() instanceof Application)) {
                Application application = (Application) context.getApplicationContext();
                if (f13834a.get() == null) {
                    c cVar = new c();
                    if (f13834a.compareAndSet(null, cVar)) {
                        com.google.android.gms.common.api.internal.a.c(application);
                        com.google.android.gms.common.api.internal.a.b().a(cVar);
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.internal.a.InterfaceC0086a
        public void a(boolean z10) {
            synchronized (d.f13821k) {
                Iterator it = new ArrayList(d.f13823m.values()).iterator();
                while (it.hasNext()) {
                    d dVar = (d) it.next();
                    if (dVar.f13828e.get()) {
                        dVar.z(z10);
                    }
                }
            }
        }
    }

    /* renamed from: com.google.firebase.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class ExecutorC0133d implements Executor {

        /* renamed from: a  reason: collision with root package name */
        private static final Handler f13835a = new Handler(Looper.getMainLooper());

        private ExecutorC0133d() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            f13835a.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class e extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        private static AtomicReference<e> f13836b = new AtomicReference<>();

        /* renamed from: a  reason: collision with root package name */
        private final Context f13837a;

        public e(Context context) {
            this.f13837a = context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Context context) {
            if (f13836b.get() == null) {
                e eVar = new e(context);
                if (f13836b.compareAndSet(null, eVar)) {
                    context.registerReceiver(eVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }

        public void c() {
            this.f13837a.unregisterReceiver(this);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            synchronized (d.f13821k) {
                for (d dVar : d.f13823m.values()) {
                    dVar.q();
                }
            }
            c();
        }
    }

    protected d(final Context context, String str, i iVar) {
        this.f13824a = (Context) p.j(context);
        this.f13825b = p.f(str);
        this.f13826c = (i) p.j(iVar);
        t6.c.b("Firebase");
        t6.c.b("ComponentDiscovery");
        List<k6.b<ComponentRegistrar>> b10 = a6.g.c(context, ComponentDiscoveryService.class).b();
        t6.c.a();
        t6.c.b("Runtime");
        o e10 = o.d(f13822l).d(b10).c(new FirebaseCommonRegistrar()).b(a6.d.q(context, Context.class, new Class[0])).b(a6.d.q(this, d.class, new Class[0])).b(a6.d.q(iVar, i.class, new Class[0])).g(new t6.b()).e();
        this.f13827d = e10;
        t6.c.a();
        this.f13830g = new u<>(new k6.b() { // from class: com.google.firebase.c
            @Override // k6.b
            public final Object get() {
                p6.a w6;
                w6 = d.this.w(context);
                return w6;
            }
        });
        this.f13831h = e10.l(com.google.firebase.heartbeatinfo.a.class);
        g(new b() { // from class: com.google.firebase.b
            @Override // com.google.firebase.d.b
            public final void a(boolean z10) {
                d.this.x(z10);
            }
        });
        t6.c.a();
    }

    private void h() {
        p.o(!this.f13829f.get(), "FirebaseApp was deleted");
    }

    private static List<String> j() {
        ArrayList arrayList = new ArrayList();
        synchronized (f13821k) {
            for (d dVar : f13823m.values()) {
                arrayList.add(dVar.n());
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @NonNull
    public static d l() {
        d dVar;
        synchronized (f13821k) {
            dVar = f13823m.get("[DEFAULT]");
            if (dVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + n.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return dVar;
    }

    @NonNull
    public static d m(@NonNull String str) {
        d dVar;
        List<String> j10;
        String str2;
        synchronized (f13821k) {
            dVar = f13823m.get(y(str));
            if (dVar != null) {
                dVar.f13831h.get().n();
            } else {
                if (j().isEmpty()) {
                    str2 = "";
                } else {
                    str2 = "Available app names: " + TextUtils.join(", ", j10);
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", str, str2));
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        if (!UserManagerCompat.isUserUnlocked(this.f13824a)) {
            Log.i("FirebaseApp", "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app " + n());
            e.b(this.f13824a);
            return;
        }
        Log.i("FirebaseApp", "Device unlocked: initializing all Firebase APIs for app " + n());
        this.f13827d.g(v());
        this.f13831h.get().n();
    }

    @Nullable
    public static d r(@NonNull Context context) {
        synchronized (f13821k) {
            if (f13823m.containsKey("[DEFAULT]")) {
                return l();
            }
            i a10 = i.a(context);
            if (a10 == null) {
                Log.w("FirebaseApp", "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project.");
                return null;
            }
            return s(context, a10);
        }
    }

    @NonNull
    public static d s(@NonNull Context context, @NonNull i iVar) {
        return t(context, iVar, "[DEFAULT]");
    }

    @NonNull
    public static d t(@NonNull Context context, @NonNull i iVar, @NonNull String str) {
        d dVar;
        c.c(context);
        String y10 = y(str);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f13821k) {
            Map<String, d> map = f13823m;
            boolean z10 = !map.containsKey(y10);
            p.o(z10, "FirebaseApp name " + y10 + " already exists!");
            p.k(context, "Application context cannot be null.");
            dVar = new d(context, y10, iVar);
            map.put(y10, dVar);
        }
        dVar.q();
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ p6.a w(Context context) {
        return new p6.a(context, p(), (h6.c) this.f13827d.i(h6.c.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(boolean z10) {
        if (z10) {
            return;
        }
        this.f13831h.get().n();
    }

    private static String y(@NonNull String str) {
        return str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(boolean z10) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        for (b bVar : this.f13832i) {
            bVar.a(z10);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f13825b.equals(((d) obj).n());
        }
        return false;
    }

    public void g(b bVar) {
        h();
        if (this.f13828e.get() && com.google.android.gms.common.api.internal.a.b().d()) {
            bVar.a(true);
        }
        this.f13832i.add(bVar);
    }

    public int hashCode() {
        return this.f13825b.hashCode();
    }

    public <T> T i(Class<T> cls) {
        h();
        return (T) this.f13827d.i(cls);
    }

    @NonNull
    public Context k() {
        h();
        return this.f13824a;
    }

    @NonNull
    public String n() {
        h();
        return this.f13825b;
    }

    @NonNull
    public i o() {
        h();
        return this.f13826c;
    }

    public String p() {
        return e4.c.c(n().getBytes(Charset.defaultCharset())) + "+" + e4.c.c(o().c().getBytes(Charset.defaultCharset()));
    }

    public String toString() {
        return com.google.android.gms.common.internal.n.d(this).a("name", this.f13825b).a("options", this.f13826c).toString();
    }

    public boolean u() {
        h();
        return this.f13830g.get().b();
    }

    @VisibleForTesting
    public boolean v() {
        return "[DEFAULT]".equals(n());
    }
}
