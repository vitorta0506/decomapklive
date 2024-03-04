package cn.jiguang.az;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import cn.jiguang.analytics.page.PushSA;
import cn.jiguang.api.JCoreManager;
import cn.jiguang.api.ReportCallBack;
import cn.jiguang.internal.JConstants;
import java.io.Closeable;
import java.io.File;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static i f2336a;

    /* renamed from: e  reason: collision with root package name */
    private static int f2337e;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f2338b = new AtomicBoolean(false);

    /* renamed from: c  reason: collision with root package name */
    private final Map<cn.jiguang.ax.g, Pair<Integer, cn.jiguang.bc.a>> f2339c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<cn.jiguang.ax.g, ConcurrentHashMap<Integer, b>> f2340d = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    private Map<String, Set<cn.jiguang.ax.g>> f2341f = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a extends cn.jiguang.bd.a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Context f2342a;

        /* renamed from: d  reason: collision with root package name */
        private int f2343d;

        /* renamed from: e  reason: collision with root package name */
        private final Object f2344e;

        /* renamed from: f  reason: collision with root package name */
        private int f2345f;

        a(Context context, int i9, Object obj) {
            this.f2342a = context;
            this.f2343d = i9;
            this.f2344e = obj;
        }

        a(Context context, Object obj) {
            this.f2342a = context;
            this.f2344e = obj;
        }

        @Override // cn.jiguang.bd.a
        public void a(Message message) {
            int i9 = message.what;
            if (i9 >= 60000) {
                if (this.f2344e instanceof cn.jiguang.ax.g) {
                    cn.jiguang.as.d.c("TcpReporter", "time to idle=" + this.f2344e);
                    i.a().a(this.f2342a, (cn.jiguang.ax.g) this.f2344e, 0);
                }
            } else if (i9 >= 50000) {
                Object obj = this.f2344e;
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    cn.jiguang.as.d.c("TcpReporter", "onTimeout=" + bVar);
                    i.a().a(bVar.f2352g, bVar.f2351f);
                    i.a().a(this.f2342a, bVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int i9 = this.f2343d;
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 == 3) {
                            Object obj = this.f2344e;
                            if (obj instanceof b) {
                                b bVar = (b) obj;
                                cn.jiguang.as.d.c("TcpReporter", "onResult, data=" + bVar + " code=" + this.f2345f);
                                JCoreManager.onEvent(this.f2342a, JConstants.SDK_TYPE, 61, "", null, Integer.valueOf(this.f2345f), bVar.f2347b, bVar.f2348c, Integer.valueOf(bVar.f2346a), bVar.f2349d, bVar.f2350e, bVar.f2355j);
                            }
                        }
                    } else if (this.f2344e instanceof cn.jiguang.ax.g) {
                        i.a().b(this.f2342a, (cn.jiguang.ax.g) this.f2344e);
                    }
                } else if (this.f2344e instanceof cn.jiguang.ax.g) {
                    i.a().a(this.f2342a, (cn.jiguang.ax.g) this.f2344e);
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        int f2346a;

        /* renamed from: b  reason: collision with root package name */
        JSONObject f2347b;

        /* renamed from: c  reason: collision with root package name */
        byte[] f2348c;

        /* renamed from: d  reason: collision with root package name */
        File f2349d;

        /* renamed from: e  reason: collision with root package name */
        Set<String> f2350e;

        /* renamed from: f  reason: collision with root package name */
        int f2351f = -1;

        /* renamed from: g  reason: collision with root package name */
        cn.jiguang.ax.g f2352g;

        /* renamed from: h  reason: collision with root package name */
        LinkedHashSet<cn.jiguang.ax.g> f2353h;

        /* renamed from: i  reason: collision with root package name */
        boolean f2354i;

        /* renamed from: j  reason: collision with root package name */
        transient ReportCallBack f2355j;

        public String toString() {
            return "TcpReportData{types=" + this.f2350e + ", seqId=" + this.f2351f + ", ipPort=" + this.f2352g + ", restUrls=" + this.f2353h + '}';
        }
    }

    private i() {
    }

    public static synchronized int a(Context context) {
        int intValue;
        synchronized (i.class) {
            Integer num = (Integer) cn.jiguang.g.b.b(context, cn.jiguang.g.a.I());
            if (num == null) {
                num = Integer.valueOf(Math.abs(new SecureRandom().nextInt(10000)));
            }
            Integer valueOf = Integer.valueOf((num.intValue() + 1) % 10000);
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.I().a((cn.jiguang.g.a<Integer>) valueOf));
            intValue = valueOf.intValue();
        }
        return intValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b a(cn.jiguang.ax.g gVar, int i9) {
        ConcurrentHashMap<Integer, b> concurrentHashMap;
        if (gVar == null || (concurrentHashMap = this.f2340d.get(gVar)) == null) {
            return null;
        }
        b bVar = concurrentHashMap.get(Integer.valueOf(i9));
        concurrentHashMap.remove(Integer.valueOf(i9));
        return bVar;
    }

    public static i a() {
        if (f2336a == null) {
            synchronized (i.class) {
                if (f2336a == null) {
                    f2336a = new i();
                }
            }
        }
        return f2336a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "normal";
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1245458676:
                if (str.equals(PushSA.REPORT_ACTIVE_LAUNCH)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1177318867:
                if (str.equals("account")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1091230153:
                if (str.equals("android_awake_target2")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1051289244:
                if (str.equals("active_user")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1039745817:
                if (str.equals("normal")) {
                    c10 = 4;
                    break;
                }
                break;
            case -820729752:
                if (str.equals(PushSA.REPORT_ACTIVE_TERMINATE)) {
                    c10 = 5;
                    break;
                }
                break;
            case -693746763:
                if (str.equals("android_awake")) {
                    c10 = 6;
                    break;
                }
                break;
            case -295020531:
                if (str.equals("android_notification_state")) {
                    c10 = 7;
                    break;
                }
                break;
            case -31313123:
                if (str.equals("android_awake2")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 96275:
                if (str.equals("aa3")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 2986591:
                if (str.equals("aat3")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 93223301:
                if (str.equals("awake")) {
                    c10 = 11;
                    break;
                }
                break;
            case 907150721:
                if (str.equals("detach_account")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1350272347:
                if (str.equals("android_awake_target")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 1973539834:
                if (str.equals("identify_account")) {
                    c10 = 14;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 3:
            case 5:
                return "active_user";
            case 1:
            case '\f':
            case 14:
                return "account";
            case 2:
            case 6:
            case '\b':
            case '\t':
            case '\n':
            case 11:
            case '\r':
                return "awake";
            case 4:
                break;
            case 7:
                return "android_notification_state";
            default:
                if (this.f2341f.containsKey(str)) {
                    return str;
                }
                break;
        }
        return "normal";
    }

    private LinkedHashSet<cn.jiguang.ax.g> a(Context context, Set<String> set) {
        LinkedHashSet<cn.jiguang.ax.g> linkedHashSet = new LinkedHashSet<>();
        cn.jiguang.ax.g a10 = cn.jiguang.ax.g.a(cn.jiguang.aw.a.d());
        if (a10 == null || !a10.a()) {
            Set<cn.jiguang.ax.g> b10 = b(context, set);
            if (b10 != null) {
                for (cn.jiguang.ax.g gVar : b10) {
                    if (gVar != null && gVar.a()) {
                        linkedHashSet.add(gVar);
                    }
                }
            }
        } else {
            linkedHashSet.add(a10);
        }
        cn.jiguang.as.d.c("TcpReporter", "tcp report find urls=" + linkedHashSet);
        return linkedHashSet;
    }

    private void a(Context context, int i9, cn.jiguang.bc.a aVar, cn.jiguang.ax.g gVar, b bVar) {
        byte[] a10 = a(context, bVar.f2348c, bVar.f2346a, bVar.f2351f);
        if (a10 == null || a10.length == 0) {
            cn.jiguang.as.d.c("TcpReporter", "package data failed, give up, data=" + bVar);
            a(context, bVar, -1);
            return;
        }
        cn.jiguang.as.d.c("TcpReporter", "send tcp data, len=" + a10.length + ", data=" + bVar);
        bVar.f2354i = true;
        aVar.a(a10);
        cn.jiguang.bd.b.a().b(i9 + 60000, 31000L, new a(context, gVar));
        cn.jiguang.bd.b.a().b(bVar.f2351f + 50000, 15000L, new a(context, bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jiguang.ax.g gVar) {
        cn.jiguang.bc.a aVar;
        if (gVar == null) {
            return;
        }
        try {
            Pair<Integer, cn.jiguang.bc.a> pair = this.f2339c.get(gVar);
            if (pair != null && (aVar = (cn.jiguang.bc.a) pair.second) != null && !aVar.b()) {
                cn.jiguang.as.d.c("TcpReporter", "start tcp socket(" + pair.first + "):" + gVar);
                if (aVar.a(gVar.f2161a, gVar.f2162b) != 0) {
                    a(context, gVar, 0);
                } else {
                    cn.jiguang.av.b.c(new a(context, 2, gVar), new int[0]);
                    a aVar2 = new a(context, gVar);
                    while (!this.f2338b.get()) {
                        try {
                            a(context, aVar.a(), gVar);
                            cn.jiguang.bd.b.a().b(((Integer) pair.first).intValue() + 60000, 31000L, aVar2);
                        } catch (f e10) {
                            if (e10.f2307a != -997) {
                                cn.jiguang.as.d.g("TcpReporter", "recv failed with error:" + e10);
                            }
                        }
                    }
                }
                a(context, gVar, 0);
                cn.jiguang.as.d.g("TcpReporter", this.f2338b.get() ? "Break receiving by wantStop" : "disconnected");
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.a("TcpReporter", "socket exception", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jiguang.ax.g gVar, int i9) {
        int i10;
        StringBuilder sb2;
        Pair<Integer, cn.jiguang.bc.a> remove = this.f2339c.remove(gVar);
        if (remove != null) {
            i10 = ((Integer) remove.first).intValue();
            cn.jiguang.f.i.a((Closeable) remove.second);
        } else {
            i10 = 0;
        }
        ConcurrentHashMap<Integer, b> remove2 = this.f2340d.remove(gVar);
        if (i9 == 0 && !cn.jiguang.f.a.d(context)) {
            i9 = -2;
        }
        if (remove2 == null || remove2.size() <= 0) {
            if (i10 > 0) {
                cn.jiguang.as.d.c("TcpReporter", "socket(" + i10 + ") at " + gVar + " is disconnected, no task left");
                return;
            }
            return;
        }
        if (i9 == 0) {
            sb2 = new StringBuilder();
            sb2.append("socket(");
            sb2.append(i10);
            sb2.append(") at ");
            sb2.append(gVar);
            sb2.append(" is disconnected, go on send waiting request");
        } else {
            sb2 = new StringBuilder();
            sb2.append("socket(");
            sb2.append(i10);
            sb2.append(") at ");
            sb2.append(gVar);
            sb2.append(" is disconnected, finish waiting request, code=");
            sb2.append(i9);
        }
        cn.jiguang.as.d.c("TcpReporter", sb2.toString());
        for (b bVar : remove2.values()) {
            if (bVar != null) {
                cn.jiguang.bd.b.a().b(bVar.f2351f + 50000);
                if (i9 == 0) {
                    a(context, bVar);
                } else {
                    a aVar = new a(context, 3, bVar);
                    aVar.f2345f = i9;
                    cn.jiguang.av.b.c(aVar, new int[0]);
                }
            }
        }
    }

    private synchronized void a(Context context, cn.jiguang.ax.g gVar, b bVar) {
        Pair<Integer, cn.jiguang.bc.a> pair = this.f2339c.get(gVar);
        cn.jiguang.bc.a aVar = pair != null ? (cn.jiguang.bc.a) pair.second : null;
        if (aVar == null) {
            this.f2339c.put(gVar, new Pair<>(Integer.valueOf(b()), new cn.jiguang.bc.b(30720, 19)));
            cn.jiguang.bg.d.a("ONCE_TASK", new a(context, 1, gVar));
        } else if (aVar.b()) {
            a(context, ((Integer) pair.first).intValue(), aVar, gVar, bVar);
        }
    }

    private void a(Context context, b bVar, int i9) {
        ConcurrentHashMap<Integer, b> concurrentHashMap;
        cn.jiguang.ax.g gVar = bVar.f2352g;
        if (gVar != null && (concurrentHashMap = this.f2340d.get(gVar)) != null) {
            concurrentHashMap.remove(Integer.valueOf(bVar.f2351f));
        }
        cn.jiguang.bd.b.a().b(bVar.f2351f + 50000);
        a aVar = new a(context, 3, bVar);
        aVar.f2345f = i9;
        cn.jiguang.av.b.c(aVar, new int[0]);
    }

    private void a(Context context, ByteBuffer byteBuffer, cn.jiguang.ax.g gVar) {
        try {
            cn.jiguang.as.d.c("TcpReporter", "Received bytes - len:" + byteBuffer.array().length);
            byte b10 = byteBuffer.get(2);
            if (b10 != 1 && b10 != 0) {
                cn.jiguang.as.d.g("TcpReporter", "wrong version");
            }
            short s10 = byteBuffer.getShort(15);
            short s11 = byteBuffer.getShort(17);
            cn.jiguang.as.d.c("TcpReporter", "onResult seqId=" + ((int) s10) + " code=" + ((int) s11));
            cn.jiguang.bd.b.a().b(50000 + s10);
            b a10 = a(gVar, s10);
            if (a10 != null) {
                if (s11 == 0) {
                    a aVar = new a(context, 3, a10);
                    aVar.f2345f = s11;
                    cn.jiguang.av.b.c(aVar, new int[0]);
                } else if (s11 == 401) {
                    a(context, gVar, s11);
                } else {
                    a(context, a10);
                }
            }
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("TcpReporter", "tcp reporter onReceive err:" + th2);
        }
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() != 0) {
            try {
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONArray optJSONArray = jSONObject.optJSONArray(next);
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    if (optJSONArray != null) {
                        for (int i9 = 0; i9 < optJSONArray.length(); i9++) {
                            cn.jiguang.ax.g a10 = cn.jiguang.ax.g.a(optJSONArray.getString(i9));
                            if (a10 != null && a10.a()) {
                                linkedHashSet.add(a10);
                            }
                        }
                    }
                    hashMap.put(next, linkedHashSet);
                }
                if (hashMap.isEmpty()) {
                    return;
                }
                this.f2341f = hashMap;
            } catch (JSONException unused) {
            }
        }
    }

    private static byte[] a(Context context, long j10, byte[] bArr) {
        String e10 = cn.jiguang.f.g.e((String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.e()));
        String b10 = cn.jiguang.f.g.b(bArr);
        byte[] c10 = cn.jiguang.f.g.c(j10 + e10 + b10);
        if (c10 == null) {
            return new byte[16];
        }
        if (c10.length == 16) {
            return c10;
        }
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 0, bArr2, 0, Math.min(c10.length, 16));
        return bArr2;
    }

    private byte[] a(Context context, byte[] bArr, int i9, int i10) {
        if (bArr == null || bArr.length == 0 || bArr.length > 30683) {
            return null;
        }
        cn.jiguang.be.b bVar = new cn.jiguang.be.b(bArr.length + 37);
        bVar.b(0);
        bVar.a(1);
        bVar.a(cn.jiguang.az.b.a().b());
        long longValue = ((Long) cn.jiguang.g.b.a(context, cn.jiguang.g.a.c())).longValue();
        bVar.b(longValue);
        bVar.a(a(context, longValue, bArr));
        bVar.a(i9);
        bVar.b(i10);
        bVar.a(bArr);
        bVar.b(bVar.a(), 0);
        return bVar.b();
    }

    private static synchronized int b() {
        int i9;
        synchronized (i.class) {
            i9 = (f2337e + 1) % 10000;
            f2337e = i9;
        }
        return i9;
    }

    private Set<cn.jiguang.ax.g> b(Context context, Set<String> set) {
        b(context);
        if (set != null && !set.isEmpty()) {
            Set<cn.jiguang.ax.g> set2 = null;
            for (String str : set) {
                Set<cn.jiguang.ax.g> set3 = this.f2341f.get(a(str));
                if (set3 != null && !set3.isEmpty()) {
                    if (set2 == null) {
                        set2 = set3;
                    } else {
                        set2.retainAll(set3);
                    }
                    if (set2.isEmpty()) {
                    }
                }
            }
            return set2;
        }
        return this.f2341f.get("normal");
    }

    private void b(Context context) {
        Map<String, Set<cn.jiguang.ax.g>> map = this.f2341f;
        if (map == null || map.isEmpty()) {
            String str = (String) cn.jiguang.g.b.a(context, cn.jiguang.g.a.R());
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                a(new JSONObject(str));
            } catch (JSONException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, cn.jiguang.ax.g gVar) {
        cn.jiguang.bc.a aVar;
        cn.jiguang.as.d.c("TcpReporter", "socket at " + gVar + " is connected, deal with waiting request");
        ConcurrentHashMap<Integer, b> concurrentHashMap = this.f2340d.get(gVar);
        Pair<Integer, cn.jiguang.bc.a> pair = this.f2339c.get(gVar);
        if (pair == null) {
            return;
        }
        if (concurrentHashMap != null && (aVar = (cn.jiguang.bc.a) pair.second) != null && aVar.b()) {
            for (b bVar : concurrentHashMap.values()) {
                if (bVar != null && !bVar.f2354i) {
                    a(context, ((Integer) pair.first).intValue(), aVar, gVar, bVar);
                }
            }
        }
        cn.jiguang.bd.b.a().b(((Integer) pair.first).intValue() + 60000, 31000L, new a(context, gVar));
    }

    public b a(Context context, JSONObject jSONObject, byte[] bArr, int i9, File file, Set<String> set, ReportCallBack reportCallBack) {
        b bVar = new b();
        bVar.f2347b = jSONObject;
        bVar.f2346a = i9;
        bVar.f2348c = bArr;
        bVar.f2349d = file;
        bVar.f2350e = set;
        bVar.f2351f = a(context);
        bVar.f2355j = reportCallBack;
        return bVar;
    }

    public void a(Context context, b bVar) {
        try {
            boolean z10 = bVar.f2353h == null;
            if (z10) {
                cn.jiguang.bd.b.a().a(context);
                bVar.f2353h = a(context, bVar.f2350e);
                cn.jiguang.as.d.c("TcpReporter", "tcp report begin=" + bVar);
            }
            if (!cn.jiguang.f.a.d(context)) {
                a(context, bVar, -2);
                return;
            }
            LinkedHashSet<cn.jiguang.ax.g> linkedHashSet = bVar.f2353h;
            if (linkedHashSet != null && !linkedHashSet.isEmpty()) {
                cn.jiguang.ax.g gVar = null;
                Iterator<cn.jiguang.ax.g> it = this.f2339c.keySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    cn.jiguang.ax.g next = it.next();
                    if (bVar.f2353h.contains(next)) {
                        cn.jiguang.as.d.c("TcpReporter", "use exist ipPort=" + next);
                        gVar = next;
                        break;
                    }
                }
                if (gVar == null) {
                    gVar = bVar.f2353h.iterator().next();
                    cn.jiguang.as.d.c("TcpReporter", "use next ipPort=" + gVar);
                }
                bVar.f2352g = gVar;
                bVar.f2353h.remove(gVar);
                if (z10) {
                    cn.jiguang.bd.b.a().b(bVar.f2351f + 50000, 15000L, new a(context, bVar));
                }
                ConcurrentHashMap<Integer, b> concurrentHashMap = this.f2340d.get(gVar);
                if (concurrentHashMap == null) {
                    concurrentHashMap = new ConcurrentHashMap<>();
                    this.f2340d.put(gVar, concurrentHashMap);
                }
                bVar.f2354i = false;
                concurrentHashMap.put(Integer.valueOf(bVar.f2351f), bVar);
                a(context, gVar, bVar);
                return;
            }
            a(context, bVar, -1);
        } catch (Throwable th2) {
            cn.jiguang.as.d.g("TcpReporter", "tcp upload e:" + th2);
        }
    }
}
