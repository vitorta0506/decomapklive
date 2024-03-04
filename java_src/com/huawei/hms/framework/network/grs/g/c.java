package com.huawei.hms.framework.network.grs.g;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.huawei.hms.framework.network.grs.h.d;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
/* loaded from: classes4.dex */
public class c {

    /* renamed from: n  reason: collision with root package name */
    private static final String f27359n = "c";

    /* renamed from: a  reason: collision with root package name */
    private final GrsBaseInfo f27360a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f27361b;

    /* renamed from: c  reason: collision with root package name */
    private final com.huawei.hms.framework.network.grs.e.a f27362c;

    /* renamed from: d  reason: collision with root package name */
    private d f27363d;

    /* renamed from: j  reason: collision with root package name */
    private final com.huawei.hms.framework.network.grs.g.k.c f27369j;

    /* renamed from: k  reason: collision with root package name */
    private com.huawei.hms.framework.network.grs.g.k.d f27370k;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Future<d>> f27364e = new ConcurrentHashMap(16);

    /* renamed from: f  reason: collision with root package name */
    private final List<d> f27365f = new CopyOnWriteArrayList();

    /* renamed from: g  reason: collision with root package name */
    private final JSONArray f27366g = new JSONArray();

    /* renamed from: h  reason: collision with root package name */
    private final List<String> f27367h = new CopyOnWriteArrayList();

    /* renamed from: i  reason: collision with root package name */
    private final List<String> f27368i = new CopyOnWriteArrayList();

    /* renamed from: l  reason: collision with root package name */
    private String f27371l = "";

    /* renamed from: m  reason: collision with root package name */
    private long f27372m = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Callable<d> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ExecutorService f27373a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27374b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.huawei.hms.framework.network.grs.e.c f27375c;

        a(ExecutorService executorService, String str, com.huawei.hms.framework.network.grs.e.c cVar) {
            this.f27373a = executorService;
            this.f27374b = str;
            this.f27375c = cVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public d call() {
            return c.this.b(this.f27373a, this.f27374b, this.f27375c);
        }
    }

