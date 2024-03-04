package io.grpc.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.grpc.internal.e0;
import io.grpc.t0;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
/* loaded from: classes5.dex */
public final class h1 extends io.grpc.r0<h1> {
    private static final Logger I = Logger.getLogger(h1.class.getName());
    static final long J = TimeUnit.MINUTES.toMillis(30);
    static final long K = TimeUnit.SECONDS.toMillis(1);
    private static final p1<? extends Executor> L = g2.c(GrpcUtil.f42361t);
    private static final io.grpc.v M = io.grpc.v.c();
    private static final io.grpc.p N = io.grpc.p.a();
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private final c G;
    private final b H;

    /* renamed from: a  reason: collision with root package name */
    p1<? extends Executor> f42756a;

    /* renamed from: b  reason: collision with root package name */
    p1<? extends Executor> f42757b;

    /* renamed from: c  reason: collision with root package name */
    private final List<io.grpc.h> f42758c;

    /* renamed from: d  reason: collision with root package name */
    final io.grpc.v0 f42759d;

    /* renamed from: e  reason: collision with root package name */
    t0.d f42760e;

    /* renamed from: f  reason: collision with root package name */
    final String f42761f;

    /* renamed from: g  reason: collision with root package name */
    final io.grpc.e f42762g;

    /* renamed from: h  reason: collision with root package name */
    final io.grpc.b f42763h;

    /* renamed from: i  reason: collision with root package name */
    private final SocketAddress f42764i;

    /* renamed from: j  reason: collision with root package name */
    String f42765j;

    /* renamed from: k  reason: collision with root package name */
    String f42766k;

    /* renamed from: l  reason: collision with root package name */
    String f42767l;

    /* renamed from: m  reason: collision with root package name */
    boolean f42768m;

    /* renamed from: n  reason: collision with root package name */
    io.grpc.v f42769n;

    /* renamed from: o  reason: collision with root package name */
    io.grpc.p f42770o;

    /* renamed from: p  reason: collision with root package name */
    long f42771p;

    /* renamed from: q  reason: collision with root package name */
    int f42772q;

    /* renamed from: r  reason: collision with root package name */
    int f42773r;

    /* renamed from: s  reason: collision with root package name */
    long f42774s;

    /* renamed from: t  reason: collision with root package name */
    long f42775t;

    /* renamed from: u  reason: collision with root package name */
    boolean f42776u;

    /* renamed from: v  reason: collision with root package name */
    io.grpc.c0 f42777v;

    /* renamed from: w  reason: collision with root package name */
    int f42778w;

    /* renamed from: x  reason: collision with root package name */
    Map<String, ?> f42779x;

    /* renamed from: y  reason: collision with root package name */
    boolean f42780y;

    /* renamed from: z  reason: collision with root package name */
    io.grpc.z0 f42781z;

    /* loaded from: classes5.dex */
    public interface b {
        int a();
    }

    /* loaded from: classes5.dex */
    public interface c {
        s a();
    }

    /* loaded from: classes5.dex */
    private static final class d implements b {
        private d() {
        }

        @Override // io.grpc.internal.h1.b
        public int a() {
            return 443;
        }
    }

    public h1(String str, c cVar, b bVar) {
        this(str, null, null, cVar, bVar);
    }

