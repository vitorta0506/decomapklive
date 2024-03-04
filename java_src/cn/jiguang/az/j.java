package cn.jiguang.az;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import cn.jiguang.api.JCoreManager;
import com.tencent.bugly.BuglyStrategy;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private static volatile j f2356a = null;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f2357b = new Object();

    /* renamed from: e  reason: collision with root package name */
    private static long f2358e = 1;

    /* renamed from: d  reason: collision with root package name */
    private cn.jiguang.bd.a f2360d = new cn.jiguang.bd.a() { // from class: cn.jiguang.az.j.1
        @Override // cn.jiguang.bd.a
        public void a(Message message) {
            long j10 = message.what - BuglyStrategy.a.MAX_USERDATA_VALUE_LENGTH;
            Bundle bundle = new Bundle();
            bundle.putLong("rid", j10);
            h.a().a(JCoreManager.getAppContext(null), "tcp_a6", bundle);
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private Map<Long, d> f2359c = new HashMap();

    private j() {
    }

    public static j a() {
        if (f2356a == null) {
            synchronized (f2357b) {
                if (f2356a == null) {
                    f2356a = new j();
                }
            }
        }
        return f2356a;
    }

    private byte[] a(Context context, d dVar) {
        return cn.jiguang.bb.b.a(context, dVar.f2300d, dVar.f2301e, dVar.f2302f, dVar.f2303g, 0L);
    }

    public static long b() {
        long j10 = f2358e + 1;
        f2358e = j10;
        if (j10 >= 2147483647L) {
            f2358e = 1L;
        }
        return f2358e;
    }

    public d a(long j10) {
        return this.f2359c.get(Long.valueOf(j10));
    }

    public void a(Context context) {
        if (this.f2359c.isEmpty()) {
            cn.jiguang.as.d.c("TcpRequestManager", "no cache request");
            return;
        }
        for (Map.Entry<Long, d> entry : this.f2359c.entrySet()) {
            if (entry.getValue().f2306j) {
                long nanoTime = System.nanoTime() - entry.getValue().f2304h;
                if (entry.getValue().f2305i - nanoTime >= 10000) {
                    entry.getValue().a();
                    cn.jiguang.as.d.c("TcpRequestManager", "send again:" + entry.getValue());
                    h.a().c().d().a(a(context, entry.getValue()));
                } else {
                    cn.jiguang.as.d.c("TcpRequestManager", "shoud not send again by 10000ms,hasRequestTime:" + nanoTime + ",timeout:" + entry.getValue().f2305i);
                }
            }
        }
    }

    public void a(Context context, long j10) {
        d remove = this.f2359c.remove(Long.valueOf(j10));
        if (remove != null) {
            if (remove.f2306j) {
                cn.jiguang.bd.b.a().b((int) (j10 + 100000));
            }
            cn.jiguang.as.d.c("TcpRequestManager", "handle reponse :" + remove);
        }
    }

    public void a(Context context, long j10, int i9, int i10, byte[] bArr, String str) {
        long c10 = cn.jiguang.ax.c.c(context);
        if (this.f2359c.containsKey(Long.valueOf(c10))) {
            cn.jiguang.as.d.h("TcpRequestManager", "Generator same rid,not do this msg");
            return;
        }
        d dVar = new d(j10, str, i9, i10, c10, 0L, bArr);
        if (h.a().d()) {
            h.a().c().d().a(a(context, dVar));
        }
        this.f2359c.put(Long.valueOf(c10), dVar);
    }

    public void a(Context context, long j10, int i9, int i10, byte[] bArr, String str, long j11) {
        long j12;
        if (i9 == 10) {
            j12 = j10;
        } else {
            long c10 = cn.jiguang.ax.c.c(context);
            cn.jiguang.as.d.c("TcpRequestManager", "Generator new rid:" + c10);
            if (this.f2359c.containsKey(Long.valueOf(c10))) {
                cn.jiguang.as.d.h("TcpRequestManager", "Generator same rid,not do this msg");
                return;
            }
            j12 = c10;
        }
        long j13 = j11 <= 0 ? 10000L : j11;
        d dVar = new d(j10, str, i9, i10, j12, j13, bArr);
        if (h.a().d()) {
            h.a().c().d().a(a(context, dVar));
        }
        dVar.f2304h = System.nanoTime();
        this.f2359c.put(Long.valueOf(j12), dVar);
        cn.jiguang.bd.b.a().b((int) (j12 + 100000), j13, this.f2360d);
    }

    public void b(Context context, long j10) {
        d remove = this.f2359c.remove(Long.valueOf(j10));
        if (remove == null) {
            cn.jiguang.as.d.g("TcpRequestManager", "not found requst by rid:" + j10);
            return;
        }
        cn.jiguang.as.d.c("TcpRequestManager", "request time out:" + remove);
        b.a().a(context, remove.f2299c, remove.f2298b, remove.f2300d);
    }
}