    public c(com.huawei.hms.framework.network.grs.g.k.c cVar, com.huawei.hms.framework.network.grs.e.a aVar) {
        this.f27369j = cVar;
        this.f27360a = cVar.b();
        this.f27361b = cVar.a();
        this.f27362c = aVar;
        c();
        d();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009d A[LOOP:0: B:3:0x0006->B:33:0x009d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0095 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.huawei.hms.framework.network.grs.g.d a(java.util.concurrent.ExecutorService r17, java.util.List<java.lang.String> r18, java.lang.String r19, com.huawei.hms.framework.network.grs.e.c r20) {
        /*
            r16 = this;
            r9 = r16
            r10 = 0
            r0 = 0
            r11 = r0
            r12 = 0
        L6:
            int r0 = r18.size()
            if (r12 >= r0) goto La1
            r13 = r18
            java.lang.Object r0 = r13.get(r12)
            java.lang.String r0 = (java.lang.String) r0
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            r14 = 1
            if (r1 != 0) goto L90
            com.huawei.hms.framework.network.grs.g.a r15 = new com.huawei.hms.framework.network.grs.g.a
            android.content.Context r5 = r9.f27361b
            com.huawei.hms.framework.network.grs.GrsBaseInfo r7 = r9.f27360a
            r1 = r15
            r2 = r0
            r3 = r12
            r4 = r16
            r6 = r19
            r8 = r20
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            java.util.concurrent.Callable r1 = r15.g()
            r2 = r17
            java.util.concurrent.Future r1 = r2.submit(r1)
            java.util.Map<java.lang.String, java.util.concurrent.Future<com.huawei.hms.framework.network.grs.g.d>> r3 = r9.f27364e
            r3.put(r0, r1)
            long r3 = r9.f27372m     // Catch: java.util.concurrent.TimeoutException -> L6a java.lang.InterruptedException -> L73 java.util.concurrent.ExecutionException -> L7d java.util.concurrent.CancellationException -> L87
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.util.concurrent.TimeoutException -> L6a java.lang.InterruptedException -> L73 java.util.concurrent.ExecutionException -> L7d java.util.concurrent.CancellationException -> L87
            java.lang.Object r0 = r1.get(r3, r0)     // Catch: java.util.concurrent.TimeoutException -> L6a java.lang.InterruptedException -> L73 java.util.concurrent.ExecutionException -> L7d java.util.concurrent.CancellationException -> L87
            r1 = r0
            com.huawei.hms.framework.network.grs.g.d r1 = (com.huawei.hms.framework.network.grs.g.d) r1     // Catch: java.util.concurrent.TimeoutException -> L6a java.lang.InterruptedException -> L73 java.util.concurrent.ExecutionException -> L7d java.util.concurrent.CancellationException -> L87
            if (r1 == 0) goto L68
            boolean r0 = r1.o()     // Catch: java.util.concurrent.TimeoutException -> L5e java.lang.InterruptedException -> L60 java.util.concurrent.ExecutionException -> L63 java.util.concurrent.CancellationException -> L66
            if (r0 != 0) goto L55
            boolean r0 = r1.m()     // Catch: java.util.concurrent.TimeoutException -> L5e java.lang.InterruptedException -> L60 java.util.concurrent.ExecutionException -> L63 java.util.concurrent.CancellationException -> L66
            if (r0 == 0) goto L68
        L55:
            java.lang.String r0 = com.huawei.hms.framework.network.grs.g.c.f27359n     // Catch: java.util.concurrent.TimeoutException -> L5e java.lang.InterruptedException -> L60 java.util.concurrent.ExecutionException -> L63 java.util.concurrent.CancellationException -> L66
            java.lang.String r3 = "grs request return body is not null and is OK."
            com.huawei.hms.framework.common.Logger.i(r0, r3)     // Catch: java.util.concurrent.TimeoutException -> L5e java.lang.InterruptedException -> L60 java.util.concurrent.ExecutionException -> L63 java.util.concurrent.CancellationException -> L66
            r11 = r1
            goto L93
        L5e:
            r11 = r1
            goto L6a
        L60:
            r0 = move-exception
            r11 = r1
            goto L74
        L63:
            r0 = move-exception
            r11 = r1
            goto L7e
        L66:
            r11 = r1
            goto L87
        L68:
            r11 = r1
            goto L92
        L6a:
            java.lang.String r0 = com.huawei.hms.framework.network.grs.g.c.f27359n
            java.lang.String r1 = "the wait timed out"
            com.huawei.hms.framework.common.Logger.w(r0, r1)
            goto L92
        L73:
            r0 = move-exception
        L74:
            java.lang.String r1 = com.huawei.hms.framework.network.grs.g.c.f27359n
            java.lang.String r3 = "the current thread was interrupted while waiting"
            com.huawei.hms.framework.common.Logger.w(r1, r3, r0)
            goto L93
        L7d:
            r0 = move-exception
        L7e:
            java.lang.String r1 = com.huawei.hms.framework.network.grs.g.c.f27359n
            java.lang.String r3 = "the computation threw an ExecutionException"
            com.huawei.hms.framework.common.Logger.w(r1, r3, r0)
            goto L92
        L87:
            java.lang.String r0 = com.huawei.hms.framework.network.grs.g.c.f27359n
            java.lang.String r1 = "{requestServer} the computation was cancelled"
            com.huawei.hms.framework.common.Logger.i(r0, r1)
            goto L93
        L90:
            r2 = r17
        L92:
            r14 = 0
        L93:
            if (r14 == 0) goto L9d
            java.lang.String r0 = com.huawei.hms.framework.network.grs.g.c.f27359n
            java.lang.String r1 = "needBreak is true so need break current circulation"
            com.huawei.hms.framework.common.Logger.v(r0, r1)
            goto La1
        L9d:
            int r12 = r12 + 1
            goto L6
        La1:
            com.huawei.hms.framework.network.grs.g.d r0 = r9.b(r11)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.framework.network.grs.g.c.a(java.util.concurrent.ExecutorService, java.util.List, java.lang.String, com.huawei.hms.framework.network.grs.e.c):com.huawei.hms.framework.network.grs.g.d");
    }

    private void a(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        sb2.append(str);
        String grsReqParamJoint = this.f27360a.getGrsReqParamJoint(false, false, e(), this.f27361b);
        if (!TextUtils.isEmpty(grsReqParamJoint)) {
            sb2.append("?");
            sb2.append(grsReqParamJoint);
        }
        this.f27368i.add(sb2.toString());
    }

    private d b(d dVar) {
        String str;
        String str2;
        for (Map.Entry<String, Future<d>> entry : this.f27364e.entrySet()) {
            if (dVar != null && (dVar.o() || dVar.m())) {
                break;
            }
            try {
                dVar = entry.getValue().get(40000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e10) {
                e = e10;
                str = f27359n;
                str2 = "{checkResponse} when check result, find InterruptedException, check others";
                Logger.w(str, str2, e);
            } catch (CancellationException unused) {
                Logger.i(f27359n, "{checkResponse} when check result, find CancellationException, check others");
            } catch (ExecutionException e11) {
                e = e11;
                str = f27359n;
                str2 = "{checkResponse} when check result, find ExecutionException, check others";
                Logger.w(str, str2, e);
            } catch (TimeoutException unused2) {
                Logger.w(f27359n, "{checkResponse} when check result, find TimeoutException, cancel current request task");
                if (!entry.getValue().isCancelled()) {
                    entry.getValue().cancel(true);
                }
            }
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d b(ExecutorService executorService, String str, com.huawei.hms.framework.network.grs.e.c cVar) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        d a10 = a(executorService, this.f27368i, str, cVar);
        int b10 = a10 == null ? 0 : a10.b();
        String str2 = f27359n;
        Logger.v(str2, "use 2.0 interface return http's code is：{%s}", Integer.valueOf(b10));
        if (b10 == 404 || b10 == 401) {
            if (TextUtils.isEmpty(e()) && TextUtils.isEmpty(this.f27360a.getAppName())) {
                Logger.i(str2, "request grs server use 1.0 API must set appName,please check.");
                return null;
            }
            this.f27364e.clear();
            Logger.i(str2, "this env has not deploy new interface,so use old interface.");
            a10 = a(executorService, this.f27367h, str, cVar);
        }
        e.a(new ArrayList(this.f27365f), SystemClock.elapsedRealtime() - elapsedRealtime, this.f27366g, this.f27361b);
        this.f27365f.clear();
        return a10;
    }

    private void b(String str, String str2) {
        if (TextUtils.isEmpty(this.f27360a.getAppName()) && TextUtils.isEmpty(e())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[1];
        objArr[0] = TextUtils.isEmpty(e()) ? this.f27360a.getAppName() : e();
        sb2.append(String.format(locale, str, objArr));
        String grsReqParamJoint = this.f27360a.getGrsReqParamJoint(false, false, "1.0", this.f27361b);
        if (!TextUtils.isEmpty(grsReqParamJoint)) {
            sb2.append("?");
            sb2.append(grsReqParamJoint);
        }
        this.f27367h.add(sb2.toString());
    }

    private void c() {
        com.huawei.hms.framework.network.grs.g.k.d a10 = com.huawei.hms.framework.network.grs.g.j.a.a(this.f27361b);
        if (a10 == null) {
            Logger.w(f27359n, "g*s***_se****er_conf*** maybe has a big error");
            return;
        }
        a(a10);
        List<String> a11 = a10.a();
        if (a11 == null || a11.size() <= 0) {
            Logger.v(f27359n, "maybe grs_base_url config with [],please check.");
        } else if (a11.size() > 10) {
            throw new IllegalArgumentException("grs_base_url's count is larger than MAX value 10");
        } else {
            String c10 = a10.c();
            String b10 = a10.b();
            if (a11.size() > 0) {
                for (String str : a11) {
                    if (str.startsWith("https://")) {
                        b(c10, str);
                        a(b10, str);
                    } else {
                        Logger.w(f27359n, "grs server just support https scheme url,please check.");
                    }
                }
            }
            Logger.v(f27359n, "request to GRS server url is{%s} and {%s}", this.f27367h, this.f27368i);
        }
    }

    private void d() {
        String grsParasKey = this.f27360a.getGrsParasKey(true, true, this.f27361b);
        com.huawei.hms.framework.network.grs.e.c a10 = this.f27362c.a();
        this.f27371l = a10.a(grsParasKey + "ETag", "");
    }

    private String e() {
        com.huawei.hms.framework.network.grs.f.b a10 = com.huawei.hms.framework.network.grs.f.b.a(this.f27361b.getPackageName(), this.f27360a);
        com.huawei.hms.framework.network.grs.local.model.a a11 = a10 != null ? a10.a() : null;
        if (a11 != null) {
            String b10 = a11.b();
            Logger.v(f27359n, "get appName from local assets is{%s}", b10);
            return b10;
        }
        return "";
    }

    public d a(ExecutorService executorService, String str, com.huawei.hms.framework.network.grs.e.c cVar) {
        String str2;
        String str3;
        if (this.f27367h.isEmpty() && this.f27368i.isEmpty()) {
            return null;
        }
        try {
            com.huawei.hms.framework.network.grs.g.k.d b10 = b();
            return (d) executorService.submit(new a(executorService, str, cVar)).get(b10 != null ? b10.d() : 10, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            str2 = f27359n;
            str3 = "{submitExcutorTaskWithTimeout} the current thread was interrupted while waiting";
            Logger.w(str2, str3, e);
            return null;
        } catch (CancellationException unused) {
            Logger.i(f27359n, "{submitExcutorTaskWithTimeout} the computation was cancelled");
            return null;
        } catch (ExecutionException e11) {
            e = e11;
            str2 = f27359n;
            str3 = "{submitExcutorTaskWithTimeout} the computation threw an ExecutionException";
            Logger.w(str2, str3, e);
            return null;
        } catch (TimeoutException unused2) {
            Logger.w(f27359n, "{submitExcutorTaskWithTimeout} the wait timed out");
            return null;
        } catch (Exception e12) {
            e = e12;
            str2 = f27359n;
            str3 = "{submitExcutorTaskWithTimeout} catch Exception";
            Logger.w(str2, str3, e);
            return null;
        }
    }

    public String a() {
        return this.f27371l;
    }

    public synchronized void a(d dVar) {
        this.f27365f.add(dVar);
        d dVar2 = this.f27363d;
        if (dVar2 != null && (dVar2.o() || this.f27363d.m())) {
            Logger.v(f27359n, "grsResponseResult is ok");
        } else if (dVar.n()) {
            Logger.i(f27359n, "GRS server open 503 limiting strategy.");
            com.huawei.hms.framework.network.grs.h.d.a(this.f27360a.getGrsParasKey(true, true, this.f27361b), new d.a(dVar.k(), SystemClock.elapsedRealtime()));
        } else {
            if (dVar.m()) {
                Logger.i(f27359n, "GRS server open 304 Not Modified.");
            }
            if (!dVar.o() && !dVar.m()) {
                Logger.v(f27359n, "grsResponseResult has exception so need return");
                return;
            }
            this.f27363d = dVar;
            this.f27362c.a(this.f27360a, dVar, this.f27361b, this.f27369j);
            for (Map.Entry<String, Future<d>> entry : this.f27364e.entrySet()) {
                if (!entry.getKey().equals(dVar.l()) && !entry.getValue().isCancelled()) {
                    Logger.i(f27359n, "future cancel");
                    entry.getValue().cancel(true);
                }
            }
        }
    }

    public void a(com.huawei.hms.framework.network.grs.g.k.d dVar) {
        this.f27370k = dVar;
    }

    public com.huawei.hms.framework.network.grs.g.k.d b() {
        return this.f27370k;
    }
}
