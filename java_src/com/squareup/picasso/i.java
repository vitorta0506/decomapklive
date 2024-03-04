package com.squareup.picasso;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.facebook.internal.ServerProtocol;
import com.squareup.picasso.o;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    final b f29940a;

    /* renamed from: b  reason: collision with root package name */
    final Context f29941b;

    /* renamed from: c  reason: collision with root package name */
    final ExecutorService f29942c;

    /* renamed from: d  reason: collision with root package name */
    final Downloader f29943d;

    /* renamed from: e  reason: collision with root package name */
    final Map<String, com.squareup.picasso.c> f29944e;

    /* renamed from: f  reason: collision with root package name */
    final Map<Object, com.squareup.picasso.a> f29945f;

    /* renamed from: g  reason: collision with root package name */
    final Map<Object, com.squareup.picasso.a> f29946g;

    /* renamed from: h  reason: collision with root package name */
    final Set<Object> f29947h;

    /* renamed from: i  reason: collision with root package name */
    final Handler f29948i;

    /* renamed from: j  reason: collision with root package name */
    final Handler f29949j;

    /* renamed from: k  reason: collision with root package name */
    final d f29950k;

    /* renamed from: l  reason: collision with root package name */
    final w f29951l;

    /* renamed from: m  reason: collision with root package name */
    final List<com.squareup.picasso.c> f29952m;

    /* renamed from: n  reason: collision with root package name */
    final c f29953n;

    /* renamed from: o  reason: collision with root package name */
    final boolean f29954o;

    /* renamed from: p  reason: collision with root package name */
    boolean f29955p;

    /* loaded from: classes4.dex */
    private static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final i f29956a;

        /* renamed from: com.squareup.picasso.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0299a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Message f29957a;

            RunnableC0299a(Message message) {
                this.f29957a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unknown handler message received: " + this.f29957a.what);
            }
        }

        public a(Looper looper, i iVar) {
            super(looper);
            this.f29956a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    this.f29956a.v((com.squareup.picasso.a) message.obj);
                    return;
                case 2:
                    this.f29956a.o((com.squareup.picasso.a) message.obj);
                    return;
                case 3:
                case 8:
                default:
                    Picasso.f29854p.post(new RunnableC0299a(message));
                    return;
                case 4:
                    this.f29956a.p((com.squareup.picasso.c) message.obj);
                    return;
                case 5:
                    this.f29956a.u((com.squareup.picasso.c) message.obj);
                    return;
                case 6:
                    this.f29956a.q((com.squareup.picasso.c) message.obj, false);
                    return;
                case 7:
                    this.f29956a.n();
                    return;
                case 9:
                    this.f29956a.r((NetworkInfo) message.obj);
                    return;
                case 10:
                    this.f29956a.m(message.arg1 == 1);
                    return;
                case 11:
                    this.f29956a.s(message.obj);
                    return;
                case 12:
                    this.f29956a.t(message.obj);
                    return;
            }
        }
    }

    /* loaded from: classes4.dex */
    static class b extends HandlerThread {
        b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    /* loaded from: classes4.dex */
    static class c extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final i f29959a;

        c(i iVar) {
            this.f29959a = iVar;
        }

        void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f29959a.f29954o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f29959a.f29941b.registerReceiver(this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.hasExtra(ServerProtocol.DIALOG_PARAM_STATE)) {
                    this.f29959a.b(intent.getBooleanExtra(ServerProtocol.DIALOG_PARAM_STATE, false));
                }
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                this.f29959a.f(((ConnectivityManager) c0.p(context, "connectivity")).getActiveNetworkInfo());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, ExecutorService executorService, Handler handler, Downloader downloader, d dVar, w wVar) {
        b bVar = new b();
        this.f29940a = bVar;
        bVar.start();
        c0.j(bVar.getLooper());
        this.f29941b = context;
        this.f29942c = executorService;
        this.f29944e = new LinkedHashMap();
        this.f29945f = new WeakHashMap();
        this.f29946g = new WeakHashMap();
        this.f29947h = new HashSet();
        this.f29948i = new a(bVar.getLooper(), this);
        this.f29943d = downloader;
        this.f29949j = handler;
        this.f29950k = dVar;
        this.f29951l = wVar;
        this.f29952m = new ArrayList(4);
        this.f29955p = c0.r(context);
        this.f29954o = c0.q(context, "android.permission.ACCESS_NETWORK_STATE");
        c cVar = new c(this);
        this.f29953n = cVar;
        cVar.a();
    }

    private void a(com.squareup.picasso.c cVar) {
        if (cVar.u()) {
            return;
        }
        this.f29952m.add(cVar);
        if (this.f29948i.hasMessages(7)) {
            return;
        }
        this.f29948i.sendEmptyMessageDelayed(7, 200L);
    }

    private void i() {
        if (this.f29945f.isEmpty()) {
            return;
        }
        Iterator<com.squareup.picasso.a> it = this.f29945f.values().iterator();
        while (it.hasNext()) {
            com.squareup.picasso.a next = it.next();
            it.remove();
            if (next.g().f29869n) {
                c0.u("Dispatcher", "replaying", next.i().d());
            }
            w(next, false);
        }
    }

    private void j(List<com.squareup.picasso.c> list) {
        if (list == null || list.isEmpty() || !list.get(0).q().f29869n) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (com.squareup.picasso.c cVar : list) {
            if (sb2.length() > 0) {
                sb2.append(", ");
            }
            sb2.append(c0.l(cVar));
        }
        c0.u("Dispatcher", "delivered", sb2.toString());
    }

    private void k(com.squareup.picasso.a aVar) {
        Object k10 = aVar.k();
        if (k10 != null) {
            aVar.f29896k = true;
            this.f29945f.put(k10, aVar);
        }
    }

    private void l(com.squareup.picasso.c cVar) {
        com.squareup.picasso.a j10 = cVar.j();
        if (j10 != null) {
            k(j10);
        }
        List<com.squareup.picasso.a> k10 = cVar.k();
        if (k10 != null) {
            int size = k10.size();
            for (int i9 = 0; i9 < size; i9++) {
                k(k10.get(i9));
            }
        }
    }

    void b(boolean z10) {
        Handler handler = this.f29948i;
        handler.sendMessage(handler.obtainMessage(10, z10 ? 1 : 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(com.squareup.picasso.a aVar) {
        Handler handler = this.f29948i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(com.squareup.picasso.c cVar) {
        Handler handler = this.f29948i;
        handler.sendMessage(handler.obtainMessage(4, cVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(com.squareup.picasso.c cVar) {
        Handler handler = this.f29948i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    void f(NetworkInfo networkInfo) {
        Handler handler = this.f29948i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(com.squareup.picasso.c cVar) {
        Handler handler = this.f29948i;
        handler.sendMessageDelayed(handler.obtainMessage(5, cVar), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(com.squareup.picasso.a aVar) {
        Handler handler = this.f29948i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    void m(boolean z10) {
        this.f29955p = z10;
    }

    void n() {
        ArrayList arrayList = new ArrayList(this.f29952m);
        this.f29952m.clear();
        Handler handler = this.f29949j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        j(arrayList);
    }

    void o(com.squareup.picasso.a aVar) {
        String d10 = aVar.d();
        com.squareup.picasso.c cVar = this.f29944e.get(d10);
        if (cVar != null) {
            cVar.h(aVar);
            if (cVar.d()) {
                this.f29944e.remove(d10);
                if (aVar.g().f29869n) {
                    c0.u("Dispatcher", "canceled", aVar.i().d());
                }
            }
        }
        if (this.f29947h.contains(aVar.j())) {
            this.f29946g.remove(aVar.k());
            if (aVar.g().f29869n) {
                c0.v("Dispatcher", "canceled", aVar.i().d(), "because paused request got canceled");
            }
        }
        com.squareup.picasso.a remove = this.f29945f.remove(aVar.k());
        if (remove == null || !remove.g().f29869n) {
            return;
        }
        c0.v("Dispatcher", "canceled", remove.i().d(), "from replaying");
    }

    void p(com.squareup.picasso.c cVar) {
        if (MemoryPolicy.shouldWriteToMemoryCache(cVar.p())) {
            this.f29950k.b(cVar.n(), cVar.s());
        }
        this.f29944e.remove(cVar.n());
        a(cVar);
        if (cVar.q().f29869n) {
            c0.v("Dispatcher", "batched", c0.l(cVar), "for completion");
        }
    }

    void q(com.squareup.picasso.c cVar, boolean z10) {
        if (cVar.q().f29869n) {
            String l10 = c0.l(cVar);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("for error");
            sb2.append(z10 ? " (will replay)" : "");
            c0.v("Dispatcher", "batched", l10, sb2.toString());
        }
        this.f29944e.remove(cVar.n());
        a(cVar);
    }

    void r(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f29942c;
        if (executorService instanceof r) {
            ((r) executorService).a(networkInfo);
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            return;
        }
        i();
    }

    void s(Object obj) {
        if (this.f29947h.add(obj)) {
            Iterator<com.squareup.picasso.c> it = this.f29944e.values().iterator();
            while (it.hasNext()) {
                com.squareup.picasso.c next = it.next();
                boolean z10 = next.q().f29869n;
                com.squareup.picasso.a j10 = next.j();
                List<com.squareup.picasso.a> k10 = next.k();
                boolean z11 = (k10 == null || k10.isEmpty()) ? false : true;
                if (j10 != null || z11) {
                    if (j10 != null && j10.j().equals(obj)) {
                        next.h(j10);
                        this.f29946g.put(j10.k(), j10);
                        if (z10) {
                            c0.v("Dispatcher", "paused", j10.f29887b.d(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z11) {
                        for (int size = k10.size() - 1; size >= 0; size--) {
                            com.squareup.picasso.a aVar = k10.get(size);
                            if (aVar.j().equals(obj)) {
                                next.h(aVar);
                                this.f29946g.put(aVar.k(), aVar);
                                if (z10) {
                                    c0.v("Dispatcher", "paused", aVar.f29887b.d(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.d()) {
                        it.remove();
                        if (z10) {
                            c0.v("Dispatcher", "canceled", c0.l(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    void t(Object obj) {
        if (this.f29947h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<com.squareup.picasso.a> it = this.f29946g.values().iterator();
            while (it.hasNext()) {
                com.squareup.picasso.a next = it.next();
                if (next.j().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                Handler handler = this.f29949j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    void u(com.squareup.picasso.c cVar) {
        if (cVar.u()) {
            return;
        }
        boolean z10 = false;
        if (this.f29942c.isShutdown()) {
            q(cVar, false);
            return;
        }
        NetworkInfo activeNetworkInfo = this.f29954o ? ((ConnectivityManager) c0.p(this.f29941b, "connectivity")).getActiveNetworkInfo() : null;
        boolean z11 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean w6 = cVar.w(this.f29955p, activeNetworkInfo);
        boolean x10 = cVar.x();
        if (!w6) {
            if (this.f29954o && x10) {
                z10 = true;
            }
            q(cVar, z10);
            if (z10) {
                l(cVar);
            }
        } else if (this.f29954o && !z11) {
            q(cVar, x10);
            if (x10) {
                l(cVar);
            }
        } else {
            if (cVar.q().f29869n) {
                c0.u("Dispatcher", "retrying", c0.l(cVar));
            }
            if (cVar.m() instanceof o.a) {
                cVar.f29917i |= NetworkPolicy.NO_CACHE.index;
            }
            cVar.f29922n = this.f29942c.submit(cVar);
        }
    }

    void v(com.squareup.picasso.a aVar) {
        w(aVar, true);
    }

    void w(com.squareup.picasso.a aVar, boolean z10) {
        if (this.f29947h.contains(aVar.j())) {
            this.f29946g.put(aVar.k(), aVar);
            if (aVar.g().f29869n) {
                String d10 = aVar.f29887b.d();
                c0.v("Dispatcher", "paused", d10, "because tag '" + aVar.j() + "' is paused");
                return;
            }
            return;
        }
        com.squareup.picasso.c cVar = this.f29944e.get(aVar.d());
        if (cVar != null) {
            cVar.c(aVar);
        } else if (this.f29942c.isShutdown()) {
            if (aVar.g().f29869n) {
                c0.v("Dispatcher", "ignored", aVar.f29887b.d(), "because shut down");
            }
        } else {
            com.squareup.picasso.c i9 = com.squareup.picasso.c.i(aVar.g(), this, this.f29950k, this.f29951l, aVar);
            i9.f29922n = this.f29942c.submit(i9);
            this.f29944e.put(aVar.d(), i9);
            if (z10) {
                this.f29945f.remove(aVar.k());
            }
            if (aVar.g().f29869n) {
                c0.u("Dispatcher", "enqueued", aVar.f29887b.d());
            }
        }
    }
}