    private static List<?> p(List<?> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (Object obj : list) {
            if (obj == null) {
                arrayList.add(null);
            } else if (obj instanceof Map) {
                arrayList.add(q((Map) obj));
            } else if (obj instanceof List) {
                arrayList.add(p((List) obj));
            } else if (obj instanceof String) {
                arrayList.add(obj);
            } else if (obj instanceof Double) {
                arrayList.add(obj);
            } else if (obj instanceof Boolean) {
                arrayList.add(obj);
            } else {
                throw new IllegalArgumentException("The entry '" + obj + "' is of type '" + obj.getClass() + "', which is not supported");
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static Map<String, ?> q(Map<?, ?> map) {
        if (map == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            com.google.common.base.o.m(entry.getKey() instanceof String, "The key of the entry '%s' is not of String type", entry);
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                linkedHashMap.put(str, null);
            } else if (value instanceof Map) {
                linkedHashMap.put(str, q((Map) value));
            } else if (value instanceof List) {
                linkedHashMap.put(str, p((List) value));
            } else if (value instanceof String) {
                linkedHashMap.put(str, value);
            } else if (value instanceof Double) {
                linkedHashMap.put(str, value);
            } else if (value instanceof Boolean) {
                linkedHashMap.put(str, value);
            } else {
                throw new IllegalArgumentException("The value of the map entry '" + entry + "' is of type '" + value.getClass() + "', which is not supported");
            }
        }
        return Collections.unmodifiableMap(linkedHashMap);
    }

    @Override // io.grpc.r0
    /* renamed from: A */
    public h1 o(String str) {
        this.f42765j = str;
        return this;
    }

    @Override // io.grpc.r0
    public io.grpc.q0 a() {
        return new i1(new g1(this, this.G.a(), new e0.a(), g2.c(GrpcUtil.f42361t), GrpcUtil.f42363v, w(), m2.f42901a));
    }

    @Override // io.grpc.r0
    /* renamed from: r */
    public h1 b(Map<String, ?> map) {
        this.f42779x = q(map);
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: s */
    public h1 c() {
        return e(com.google.common.util.concurrent.h0.a());
    }

    @Override // io.grpc.r0
    /* renamed from: t */
    public h1 d() {
        this.f42780y = false;
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: u */
    public h1 e(Executor executor) {
        if (executor != null) {
            this.f42756a = new h0(executor);
        } else {
            this.f42756a = L;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int v() {
        return this.H.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.util.List<io.grpc.h> w() {
        /*
            r12 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.List<io.grpc.h> r1 = r12.f42758c
            r0.<init>(r1)
            boolean r1 = r12.A
            java.lang.String r2 = "getClientInterceptor"
            r3 = 0
            r4 = 0
            java.lang.String r5 = "Unable to apply census stats"
            if (r1 == 0) goto L7d
            java.lang.String r1 = "io.grpc.census.InternalCensusStatsAccessor"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r6 = 4
            java.lang.Class[] r7 = new java.lang.Class[r6]     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.Class r8 = java.lang.Boolean.TYPE     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r7[r4] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r9 = 1
            r7[r9] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r10 = 2
            r7[r10] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r11 = 3
            r7[r11] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.reflect.Method r1 = r1.getDeclaredMethod(r2, r7)     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            boolean r7 = r12.B     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r6[r4] = r7     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            boolean r7 = r12.C     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r6[r9] = r7     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            boolean r7 = r12.D     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r6[r10] = r7     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            boolean r7 = r12.E     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            r6[r11] = r7     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            java.lang.Object r1 = r1.invoke(r3, r6)     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            io.grpc.h r1 = (io.grpc.h) r1     // Catch: java.lang.reflect.InvocationTargetException -> L54 java.lang.IllegalAccessException -> L5d java.lang.NoSuchMethodException -> L66 java.lang.ClassNotFoundException -> L6f
            goto L78
        L54:
            r1 = move-exception
            java.util.logging.Logger r6 = io.grpc.internal.h1.I
            java.util.logging.Level r7 = java.util.logging.Level.FINE
            r6.log(r7, r5, r1)
            goto L77
        L5d:
            r1 = move-exception
            java.util.logging.Logger r6 = io.grpc.internal.h1.I
            java.util.logging.Level r7 = java.util.logging.Level.FINE
            r6.log(r7, r5, r1)
            goto L77
        L66:
            r1 = move-exception
            java.util.logging.Logger r6 = io.grpc.internal.h1.I
            java.util.logging.Level r7 = java.util.logging.Level.FINE
            r6.log(r7, r5, r1)
            goto L77
        L6f:
            r1 = move-exception
            java.util.logging.Logger r6 = io.grpc.internal.h1.I
            java.util.logging.Level r7 = java.util.logging.Level.FINE
            r6.log(r7, r5, r1)
        L77:
            r1 = r3
        L78:
            if (r1 == 0) goto L7d
            r0.add(r4, r1)
        L7d:
            boolean r1 = r12.F
            if (r1 == 0) goto Lbf
            java.lang.String r1 = "io.grpc.census.InternalCensusTracingAccessor"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.reflect.InvocationTargetException -> L97 java.lang.IllegalAccessException -> La0 java.lang.NoSuchMethodException -> La9 java.lang.ClassNotFoundException -> Lb2
            java.lang.Class[] r6 = new java.lang.Class[r4]     // Catch: java.lang.reflect.InvocationTargetException -> L97 java.lang.IllegalAccessException -> La0 java.lang.NoSuchMethodException -> La9 java.lang.ClassNotFoundException -> Lb2
            java.lang.reflect.Method r1 = r1.getDeclaredMethod(r2, r6)     // Catch: java.lang.reflect.InvocationTargetException -> L97 java.lang.IllegalAccessException -> La0 java.lang.NoSuchMethodException -> La9 java.lang.ClassNotFoundException -> Lb2
            java.lang.Object[] r2 = new java.lang.Object[r4]     // Catch: java.lang.reflect.InvocationTargetException -> L97 java.lang.IllegalAccessException -> La0 java.lang.NoSuchMethodException -> La9 java.lang.ClassNotFoundException -> Lb2
            java.lang.Object r1 = r1.invoke(r3, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L97 java.lang.IllegalAccessException -> La0 java.lang.NoSuchMethodException -> La9 java.lang.ClassNotFoundException -> Lb2
            io.grpc.h r1 = (io.grpc.h) r1     // Catch: java.lang.reflect.InvocationTargetException -> L97 java.lang.IllegalAccessException -> La0 java.lang.NoSuchMethodException -> La9 java.lang.ClassNotFoundException -> Lb2
            r3 = r1
            goto Lba
        L97:
            r1 = move-exception
            java.util.logging.Logger r2 = io.grpc.internal.h1.I
            java.util.logging.Level r6 = java.util.logging.Level.FINE
            r2.log(r6, r5, r1)
            goto Lba
        La0:
            r1 = move-exception
            java.util.logging.Logger r2 = io.grpc.internal.h1.I
            java.util.logging.Level r6 = java.util.logging.Level.FINE
            r2.log(r6, r5, r1)
            goto Lba
        La9:
            r1 = move-exception
            java.util.logging.Logger r2 = io.grpc.internal.h1.I
            java.util.logging.Level r6 = java.util.logging.Level.FINE
            r2.log(r6, r5, r1)
            goto Lba
        Lb2:
            r1 = move-exception
            java.util.logging.Logger r2 = io.grpc.internal.h1.I
            java.util.logging.Level r6 = java.util.logging.Level.FINE
            r2.log(r6, r5, r1)
        Lba:
            if (r3 == 0) goto Lbf
            r0.add(r4, r3)
        Lbf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.h1.w():java.util.List");
    }

    public p1<? extends Executor> x() {
        return this.f42757b;
    }

    @Override // io.grpc.r0
    /* renamed from: y */
    public h1 g(List<io.grpc.h> list) {
        this.f42758c.addAll(list);
        return this;
    }

    @Override // io.grpc.r0
    /* renamed from: z */
    public h1 h(io.grpc.h... hVarArr) {
        return g(Arrays.asList(hVarArr));
    }

    public h1(String str, io.grpc.e eVar, io.grpc.b bVar, c cVar, b bVar2) {
        p1<? extends Executor> p1Var = L;
        this.f42756a = p1Var;
        this.f42757b = p1Var;
        this.f42758c = new ArrayList();
        io.grpc.v0 d10 = io.grpc.v0.d();
        this.f42759d = d10;
        this.f42760e = d10.c();
        this.f42767l = "pick_first";
        this.f42769n = M;
        this.f42770o = N;
        this.f42771p = J;
        this.f42772q = 5;
        this.f42773r = 5;
        this.f42774s = 16777216L;
        this.f42775t = PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        this.f42776u = true;
        this.f42777v = io.grpc.c0.g();
        this.f42780y = true;
        this.A = true;
        this.B = true;
        this.C = true;
        this.D = false;
        this.E = true;
        this.F = true;
        this.f42761f = (String) com.google.common.base.o.t(str, TypedValues.AttributesType.S_TARGET);
        this.f42762g = eVar;
        this.f42763h = bVar;
        this.G = (c) com.google.common.base.o.t(cVar, "clientTransportFactoryBuilder");
        this.f42764i = null;
        if (bVar2 != null) {
            this.H = bVar2;
        } else {
            this.H = new d();
        }
    }
}
