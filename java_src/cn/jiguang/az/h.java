package cn.jiguang.az;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import cn.jiguang.internal.JConstants;
import com.facebook.GraphResponse;
import com.google.android.gms.recaptcha.RecaptchaActionType;
import com.huawei.hms.framework.common.hianalytics.HianalyticsBaseData;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class h {

    /* renamed from: i  reason: collision with root package name */
    private static volatile h f2314i;

    /* renamed from: j  reason: collision with root package name */
    private static final Object f2315j = new Object();

    /* renamed from: a  reason: collision with root package name */
    private cn.jiguang.ax.h f2316a;

    /* renamed from: b  reason: collision with root package name */
    private int f2317b;

    /* renamed from: c  reason: collision with root package name */
    private int f2318c;

    /* renamed from: f  reason: collision with root package name */
    private long f2321f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f2322g;

    /* renamed from: k  reason: collision with root package name */
    private Context f2324k;

    /* renamed from: d  reason: collision with root package name */
    private int f2319d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f2320e = 0;

    /* renamed from: l  reason: collision with root package name */
    private boolean f2325l = false;

    /* renamed from: m  reason: collision with root package name */
    private final AtomicBoolean f2326m = new AtomicBoolean(false);

    /* renamed from: n  reason: collision with root package name */
    private cn.jiguang.bd.a f2327n = new cn.jiguang.bd.a() { // from class: cn.jiguang.az.h.1
        @Override // cn.jiguang.bd.a
        public void a(Message message) {
            h hVar;
            Context context;
            String str;
            Bundle bundle;
            boolean z10;
            if (message != null) {
                int i9 = message.what;
                if (i9 == 1011) {
                    hVar = h.this;
                    context = hVar.f2324k;
                    str = "tcp_a14";
                } else if (i9 != 1022) {
                    if (i9 == 2000) {
                        k.a().a(h.this.f2324k);
                        return;
                    }
                    switch (i9) {
                        case 1004:
                            bundle = new Bundle();
                            z10 = true;
                            break;
                        case 1005:
                            bundle = new Bundle();
                            z10 = false;
                            break;
                        case 1006:
                        case 1007:
                            hVar = h.this;
                            context = hVar.f2324k;
                            str = "tcp_a2";
                            break;
                        default:
                            return;
                    }
                    bundle.putBoolean("force", z10);
                    h hVar2 = h.this;
                    hVar2.a(hVar2.f2324k, "tcp_a16", bundle);
                    return;
                } else {
                    hVar = h.this;
                    context = hVar.f2324k;
                    str = "tcp_a17";
                }
                hVar.a(context, str, null);
            }
        }
    };

    /* renamed from: o  reason: collision with root package name */
    private boolean f2328o = false;

    /* renamed from: p  reason: collision with root package name */
    private int f2329p = 0;

    /* renamed from: q  reason: collision with root package name */
    private int f2330q = 0;

    /* renamed from: h  reason: collision with root package name */
    private boolean f2323h = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends cn.jiguang.bg.b {

        /* renamed from: b  reason: collision with root package name */
        private Context f2333b;

        /* renamed from: c  reason: collision with root package name */
        private String f2334c;

        /* renamed from: d  reason: collision with root package name */
        private Bundle f2335d;

        public a(Context context, String str, Bundle bundle) {
            this.f2333b = context;
            this.f2334c = str;
            this.f2335d = bundle;
            this.f2494h = "TcpManager";
        }

        @Override // cn.jiguang.bg.b
        public void a() {
            h hVar;
            long j10;
            try {
                if (!this.f2334c.equals("tcp_a1")) {
                    if (!this.f2334c.equals("tcp_a3") && !this.f2334c.equals("tcp_a4") && !this.f2334c.equals("tcp_a20")) {
                        if (this.f2334c.equals("tcp_a5")) {
                            Bundle bundle = this.f2335d;
                            if (bundle != null) {
                                byte[] byteArray = bundle.getByteArray("body");
                                int i9 = this.f2335d.getInt("cmd", -1);
                                int i10 = this.f2335d.getInt("ver", -1);
                                long j11 = this.f2335d.getLong("rid", -1L);
                                String string = this.f2335d.getString(HianalyticsBaseData.SDK_TYPE);
                                long j12 = this.f2335d.getLong("timeout");
                                cn.jiguang.as.d.c("JCoreTCPManager", "send quest,cmd:" + i9 + ",ver:" + i10 + ",rid:" + j11 + ",body size:" + byteArray.length);
                                if (i9 >= 0 && i10 >= 0 && j11 >= 0 && !TextUtils.isEmpty(string)) {
                                    j.a().a(this.f2333b, j11, i9, i10, byteArray, string, j12);
                                    return;
                                }
                                return;
                            }
                            return;
                        } else if (this.f2334c.equals("tcp_a19")) {
                            h.this.l();
                            return;
                        } else if (this.f2334c.equals("tcp_a11")) {
                            cn.jiguang.as.d.d("JCoreTCPManager", "resgiter success:" + cn.jiguang.d.a.b(this.f2333b));
                            cn.jiguang.f.a.h(this.f2333b);
                            b a10 = b.a();
                            Context context = this.f2333b;
                            a10.a(context, 0, 0, cn.jiguang.d.a.b(context));
                            e.a(this.f2333b, "on_register", null);
                            return;
                        } else if (this.f2334c.equals("tcp_a10")) {
                            h.this.j();
                            return;
                        } else if (this.f2334c.equals("tcp_a9")) {
                            h.this.d(this.f2333b);
                            return;
                        } else if (this.f2334c.equals("tcp_a8")) {
                            h.this.b(this.f2333b);
                            return;
                        } else if (this.f2334c.equals("tcp_a2")) {
                            g.a().a(this.f2333b, false);
                            h.this.a(this.f2335d);
                            return;
                        } else if (this.f2334c.equals("tcp_a13")) {
                            cn.jiguang.as.d.d("JCoreTCPManager", "resgiter failed");
                            Bundle bundle2 = this.f2335d;
                            if (bundle2 != null) {
                                int i11 = bundle2.getInt("resCode", 0);
                                h.this.f2318c = i11;
                                cn.jiguang.ax.c.a(this.f2333b, i11);
                                return;
                            }
                            return;
                        } else if (this.f2334c.equals("tcp_a12")) {
                            cn.jiguang.as.d.d("JCoreTCPManager", "login failed");
                            Bundle bundle3 = this.f2335d;
                            if (bundle3 != null) {
                                h.this.a(bundle3.getInt("resCode", 0));
                                return;
                            }
                            return;
                        } else if (this.f2334c.equals("tcp_a14")) {
                            hVar = h.this;
                        } else if (this.f2334c.equals("tcp_a15")) {
                            h.this.b(this.f2335d);
                            return;
                        } else if (this.f2334c.equals("tcp_a16")) {
                            h.this.c(this.f2335d);
                            return;
                        } else if (this.f2334c.equals("tcp_a17")) {
                            h.this.q();
                            return;
                        } else if (this.f2334c.equals("tcp_a18")) {
                            h.this.s();
                            return;
                        } else if (this.f2334c.equals("tcp_a6")) {
                            Bundle bundle4 = this.f2335d;
                            if (bundle4 != null) {
                                long j13 = bundle4.getLong("rid", -1L);
                                if (j13 > 0) {
                                    j.a().b(this.f2333b, j13);
                                    return;
                                }
                                return;
                            }
                            return;
                        } else if (this.f2334c.equals("tcp_a7")) {
                            Bundle bundle5 = this.f2335d;
                            if (bundle5 != null) {
                                long j14 = bundle5.getLong("rid", -1L);
                                if (j14 > 0) {
                                    j.a().a(this.f2333b, j14);
                                    return;
                                }
                                return;
                            }
                            return;
                        } else if (this.f2334c.equals("tcp_a21")) {
                            h.this.k();
                            return;
                        } else if (this.f2334c.equals("tcp_a22")) {
                            h.this.b();
                            return;
                        } else if (this.f2334c.equals("tcp_a23")) {
                            h.this.c(this.f2333b);
                            return;
                        } else if (!this.f2334c.equals("tcp_a24")) {
                            return;
                        } else {
                            h.this.m();
                            h.this.f2318c = 0;
                            h.this.f2317b = 0;
                            hVar = h.this;
                        }
                    }
                    if (h.this.f2316a != null) {
                        if (h.this.f2316a.d() != null) {
                            byte[] byteArray2 = this.f2335d.getByteArray("body");
                            int i12 = this.f2335d.getInt("cmd", -1);
                            int i13 = this.f2335d.getInt("ver", -1);
                            long j15 = this.f2335d.getLong("rid", -1L);
                            String string2 = this.f2335d.getString(HianalyticsBaseData.SDK_TYPE);
                            cn.jiguang.as.d.c("JCoreTCPManager", "send data,cmd:" + i12 + ",ver:" + i13 + ",rid:" + j15 + ",body size:" + byteArray2.length);
                            if (i12 >= 0 && i13 >= 0 && j15 >= 0) {
                                if (this.f2334c.equals("tcp_a3")) {
                                    j.a().a(this.f2333b, j15, i12, i13, byteArray2, string2);
                                    return;
                                }
                                if (this.f2334c.equals("tcp_a20")) {
                                    long j16 = this.f2335d.getLong("uid", 0L);
                                    if (j16 == 0) {
                                        cn.jiguang.as.d.g("JCoreTCPManager", "share response uid is 0");
                                        return;
                                    }
                                    j10 = j16;
                                } else {
                                    j10 = 0;
                                }
                                h.a().c().d().a(cn.jiguang.bb.b.a(this.f2333b, i12, i13, j15, byteArray2, j10));
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    cn.jiguang.as.d.c("JCoreTCPManager", "send data failed:tcp breaked,will restart");
                    hVar = h.this;
                } else if (h.this.f2316a != null) {
                    return;
                } else {
                    hVar = h.this;
                }
                hVar.o();
            } catch (Throwable th2) {
                cn.jiguang.as.d.h("JCoreTCPManager", "tcp action failed:" + th2.getMessage());
            }
        }
    }

    private h() {
    }

    public static h a() {
        if (f2314i == null) {
            synchronized (f2315j) {
                if (f2314i == null) {
                    f2314i = new h();
                }
            }
        }
        return f2314i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i9) {
        this.f2317b = i9;
        if (i9 == 1012) {
            cn.jiguang.ax.c.a(this.f2324k);
        }
        m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        cn.jiguang.as.d.c("JCoreTCPManager", "handleStop...");
        if (((Boolean) cn.jiguang.g.b.a(context, cn.jiguang.g.a.A())).booleanValue()) {
            cn.jiguang.as.d.d("JCoreTCPManager", "tcp already stoped");
        } else if (!b.a().a(0)) {
            cn.jiguang.as.d.c("JCoreTCPManager", "Action: handleStopPush - can't stop tcp");
        } else {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.A().a((cn.jiguang.g.a<Boolean>) Boolean.TRUE));
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context) {
        cn.jiguang.as.d.c("JCoreTCPManager", "handleUnRegister...");
        if (!((Boolean) cn.jiguang.g.b.a(context, cn.jiguang.g.a.n())).booleanValue()) {
            cn.jiguang.as.d.d("JCoreTCPManager", "tcp already stoped");
        } else if (!b.a().a(0)) {
            cn.jiguang.as.d.c("JCoreTCPManager", "Action: handleUnRegister - can't stop tcp");
        } else {
            cn.jiguang.g.b.a(context, cn.jiguang.g.a.n().a((cn.jiguang.g.a<Boolean>) Boolean.FALSE));
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Bundle bundle) {
        String str;
        if (this.f2326m.get()) {
            str = "isBeating, skip this time";
        } else {
            if ((bundle != null ? bundle.getBoolean("force", false) : false) || !p()) {
                cn.jiguang.as.d.d("JCoreTCPManager", "Send heart beat");
                cn.jiguang.bd.b.a().b(1005);
                if (this.f2322g) {
                    r();
                    return;
                } else {
                    cn.jiguang.as.d.c("JCoreTCPManager", "socket is closed or push isn't login");
                    return;
                }
            }
            str = "No need to rtc, Because it have succeed recently";
        }
        cn.jiguang.as.d.c("JCoreTCPManager", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        String str;
        cn.jiguang.as.d.c("JCoreTCPManager", "handleResume...");
        cn.jiguang.g.b.a(context, cn.jiguang.g.a.A().a((cn.jiguang.g.a<Boolean>) Boolean.FALSE));
        if (this.f2322g) {
            str = "[handleResume] is loggedin";
        } else if (this.f2316a == null) {
            o();
            return;
        } else {
            str = "[handleResume] tcp is connecting...";
        }
        cn.jiguang.as.d.c("JCoreTCPManager", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        cn.jiguang.as.d.d("JCoreTCPManager", "Action - onLoggedIn");
        if (!this.f2322g) {
            this.f2322g = true;
            b.a().a(this.f2324k, 1, 0, GraphResponse.SUCCESS_KEY);
        }
        b();
        this.f2319d = 0;
        this.f2320e = 0;
        cn.jiguang.as.d.c("JCoreTCPManager", "Force to send 12s heartbeat after login");
        cn.jiguang.a.a.a(this.f2324k, true, 12000L);
        Bundle bundle = new Bundle();
        bundle.putBoolean(RecaptchaActionType.LOGIN, true);
        e.a(this.f2324k, "periodtask", bundle);
        if (k()) {
            cn.jiguang.bd.b.a().b(2000, 2000L, this.f2327n);
            cn.jiguang.e.a.b().a(this.f2324k);
            j.a().a(this.f2324k);
            g.a().a(this.f2324k, true);
            cn.jiguang.ar.b.a(this.f2324k);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        if (cn.jiguang.ar.c.a().a(this.f2324k) || k.a().b(this.f2324k)) {
            return true;
        }
        cn.jiguang.as.d.c("JCoreTCPManager", "not keep tcp");
        this.f2323h = false;
        m();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        cn.jiguang.as.d.d("JCoreTCPManager", "Action - onDisconnected");
        if (this.f2322g) {
            this.f2322g = false;
            b.a().a(this.f2324k, -1, -1, "push connect break");
        }
        if (this.f2316a == null && ((Boolean) cn.jiguang.g.b.a(this.f2324k, cn.jiguang.g.a.A())).booleanValue()) {
            cn.jiguang.as.d.c("JCoreTCPManager", "push already stopped!!!");
            return;
        }
        this.f2320e = 0;
        m();
        n();
        this.f2319d++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        cn.jiguang.ax.h hVar = this.f2316a;
        if (hVar == null) {
            cn.jiguang.as.d.c("JCoreTCPManager", "tcp has stopeed");
            return;
        }
        hVar.c();
        this.f2316a = null;
    }

    private void n() {
        String str;
        String str2;
        cn.jiguang.as.d.d("JCoreTCPManager", "Action - retryConnect - disconnectedTimes:" + this.f2319d);
        if (!cn.jiguang.f.a.d(this.f2324k.getApplicationContext())) {
            str2 = "[retryConnect] network is not connect";
        } else if (this.f2318c <= 0) {
            int c10 = cn.jiguang.f.a.c(this.f2324k.getApplicationContext());
            int pow = (int) (Math.pow(2.0d, this.f2319d) * 3.0d * 1000.0d);
            int f10 = f();
            int i9 = (f10 * 1000) / 2;
            if (pow > i9) {
                pow = i9;
            }
            cn.jiguang.as.d.c("JCoreTCPManager", "[retryConnect] mDisconnectedTimes:" + this.f2319d + ",chargedLever:" + c10 + ",heartbeatInterval:" + f10 + ",delayTime:" + pow);
            if (c10 != 1 ? this.f2319d >= 5 : this.f2319d >= 30) {
                str = "Give up to retry connect.";
            } else if (!cn.jiguang.bd.b.a().a(1011)) {
                cn.jiguang.bd.b.a().b(1011, pow, this.f2327n);
                return;
            } else {
                str = "Already has MSG_RESTART_CONN";
            }
            cn.jiguang.as.d.c("JCoreTCPManager", str);
            return;
        } else {
            str2 = "[retryConnect] registerErrCode >0,registerErrCode:" + this.f2318c;
        }
        cn.jiguang.as.d.c("JCoreTCPManager", str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o() {
        cn.jiguang.as.d.d("JCoreTCPManager", "Action - restartNetworkingClient, pid:" + Process.myPid());
        if (!this.f2323h) {
            cn.jiguang.as.d.f("JCoreTCPManager", "need not keep tcp,next start app will re login");
        } else if (!cn.jiguang.f.a.d(this.f2324k.getApplicationContext())) {
            cn.jiguang.as.d.f("JCoreTCPManager", "No network connection. Give up to start connection thread.");
        } else if (((Boolean) cn.jiguang.g.b.a(this.f2324k, cn.jiguang.g.a.A())).booleanValue()) {
            cn.jiguang.as.d.d("JCoreTCPManager", "[restartNetworkingClient] tcp has close by active");
        } else if (!((Boolean) cn.jiguang.g.b.a(this.f2324k, cn.jiguang.g.a.n())).booleanValue()) {
            cn.jiguang.as.d.d("JCoreTCPManager", "[restartNetworkingClient] tcp has close by ups.unregister");
        } else {
            int i9 = this.f2318c;
            if (i9 != 1005 && i9 != 1006 && i9 != 1008 && i9 != 1009) {
                if (this.f2317b == 102) {
                    cn.jiguang.as.d.h("JCoreTCPManager", "login failed:102,give up start connection thread.reset from next app start");
                    return;
                } else if (this.f2316a != null) {
                    cn.jiguang.as.d.d("JCoreTCPManager", "NetworkingClient is running");
                    return;
                } else {
                    cn.jiguang.ax.h hVar = new cn.jiguang.ax.h(this.f2324k.getApplicationContext());
                    this.f2316a = hVar;
                    hVar.b();
                    return;
                }
            }
            cn.jiguang.as.d.c("JCoreTCPManager", "[restartNetworkingClient] registerErrCode >0,registerErrCode:" + this.f2318c);
            b.a().a(this.f2324k, 2002, this.f2318c, "");
        }
    }

    private boolean p() {
        int i9 = this.f2329p;
        long currentTimeMillis = System.currentTimeMillis() - this.f2321f;
        return i9 > 0 ? currentTimeMillis < ((long) (this.f2329p + (-4))) * 1000 : currentTimeMillis < 18000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        this.f2326m.set(false);
        this.f2320e++;
        cn.jiguang.as.d.d("JCoreTCPManager", "Action - onHeartbeatTimeout - timeoutTimes:" + this.f2320e);
        cn.jiguang.as.d.b("JCoreTCPManager", "============================================================");
        if (this.f2316a != null && !this.f2322g) {
            cn.jiguang.as.d.d("JCoreTCPManager", "Is connecting now. Give up to retry.");
        } else if (!this.f2322g || this.f2320e > 1) {
            m();
            n();
        } else {
            cn.jiguang.as.d.d("JCoreTCPManager", "Already logged in. Give up to retry.");
            cn.jiguang.bd.b.a().b(1005, 5000L, this.f2327n);
        }
    }

    private void r() {
        this.f2326m.set(true);
        cn.jiguang.bd.b.a().b(1022);
        Long valueOf = Long.valueOf(cn.jiguang.ax.c.c(this.f2324k));
        long f10 = cn.jiguang.d.a.f(this.f2324k);
        int i9 = cn.jiguang.av.b.f2131b;
        cn.jiguang.as.d.c("JCoreTCPManager", "heartbeat - juid:" + f10 + ", flag:1 ,userType:" + i9);
        byte[] a10 = cn.jiguang.bb.b.a(this.f2324k, cn.jiguang.bb.b.a(valueOf.longValue(), JConstants.tcpSessionId, f10, (short) 1, i9));
        if (a10 != null) {
            this.f2316a.d().a(a10);
        } else {
            cn.jiguang.as.d.h("JCoreTCPManager", "send hb failed:sendData is null");
        }
        cn.jiguang.bd.b.a().b(1022, 10000L, this.f2327n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        cn.jiguang.as.d.d("JCoreTCPManager", "Action - onHeartbeatSucceed");
        b.a().a(this.f2324k, 19, 0, "ack success");
    }

    public synchronized void a(Context context) {
        if (this.f2325l) {
            return;
        }
        if (context == null) {
            cn.jiguang.as.d.c("JCoreTCPManager", "init context is null");
            return;
        }
        cn.jiguang.as.d.c("JCoreTCPManager", "init tcp manager...");
        this.f2324k = context.getApplicationContext();
        cn.jiguang.av.b.a("JCoreTCPManager");
        cn.jiguang.bd.b.a().a(this.f2324k);
        g.a().a(context, true);
        this.f2325l = true;
    }

    public void a(Context context, String str, Bundle bundle) {
        a(context);
        cn.jiguang.av.b.c(new a(context, str, bundle), new int[0]);
    }

    public void a(Bundle bundle) {
        long j10;
        if (((Boolean) cn.jiguang.g.b.a(this.f2324k, cn.jiguang.g.a.A())).booleanValue()) {
            cn.jiguang.as.d.d("JCoreTCPManager", "[rtc] tcp has close by active");
            return;
        }
        boolean z10 = true;
        if (bundle != null) {
            z10 = bundle.getBoolean("force", true);
            j10 = bundle.getLong("delay_time", 0L);
        } else {
            j10 = 0;
        }
        if (this.f2316a == null) {
            o();
            return;
        }
        if (j10 <= 0) {
            c(bundle);
        } else {
            if (z10) {
                cn.jiguang.bd.b.a().b(1005);
                cn.jiguang.bd.b.a().b(1004);
            }
            cn.jiguang.bd.b.a().b(z10 ? 1004 : 1005, j10, this.f2327n);
        }
        cn.jiguang.as.d.e("JCoreTCPManager", "send rtc force=" + z10 + " delay=" + j10);
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                boolean optBoolean = jSONObject.optBoolean("use_ssp");
                this.f2328o = optBoolean;
                if (optBoolean) {
                    int optInt = jSONObject.optInt("hb_interval");
                    if (optInt <= 0) {
                        cn.jiguang.as.d.g("JCoreTCPManager", "hb_interval is less than 0, will use 15s");
                        this.f2329p = 15;
                    } else if (optInt >= JConstants.DEFAULT_HEARTBEAT_INTERVAL / 2) {
                        cn.jiguang.as.d.g("JCoreTCPManager", "hb_interval is more than " + JConstants.DEFAULT_HEARTBEAT_INTERVAL + ", will use " + JConstants.DEFAULT_HEARTBEAT_INTERVAL + NotifyType.SOUND);
                        int i9 = JConstants.DEFAULT_HEARTBEAT_INTERVAL;
                        this.f2329p = 0;
                    } else {
                        cn.jiguang.as.d.g("JCoreTCPManager", "set ssp heartbeat interval:" + optInt);
                        this.f2329p = optInt;
                    }
                    if (this.f2329p > 0) {
                        i();
                    }
                }
            } catch (Throwable th2) {
                cn.jiguang.as.d.g("JCoreTCPManager", "[TcpManager] handleCtrlHeartBeatCmd error:" + th2);
            }
        }
    }

    public void b() {
        cn.jiguang.bd.b.a().b(1022);
        this.f2321f = System.currentTimeMillis();
        this.f2320e = 0;
        this.f2326m.set(false);
        cn.jiguang.as.d.e("JCoreTCPManager", "update rtc state");
    }

    public void b(Bundle bundle) {
        if (((Boolean) cn.jiguang.g.b.a(this.f2324k, cn.jiguang.g.a.A())).booleanValue()) {
            cn.jiguang.as.d.g("JCoreTCPManager", "[netWorkChanged] tcp has close by active");
            return;
        }
        cn.jiguang.bd.b.a().b(1006);
        cn.jiguang.bd.b.a().b(1007);
        if (!bundle.getBoolean("connected", false)) {
            cn.jiguang.as.d.c("JCoreTCPManager", "Handle disconnected state.");
            cn.jiguang.bd.b.a().b(1007, 3000L, this.f2327n);
            return;
        }
        cn.jiguang.as.d.c("JCoreTCPManager", "Handle connected state.");
        if (this.f2316a == null) {
            o();
        } else {
            cn.jiguang.bd.b.a().b(1006, 3000L, this.f2327n);
        }
    }

    public cn.jiguang.ax.h c() {
        return this.f2316a;
    }

    public boolean d() {
        return this.f2322g;
    }

    public void e() {
        cn.jiguang.as.d.c("JCoreTCPManager", "updateHeartBeatInterval  -- current HeartBeatInterval = " + this.f2330q);
        int i9 = this.f2329p;
        if (i9 > 0) {
            int i10 = this.f2330q;
            if (i10 == 0) {
                this.f2330q = i9 * 2;
                return;
            }
            int i11 = i10 * 2;
            int i12 = JConstants.DEFAULT_HEARTBEAT_INTERVAL;
            if (i11 < i12 / 2) {
                this.f2330q = i10 * 2;
            } else {
                this.f2330q = i12;
            }
        }
    }

    public int f() {
        cn.jiguang.as.d.c("JCoreTCPManager", "getHeartBeatInterval  -- current HeartBeatInterval = " + this.f2330q);
        int i9 = this.f2329p;
        if (i9 > 0) {
            int i10 = this.f2330q;
            return i10 == 0 ? i9 : i10;
        }
        return JConstants.DEFAULT_HEARTBEAT_INTERVAL;
    }

    public int g() {
        cn.jiguang.as.d.c("JCoreTCPManager", "getNextHbIntervalForLog  -- current HeartBeatInterval = " + this.f2330q);
        int i9 = this.f2329p;
        if (i9 > 0) {
            int i10 = this.f2330q;
            if (i10 == 0) {
                int i11 = i9 * 2;
                int i12 = JConstants.DEFAULT_HEARTBEAT_INTERVAL;
                return i11 < i12 / 2 ? i9 * 2 : i12;
            }
            int i13 = i10 * 2;
            int i14 = JConstants.DEFAULT_HEARTBEAT_INTERVAL;
            return i13 < i14 / 2 ? i10 * 2 : i14;
        }
        return JConstants.DEFAULT_HEARTBEAT_INTERVAL;
    }

    public int h() {
        cn.jiguang.as.d.c("JCoreTCPManager", "getAlarmDelay  -- current HeartBeatInterval = " + this.f2330q);
        int i9 = this.f2329p;
        if (i9 > 0) {
            int i10 = this.f2330q;
            return i10 == 0 ? i9 + 5 : i10 + 5;
        }
        return JConstants.DEFAULT_ALARM_DELAY;
    }

    public void i() {
        this.f2330q = 0;
        g.a().b();
    }
}
