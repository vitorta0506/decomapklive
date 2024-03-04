package cn.jiguang.ba;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import cn.jiguang.as.d;
import cn.jiguang.f.g;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f2392a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2393b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private long f2394c = 36000000;

    /* renamed from: d  reason: collision with root package name */
    private long f2395d = 900000;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, Pair<InetAddress[], Long>> f2396e = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a implements Callable<InetAddress[]> {

        /* renamed from: a  reason: collision with root package name */
        private Context f2397a;

        /* renamed from: b  reason: collision with root package name */
        private String f2398b;

        /* renamed from: c  reason: collision with root package name */
        private b f2399c;

        a(Context context, String str, b bVar) {
            this.f2397a = context;
            this.f2398b = str;
            this.f2399c = bVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0050  */
        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.net.InetAddress[] call() {
            /*
                r14 = this;
                java.lang.String r0 = "DNSLoader"
                r1 = 0
                java.lang.String r2 = r14.f2398b     // Catch: java.net.UnknownHostException -> La
                java.net.InetAddress[] r2 = java.net.InetAddress.getAllByName(r2)     // Catch: java.net.UnknownHostException -> La
                goto L20
            La:
                r2 = move-exception
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                java.lang.String r4 = "dns resolve failed:"
                r3.append(r4)
                r3.append(r2)
                java.lang.String r2 = r3.toString()
                cn.jiguang.as.d.g(r0, r2)
                r2 = r1
            L20:
                if (r2 == 0) goto Le0
                int r3 = r2.length
                if (r3 <= 0) goto Le0
                java.util.ArrayList r3 = new java.util.ArrayList
                r3.<init>()
                java.lang.StringBuilder r4 = new java.lang.StringBuilder
                r4.<init>()
                int r5 = r2.length
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 0
            L34:
                r10 = 1
                if (r7 >= r5) goto L67
                r11 = r2[r7]
                r12 = 3
                if (r8 >= r12) goto L44
                boolean r13 = r11 instanceof java.net.Inet4Address
                if (r13 == 0) goto L44
                int r8 = r8 + 1
            L42:
                r13 = 1
                goto L4e
            L44:
                if (r9 >= r12) goto L4d
                boolean r13 = r11 instanceof java.net.Inet6Address
                if (r13 == 0) goto L4d
                int r9 = r9 + 1
                goto L42
            L4d:
                r13 = 0
            L4e:
                if (r13 == 0) goto L5f
                r3.add(r11)
                java.lang.String r11 = r11.getHostAddress()
                r4.append(r11)
                java.lang.String r11 = ","
                r4.append(r11)
            L5f:
                if (r8 != r12) goto L64
                if (r9 != r12) goto L64
                goto L67
            L64:
                int r7 = r7 + 1
                goto L34
            L67:
                boolean r2 = r3.isEmpty()
                if (r2 != 0) goto Le1
                java.net.InetAddress[] r1 = new java.net.InetAddress[r6]
                java.lang.Object[] r1 = r3.toArray(r1)
                java.net.InetAddress[] r1 = (java.net.InetAddress[]) r1
                long r2 = java.lang.System.currentTimeMillis()
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r7 = "update dns cache url="
                r5.append(r7)
                java.lang.String r7 = r14.f2398b
                r5.append(r7)
                java.lang.String r7 = " resolved="
                r5.append(r7)
                java.lang.String r7 = java.util.Arrays.toString(r1)
                r5.append(r7)
                java.lang.String r5 = r5.toString()
                cn.jiguang.as.d.c(r0, r5)
                cn.jiguang.ba.b r0 = r14.f2399c
                java.util.Map r0 = cn.jiguang.ba.b.a(r0)
                java.lang.String r5 = r14.f2398b
                android.util.Pair r7 = new android.util.Pair
                java.lang.Long r8 = java.lang.Long.valueOf(r2)
                r7.<init>(r1, r8)
                r0.put(r5, r7)
                int r0 = r4.length()     // Catch: java.lang.Throwable -> Le1
                int r0 = r0 - r10
                r4.deleteCharAt(r0)     // Catch: java.lang.Throwable -> Le1
                android.content.Context r0 = r14.f2397a     // Catch: java.lang.Throwable -> Le1
                r5 = 2
                cn.jiguang.g.a[] r5 = new cn.jiguang.g.a[r5]     // Catch: java.lang.Throwable -> Le1
                java.lang.String r7 = r14.f2398b     // Catch: java.lang.Throwable -> Le1
                cn.jiguang.g.a r7 = cn.jiguang.g.a.b(r7)     // Catch: java.lang.Throwable -> Le1
                java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> Le1
                cn.jiguang.g.a r4 = r7.a(r4)     // Catch: java.lang.Throwable -> Le1
                r5[r6] = r4     // Catch: java.lang.Throwable -> Le1
                java.lang.String r4 = r14.f2398b     // Catch: java.lang.Throwable -> Le1
                cn.jiguang.g.a r4 = cn.jiguang.g.a.c(r4)     // Catch: java.lang.Throwable -> Le1
                java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> Le1
                cn.jiguang.g.a r2 = r4.a(r2)     // Catch: java.lang.Throwable -> Le1
                r5[r10] = r2     // Catch: java.lang.Throwable -> Le1
                cn.jiguang.g.b.a(r0, r5)     // Catch: java.lang.Throwable -> Le1
                goto Le1
            Le0:
                r1 = r2
            Le1:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.jiguang.ba.b.a.call():java.net.InetAddress[]");
        }
    }

    private b() {
    }

    private Pair<InetAddress[], Boolean> a(Context context, String str, long j10, long j11) {
        InetAddress[] inetAddressArr;
        Pair<InetAddress[], Long> pair = this.f2396e.get(str);
        boolean z10 = pair == null || pair.first == null;
        long longValue = ((Long) (z10 ? cn.jiguang.g.b.a(context, cn.jiguang.g.a.c(str)) : pair.second)).longValue();
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis > longValue + j10) {
            return null;
        }
        if (z10) {
            inetAddressArr = a(context, str);
            if (inetAddressArr != null) {
                this.f2396e.put(str, new Pair<>(inetAddressArr, Long.valueOf(longValue)));
            }
        } else {
            inetAddressArr = (InetAddress[]) pair.first;
        }
        if (inetAddressArr != null) {
            return new Pair<>(inetAddressArr, Boolean.valueOf(currentTimeMillis > longValue + j11));
        }
        return null;
    }

    public static b a() {
        if (f2392a == null) {
            synchronized (f2393b) {
                if (f2392a == null) {
                    f2392a = new b();
                }
            }
        }
        return f2392a;
    }

    private InetAddress a(String str) {
        if (g.f(str) || g.g(str)) {
            try {
                return InetAddress.getByName(str);
            } catch (UnknownHostException e10) {
                d.g("DNSLoader", "dns resolve failed:" + e10);
            }
        }
        return null;
    }

    private InetAddress[] a(Context context, String str) {
        String str2 = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.b(str));
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        String[] split = str2.split(",");
        LinkedList linkedList = new LinkedList();
        for (String str3 : split) {
            InetAddress a10 = a(str3);
            if (a10 != null) {
                linkedList.add(a10);
            }
        }
        if (linkedList.isEmpty()) {
            return null;
        }
        return (InetAddress[]) linkedList.toArray(new InetAddress[0]);
    }

    public InetAddress a(Context context, String str, long j10, boolean z10) {
        InetAddress[] b10 = b(context, str, j10, z10);
        if (b10 == null || b10.length <= 0) {
            return null;
        }
        return b10[0];
    }

    public InetAddress[] b(Context context, String str, long j10, boolean z10) {
        InetAddress[] inetAddressArr;
        StringBuilder sb2;
        String arrays;
        InetAddress[] inetAddressArr2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        InetAddress a10 = a(str);
        if (a10 != null) {
            return new InetAddress[]{a10};
        }
        Pair<InetAddress[], Boolean> a11 = a(context, str, this.f2394c, this.f2395d);
        if (a11 != null) {
            Object obj = a11.first;
            inetAddressArr = obj != null ? (InetAddress[]) obj : null;
            if (!((Boolean) a11.second).booleanValue()) {
                if (z10) {
                    cn.jiguang.av.b.d(new FutureTask(new a(context, str, this)), new int[0]);
                }
                sb2 = new StringBuilder();
                sb2.append("use cache=");
                arrays = Arrays.toString(inetAddressArr);
                sb2.append(arrays);
                d.c("DNSLoader", sb2.toString());
                return inetAddressArr;
            }
        } else {
            inetAddressArr = null;
        }
        FutureTask futureTask = new FutureTask(new a(context, str, this));
        cn.jiguang.av.b.d(futureTask, new int[0]);
        if (j10 == 0) {
            sb2 = new StringBuilder();
        } else {
            try {
                d.c("DNSLoader", "waiting dns for " + str);
                inetAddressArr2 = (InetAddress[]) futureTask.get(j10, TimeUnit.MILLISECONDS);
            } catch (Throwable th2) {
                d.g("DNSLoader", "run futureTask e:" + th2);
            }
            if (inetAddressArr2 != null) {
                d.c("DNSLoader", "use resolved result=" + Arrays.toString(inetAddressArr2));
                return inetAddressArr2;
            }
            sb2 = new StringBuilder();
        }
        sb2.append("use cache=");
        arrays = Arrays.toString(inetAddressArr);
        sb2.append(arrays);
        d.c("DNSLoader", sb2.toString());
        return inetAddressArr;
    }
}
