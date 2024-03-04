package cn.jiguang.ba;

import android.content.Context;
import android.text.TextUtils;
import cn.jiguang.as.d;
import cn.jiguang.f.g;
import cn.jiguang.f.h;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static int f2400a;

    /* renamed from: b  reason: collision with root package name */
    private static c f2401b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Integer> f2402c = new HashMap();

    private c() {
    }

    private int a(boolean z10) {
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            boolean z11 = false;
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface nextElement = networkInterfaces.nextElement();
                if (!g.a(nextElement.getName(), "dummy")) {
                    boolean a10 = g.a(nextElement.getName(), "wlan");
                    if (!z10 || a10) {
                        Enumeration<InetAddress> inetAddresses = nextElement.getInetAddresses();
                        while (inetAddresses.hasMoreElements()) {
                            InetAddress nextElement2 = inetAddresses.nextElement();
                            if (!nextElement2.isLoopbackAddress() && a(nextElement2)) {
                                if (a10) {
                                    return 3;
                                }
                                z11 = true;
                            }
                        }
                        continue;
                    }
                }
            }
            return z11 ? 0 : 1;
        } catch (Exception unused) {
            d.g("IpvxHelper", "checkIpvxSupport:");
            return 0;
        }
    }

    public static c a() {
        if (f2401b == null) {
            synchronized (c.class) {
                if (f2401b == null) {
                    f2401b = new c();
                }
            }
        }
        return f2401b;
    }

    public static void a(int i9) {
        if (i9 > 3 || i9 < 0) {
            return;
        }
        f2400a = i9;
    }

    private static boolean a(InetAddress inetAddress) {
        try {
            if (inetAddress instanceof Inet6Address) {
                if (!inetAddress.getHostAddress().substring(0, 4).equalsIgnoreCase("fe80")) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public int a(Context context) {
        int i9;
        int i10 = 0;
        try {
            String c10 = h.c(context);
            String str = "";
            boolean equals = "wifi".equals(c10);
            if (equals && cn.jiguang.d.a.l(context)) {
                str = cn.jiguang.f.a.m(context);
            }
            boolean z10 = !TextUtils.isEmpty(str);
            if (!equals || z10) {
                Integer num = this.f2402c.get(c10 + str);
                if (num != null && num.intValue() != 0) {
                    d.c("IpvxHelper", "net=" + c10 + " " + str + " get cache support=" + num);
                    return num.intValue();
                }
            }
            if (z10) {
                i9 = ((Integer) cn.jiguang.g.b.a(context, cn.jiguang.g.a.g(str))).intValue();
                try {
                    d.c("IpvxHelper", "net=" + c10 + " " + str + " get wifi history support=" + i9);
                } catch (Throwable th2) {
                    th = th2;
                    i10 = i9;
                    d.g("IpvxHelper", "getPreferVx e:" + th);
                    return i10;
                }
            } else {
                i9 = 0;
            }
            if (i9 == 0) {
                i9 = a(equals);
                d.c("IpvxHelper", "net=" + c10 + " " + str + " get networkinterface support=" + i9);
                if (z10) {
                    cn.jiguang.g.b.a(context, cn.jiguang.g.a.g(str).a((cn.jiguang.g.a<Integer>) Integer.valueOf(i9)));
                }
            }
            i10 = i9;
            if (!equals || z10) {
                this.f2402c.put(c10 + str, Integer.valueOf(i10));
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return i10;
    }

    public void a(Context context, int i9) {
        String c10 = h.c(context);
        boolean equals = "wifi".equals(c10);
        String m10 = (equals && cn.jiguang.d.a.l(context)) ? cn.jiguang.f.a.m(context) : "";
        boolean z10 = !TextUtils.isEmpty(m10);
        if (!equals || z10) {
            this.f2402c.put(c10 + m10, Integer.valueOf(i9));
        }
        if (z10) {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.g(m10).a((cn.jiguang.g.a<Integer>) Integer.valueOf(i9)));
        }
    }

    public int b(int i9) {
        int i10 = f2400a;
        if (i10 == 2 || i10 == 1) {
            return i10;
        }
        if (i9 != 1) {
            if (i9 != 2) {
                return i10;
            }
            return 2;
        }
        return 1;
    }
}
