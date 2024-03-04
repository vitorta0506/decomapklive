package com.google.firebase.heartbeatinfo;

import a6.d;
import a6.e;
import a6.h;
import a6.r;
import android.content.Context;
import android.util.Base64OutputStream;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.os.UserManagerCompat;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import i6.g;
import i6.i;
import i6.j;
import java.io.ByteArrayOutputStream;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class a implements i, HeartBeatInfo {

    /* renamed from: f  reason: collision with root package name */
    private static final ThreadFactory f13869f = new ThreadFactory() { // from class: i6.e
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread m10;
            m10 = com.google.firebase.heartbeatinfo.a.m(runnable);
            return m10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final k6.b<b> f13870a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f13871b;

    /* renamed from: c  reason: collision with root package name */
    private final k6.b<s6.i> f13872c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<g> f13873d;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f13874e;

    private a(final Context context, final String str, Set<g> set, k6.b<s6.i> bVar) {
        this(new k6.b() { // from class: i6.f
            @Override // k6.b
            public final Object get() {
                com.google.firebase.heartbeatinfo.b k10;
                k10 = com.google.firebase.heartbeatinfo.a.k(context, str);
                return k10;
            }
        }, set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), f13869f), bVar, context);
    }

    @NonNull
    public static d<a> h() {
        return d.d(a.class, i.class, HeartBeatInfo.class).b(r.i(Context.class)).b(r.i(com.google.firebase.d.class)).b(r.k(g.class)).b(r.j(s6.i.class)).f(new h() { // from class: i6.b
            @Override // a6.h
            public final Object a(a6.e eVar) {
                com.google.firebase.heartbeatinfo.a i9;
                i9 = com.google.firebase.heartbeatinfo.a.i(eVar);
                return i9;
            }
        }).d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a i(e eVar) {
        return new a((Context) eVar.i(Context.class), ((com.google.firebase.d) eVar.i(com.google.firebase.d.class)).p(), eVar.k(g.class), eVar.l(s6.i.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String j() throws Exception {
        String byteArrayOutputStream;
        synchronized (this) {
            b bVar = this.f13870a.get();
            List<j> c10 = bVar.c();
            bVar.b();
            JSONArray jSONArray = new JSONArray();
            for (int i9 = 0; i9 < c10.size(); i9++) {
                j jVar = c10.get(i9);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("agent", jVar.c());
                jSONObject.put("dates", new JSONArray((Collection) jVar.b()));
                jSONArray.put(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("heartbeats", jSONArray);
            jSONObject2.put("version", "2");
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            Base64OutputStream base64OutputStream = new Base64OutputStream(byteArrayOutputStream2, 11);
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(base64OutputStream);
            try {
                gZIPOutputStream.write(jSONObject2.toString().getBytes("UTF-8"));
                gZIPOutputStream.close();
                base64OutputStream.close();
                byteArrayOutputStream = byteArrayOutputStream2.toString("UTF-8");
            } catch (Throwable th2) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        return byteArrayOutputStream;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ b k(Context context, String str) {
        return new b(context, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Void l() throws Exception {
        synchronized (this) {
            this.f13870a.get().k(System.currentTimeMillis(), this.f13872c.get().getUserAgent());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread m(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    @Override // i6.i
    public t4.g<String> a() {
        if (!UserManagerCompat.isUserUnlocked(this.f13871b)) {
            return t4.j.e("");
        }
        return t4.j.c(this.f13874e, new Callable() { // from class: i6.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String j10;
                j10 = com.google.firebase.heartbeatinfo.a.this.j();
                return j10;
            }
        });
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    @NonNull
    public synchronized HeartBeatInfo.HeartBeat b(@NonNull String str) {
        long currentTimeMillis = System.currentTimeMillis();
        b bVar = this.f13870a.get();
        if (bVar.i(currentTimeMillis)) {
            bVar.g();
            return HeartBeatInfo.HeartBeat.GLOBAL;
        }
        return HeartBeatInfo.HeartBeat.NONE;
    }

    public t4.g<Void> n() {
        if (this.f13873d.size() <= 0) {
            return t4.j.e(null);
        }
        if (!UserManagerCompat.isUserUnlocked(this.f13871b)) {
            return t4.j.e(null);
        }
        return t4.j.c(this.f13874e, new Callable() { // from class: i6.d
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Void l10;
                l10 = com.google.firebase.heartbeatinfo.a.this.l();
                return l10;
            }
        });
    }

    @VisibleForTesting
    a(k6.b<b> bVar, Set<g> set, Executor executor, k6.b<s6.i> bVar2, Context context) {
        this.f13870a = bVar;
        this.f13873d = set;
        this.f13874e = executor;
        this.f13872c = bVar2;
        this.f13871b = context;
    }
}
