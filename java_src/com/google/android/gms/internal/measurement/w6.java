package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public abstract class w6 {

    /* renamed from: h  reason: collision with root package name */
    private static volatile t6 f8403h;

    /* renamed from: l  reason: collision with root package name */
    public static final /* synthetic */ int f8407l = 0;

    /* renamed from: a  reason: collision with root package name */
    final s6 f8408a;

    /* renamed from: b  reason: collision with root package name */
    final String f8409b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f8410c;

    /* renamed from: d  reason: collision with root package name */
    private volatile int f8411d = -1;

    /* renamed from: e  reason: collision with root package name */
    private volatile Object f8412e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f8413f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f8402g = new Object();

    /* renamed from: i  reason: collision with root package name */
    private static final AtomicReference f8404i = new AtomicReference();

    /* renamed from: j  reason: collision with root package name */
    private static final y6 f8405j = new y6(new Object() { // from class: com.google.android.gms.internal.measurement.n6
    }, null);

    /* renamed from: k  reason: collision with root package name */
    private static final AtomicInteger f8406k = new AtomicInteger();

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ w6(s6 s6Var, String str, Object obj, boolean z10, u6 u6Var) {
        if (s6Var.f8309b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        this.f8408a = s6Var;
        this.f8409b = str;
        this.f8410c = obj;
        this.f8413f = true;
    }

    public static void d() {
        f8406k.incrementAndGet();
    }

    public static void e(final Context context) {
        if (f8403h == null) {
            Object obj = f8402g;
            synchronized (obj) {
                if (f8403h == null) {
                    synchronized (obj) {
                        t6 t6Var = f8403h;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (t6Var == null || t6Var.a() != context) {
                            z5.e();
                            x6.c();
                            h6.e();
                            f8403h = new w5(context, g7.a(new c7() { // from class: com.google.android.gms.internal.measurement.m6
                                @Override // com.google.android.gms.internal.measurement.c7
                                public final Object zza() {
                                    Context context2 = context;
                                    int i9 = w6.f8407l;
                                    return i6.a(context2);
                                }
                            }));
                            f8406k.incrementAndGet();
                        }
                    }
                }
            }
        }
    }

    abstract Object a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:37:0x0099 A[Catch: all -> 0x00d3, TryCatch #0 {, blocks: (B:8:0x0016, B:10:0x001a, B:12:0x0020, B:14:0x0029, B:16:0x0037, B:20:0x0060, B:22:0x006a, B:38:0x009b, B:40:0x00ab, B:42:0x00bf, B:43:0x00c2, B:44:0x00c6, B:26:0x0073, B:28:0x0079, B:32:0x008b, B:34:0x0091, B:37:0x0099, B:31:0x0089, B:18:0x0050, B:45:0x00cb, B:46:0x00d0, B:47:0x00d1), top: B:54:0x0016 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b() {
        /*
            r6 = this;
            boolean r0 = r6.f8413f
            if (r0 != 0) goto Lb
            java.lang.String r0 = r6.f8409b
            java.lang.String r1 = "flagName must not be null"
            java.util.Objects.requireNonNull(r0, r1)
        Lb:
            java.util.concurrent.atomic.AtomicInteger r0 = com.google.android.gms.internal.measurement.w6.f8406k
            int r0 = r0.get()
            int r1 = r6.f8411d
            if (r1 >= r0) goto Ld6
            monitor-enter(r6)
            int r1 = r6.f8411d     // Catch: java.lang.Throwable -> Ld3
            if (r1 >= r0) goto Ld1
            com.google.android.gms.internal.measurement.t6 r1 = com.google.android.gms.internal.measurement.w6.f8403h     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r2 = "Must call PhenotypeFlag.init() first"
            if (r1 == 0) goto Lcb
            com.google.android.gms.internal.measurement.s6 r2 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            boolean r3 = r2.f8313f     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r2 = r2.f8309b     // Catch: java.lang.Throwable -> Ld3
            r3 = 0
            if (r2 == 0) goto L50
            android.content.Context r2 = r1.a()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.s6 r4 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r4 = r4.f8309b     // Catch: java.lang.Throwable -> Ld3
            boolean r2 = com.google.android.gms.internal.measurement.j6.a(r2, r4)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto L4e
            com.google.android.gms.internal.measurement.s6 r2 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            boolean r2 = r2.f8315h     // Catch: java.lang.Throwable -> Ld3
            android.content.Context r2 = r1.a()     // Catch: java.lang.Throwable -> Ld3
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.s6 r4 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r4 = r4.f8309b     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.l6 r5 = new java.lang.Runnable() { // from class: com.google.android.gms.internal.measurement.l6
                static {
                    /*
                        com.google.android.gms.internal.measurement.l6 r0 = new com.google.android.gms.internal.measurement.l6
                        r0.<init>()
                        
                        // error: 0x0005: SPUT  (r0 I:com.google.android.gms.internal.measurement.l6) com.google.android.gms.internal.measurement.l6.a com.google.android.gms.internal.measurement.l6
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.l6.<clinit>():void");
                }

                {
                    /*
                        r0 = this;
                        r0.<init>()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.l6.<init>():void");
                }

                @Override // java.lang.Runnable
                public final void run() {
                    /*
                        r0 = this;
                        com.google.android.gms.internal.measurement.w6.d()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.l6.run():void");
                }
            }     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.z5 r2 = com.google.android.gms.internal.measurement.z5.b(r2, r4, r5)     // Catch: java.lang.Throwable -> Ld3
            goto L5e
        L4e:
            r2 = r3
            goto L5e
        L50:
            android.content.Context r2 = r1.a()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.s6 r4 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r4 = r4.f8308a     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.l6 r4 = com.google.android.gms.internal.measurement.l6.f8179a     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.x6 r2 = com.google.android.gms.internal.measurement.x6.b(r2, r3, r4)     // Catch: java.lang.Throwable -> Ld3
        L5e:
            if (r2 == 0) goto L6f
            java.lang.String r4 = r6.c()     // Catch: java.lang.Throwable -> Ld3
            java.lang.Object r2 = r2.a(r4)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto L6f
            java.lang.Object r2 = r6.a(r2)     // Catch: java.lang.Throwable -> Ld3
            goto L70
        L6f:
            r2 = r3
        L70:
            if (r2 == 0) goto L73
            goto L9b
        L73:
            com.google.android.gms.internal.measurement.s6 r2 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            boolean r2 = r2.f8312e     // Catch: java.lang.Throwable -> Ld3
            if (r2 != 0) goto L96
            android.content.Context r2 = r1.a()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.h6 r2 = com.google.android.gms.internal.measurement.h6.b(r2)     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.s6 r4 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            boolean r4 = r4.f8312e     // Catch: java.lang.Throwable -> Ld3
            if (r4 == 0) goto L89
            r4 = r3
            goto L8b
        L89:
            java.lang.String r4 = r6.f8409b     // Catch: java.lang.Throwable -> Ld3
        L8b:
            java.lang.String r2 = r2.a(r4)     // Catch: java.lang.Throwable -> Ld3
            if (r2 == 0) goto L96
            java.lang.Object r2 = r6.a(r2)     // Catch: java.lang.Throwable -> Ld3
            goto L97
        L96:
            r2 = r3
        L97:
            if (r2 != 0) goto L9b
            java.lang.Object r2 = r6.f8410c     // Catch: java.lang.Throwable -> Ld3
        L9b:
            com.google.android.gms.internal.measurement.c7 r1 = r1.b()     // Catch: java.lang.Throwable -> Ld3
            java.lang.Object r1 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.zzif r1 = (com.google.android.gms.internal.measurement.zzif) r1     // Catch: java.lang.Throwable -> Ld3
            boolean r4 = r1.zzb()     // Catch: java.lang.Throwable -> Ld3
            if (r4 == 0) goto Lc6
            java.lang.Object r1 = r1.zza()     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.b6 r1 = (com.google.android.gms.internal.measurement.b6) r1     // Catch: java.lang.Throwable -> Ld3
            com.google.android.gms.internal.measurement.s6 r2 = r6.f8408a     // Catch: java.lang.Throwable -> Ld3
            android.net.Uri r4 = r2.f8309b     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r2 = r2.f8311d     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r5 = r6.f8409b     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r1 = r1.a(r4, r3, r2, r5)     // Catch: java.lang.Throwable -> Ld3
            if (r1 != 0) goto Lc2
            java.lang.Object r2 = r6.f8410c     // Catch: java.lang.Throwable -> Ld3
            goto Lc6
        Lc2:
            java.lang.Object r2 = r6.a(r1)     // Catch: java.lang.Throwable -> Ld3
        Lc6:
            r6.f8412e = r2     // Catch: java.lang.Throwable -> Ld3
            r6.f8411d = r0     // Catch: java.lang.Throwable -> Ld3
            goto Ld1
        Lcb:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> Ld3
            r0.<init>(r2)     // Catch: java.lang.Throwable -> Ld3
            throw r0     // Catch: java.lang.Throwable -> Ld3
        Ld1:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Ld3
            goto Ld6
        Ld3:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> Ld3
            throw r0
        Ld6:
            java.lang.Object r0 = r6.f8412e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.w6.b():java.lang.Object");
    }

    public final String c() {
        String str = this.f8408a.f8311d;
        return this.f8409b;
    }
}
