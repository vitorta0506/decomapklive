package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.service.XMJobService;
/* loaded from: classes5.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    private static a f36998a;

    /* renamed from: b  reason: collision with root package name */
    private static final String f36999b = XMJobService.class.getCanonicalName();

    /* renamed from: c  reason: collision with root package name */
    private static int f37000c = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public interface a {
        void a();

        void a(boolean z10);

        /* renamed from: a  reason: collision with other method in class */
        boolean mo1520a();
    }

    public static synchronized void a() {
        synchronized (n0.class) {
            if (f36998a == null) {
                return;
            }
            tf.c.l("[Alarm] stop alarm.");
            f36998a.a();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005a, code lost:
        if (r7.equals(sf.j.c(r9, r6.name).getSuperclass().getCanonicalName()) != false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.content.Context r9) {
        /*
            java.lang.String r0 = "android.permission.BIND_JOB_SERVICE"
            android.content.Context r9 = r9.getApplicationContext()
            java.lang.String r1 = r9.getPackageName()
            java.lang.String r2 = "com.xiaomi.xmsf"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L1b
            com.xiaomi.push.o0 r0 = new com.xiaomi.push.o0
            r0.<init>(r9)
        L17:
            com.xiaomi.push.n0.f36998a = r0
            goto Lcc
        L1b:
            android.content.pm.PackageManager r1 = r9.getPackageManager()
            r2 = 0
            java.lang.String r3 = r9.getPackageName()     // Catch: java.lang.Exception -> L7d
            r4 = 4
            android.content.pm.PackageInfo r1 = r1.getPackageInfo(r3, r4)     // Catch: java.lang.Exception -> L7d
            android.content.pm.ServiceInfo[] r1 = r1.services     // Catch: java.lang.Exception -> L7d
            r3 = 1
            if (r1 == 0) goto L96
            int r4 = r1.length     // Catch: java.lang.Exception -> L7d
            r5 = 0
        L30:
            if (r2 >= r4) goto L7b
            r6 = r1[r2]     // Catch: java.lang.Exception -> L78
            java.lang.String r7 = r6.permission     // Catch: java.lang.Exception -> L78
            boolean r7 = r0.equals(r7)     // Catch: java.lang.Exception -> L78
            if (r7 == 0) goto L61
            java.lang.String r7 = com.xiaomi.push.n0.f36999b     // Catch: java.lang.Exception -> L78
            java.lang.String r8 = r6.name     // Catch: java.lang.Exception -> L78
            boolean r8 = r7.equals(r8)     // Catch: java.lang.Exception -> L78
            if (r8 == 0) goto L48
        L46:
            r5 = 1
            goto L5e
        L48:
            java.lang.String r8 = r6.name     // Catch: java.lang.Exception -> L5d
            java.lang.Class r8 = sf.j.c(r9, r8)     // Catch: java.lang.Exception -> L5d
            java.lang.Class r8 = r8.getSuperclass()     // Catch: java.lang.Exception -> L5d
            java.lang.String r8 = r8.getCanonicalName()     // Catch: java.lang.Exception -> L5d
            boolean r7 = r7.equals(r8)     // Catch: java.lang.Exception -> L5d
            if (r7 == 0) goto L5e
            goto L46
        L5d:
        L5e:
            if (r5 != r3) goto L61
            goto L7b
        L61:
            java.lang.String r7 = com.xiaomi.push.n0.f36999b     // Catch: java.lang.Exception -> L78
            java.lang.String r8 = r6.name     // Catch: java.lang.Exception -> L78
            boolean r7 = r7.equals(r8)     // Catch: java.lang.Exception -> L78
            if (r7 == 0) goto L75
            java.lang.String r6 = r6.permission     // Catch: java.lang.Exception -> L78
            boolean r6 = r0.equals(r6)     // Catch: java.lang.Exception -> L78
            if (r6 == 0) goto L75
            r2 = 1
            goto L96
        L75:
            int r2 = r2 + 1
            goto L30
        L78:
            r1 = move-exception
            r2 = r5
            goto L7e
        L7b:
            r2 = r5
            goto L96
        L7d:
            r1 = move-exception
        L7e:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "check service err : "
            r3.append(r4)
            java.lang.String r1 = r1.getMessage()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            tf.c.l(r1)
        L96:
            if (r2 != 0) goto Lc5
            boolean r1 = sf.j.f(r9)
            if (r1 != 0) goto L9f
            goto Lc5
        L9f:
            java.lang.RuntimeException r9 = new java.lang.RuntimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Should export service: "
            r1.append(r2)
            java.lang.String r2 = com.xiaomi.push.n0.f36999b
            r1.append(r2)
            java.lang.String r2 = " with permission "
            r1.append(r2)
            r1.append(r0)
            java.lang.String r0 = " in AndroidManifest.xml file"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r9.<init>(r0)
            throw r9
        Lc5:
            com.xiaomi.push.o0 r0 = new com.xiaomi.push.o0
            r0.<init>(r9)
            goto L17
        Lcc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.n0.b(android.content.Context):void");
    }

    public static synchronized void c(Context context, int i9) {
        synchronized (n0.class) {
            int i10 = f37000c;
            if (!"com.xiaomi.xmsf".equals(context.getPackageName())) {
                if (i9 == 2) {
                    f37000c = 2;
                } else {
                    f37000c = 0;
                }
            }
            int i11 = f37000c;
            if (i10 != i11 && i11 == 2) {
                a();
                f36998a = new p0(context);
            }
        }
    }

    public static synchronized void d(boolean z10) {
        synchronized (n0.class) {
            if (f36998a == null) {
                tf.c.l("timer is not initialized");
                return;
            }
            tf.c.l("[Alarm] register alarm. (" + z10 + ")");
            f36998a.a(z10);
        }
    }

    public static synchronized boolean e() {
        synchronized (n0.class) {
            a aVar = f36998a;
            if (aVar == null) {
                return false;
            }
            return aVar.mo1520a();
        }
    }
}
