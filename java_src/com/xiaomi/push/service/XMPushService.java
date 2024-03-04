package com.xiaomi.push.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.MIPushProvider;
import com.xiaomi.channel.commonutils.android.Region;
import com.xiaomi.push.a3;
import com.xiaomi.push.cd;
import com.xiaomi.push.cz;
import com.xiaomi.push.dq;
import com.xiaomi.push.dt;
import com.xiaomi.push.du;
import com.xiaomi.push.ej;
import com.xiaomi.push.f3;
import com.xiaomi.push.l3;
import com.xiaomi.push.p3;
import com.xiaomi.push.service.az;
import com.xiaomi.push.service.x1;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.light.utils.FileUtils;
/* loaded from: classes5.dex */
public class XMPushService extends Service implements com.xiaomi.push.e1 {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f37090b = false;

    /* renamed from: a  reason: collision with other field name */
    private ContentObserver f332a;

    /* renamed from: a  reason: collision with other field name */
    private com.xiaomi.push.c1 f334a;

    /* renamed from: a  reason: collision with other field name */
    private com.xiaomi.push.d1 f335a;

    /* renamed from: a  reason: collision with other field name */
    private a f337a;

    /* renamed from: a  reason: collision with other field name */
    private f f338a;

    /* renamed from: a  reason: collision with other field name */
    private k f339a;

    /* renamed from: a  reason: collision with other field name */
    private r f340a;

    /* renamed from: a  reason: collision with other field name */
    private t f341a;

    /* renamed from: a  reason: collision with other field name */
    private j0 f342a;

    /* renamed from: a  reason: collision with other field name */
    private s1 f343a;

    /* renamed from: a  reason: collision with other field name */
    private com.xiaomi.push.y0 f346a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f350a = false;

    /* renamed from: a  reason: collision with root package name */
    private int f37091a = 0;

    /* renamed from: b  reason: collision with other field name */
    private int f351b = 0;

    /* renamed from: a  reason: collision with other field name */
    private long f331a = 0;

    /* renamed from: a  reason: collision with other field name */
    protected Class f347a = XMJobService.class;

    /* renamed from: a  reason: collision with other field name */
    private y f345a = null;

    /* renamed from: a  reason: collision with other field name */
    private x1 f344a = null;

    /* renamed from: a  reason: collision with other field name */
    Messenger f333a = null;

    /* renamed from: a  reason: collision with other field name */
    private Collection<com.xiaomi.push.service.m> f349a = Collections.synchronizedCollection(new ArrayList());

    /* renamed from: a  reason: collision with other field name */
    private ArrayList<n> f348a = new ArrayList<>();

    /* renamed from: a  reason: collision with other field name */
    private com.xiaomi.push.g1 f336a = new y0(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final Object f37092a;

        private a() {
            this.f37092a = new Object();
        }

        /* synthetic */ a(XMPushService xMPushService, y0 y0Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                tf.c.u("[Alarm] Cannot perform lock.notifyAll in the UI thread!");
                return;
            }
            synchronized (this.f37092a) {
                try {
                    this.f37092a.notifyAll();
                } catch (Exception e10) {
                    tf.c.l("[Alarm] notify lock. " + e10);
                }
            }
        }

        private void b(long j10) {
            if (Looper.myLooper() == Looper.getMainLooper()) {
                tf.c.u("[Alarm] Cannot perform lock.wait in the UI thread!");
                return;
            }
            synchronized (this.f37092a) {
                try {
                    this.f37092a.wait(j10);
                } catch (InterruptedException e10) {
                    tf.c.l("[Alarm] interrupt from waiting state. " + e10);
                }
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            long currentTimeMillis = System.currentTimeMillis();
            tf.c.t("[Alarm] heartbeat alarm has been triggered.");
            if (!e0.f37225n.equals(intent.getAction())) {
                tf.c.l("[Alarm] cancel the old ping timer");
                com.xiaomi.push.n0.a();
            } else if (TextUtils.equals(context.getPackageName(), intent.getPackage())) {
                tf.c.t("[Alarm] Ping XMChannelService on timer");
                try {
                    Intent intent2 = new Intent(context, XMPushService.class);
                    intent2.putExtra("time_stamp", System.currentTimeMillis());
                    intent2.setAction("com.xiaomi.push.timer");
                    com.xiaomi.push.service.a.h(context).i(intent2);
                    b(3000L);
                    tf.c.l("[Alarm] heartbeat alarm finish in " + (System.currentTimeMillis() - currentTimeMillis));
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b extends j {

        /* renamed from: b  reason: collision with root package name */
        az.b f37094b;

        public b(az.b bVar) {
            super(9);
            this.f37094b = bVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "bind the client. " + this.f37094b.f37148h;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            String str;
            try {
                if (!XMPushService.this.m1542d()) {
                    tf.c.u("trying bind while the connection is not created, quit!");
                    return;
                }
                az c10 = az.c();
                az.b bVar = this.f37094b;
                az.b b10 = c10.b(bVar.f37148h, bVar.f37142b);
                if (b10 == null) {
                    str = "ignore bind because the channel " + this.f37094b.f37148h + " is removed ";
                } else if (b10.f37153m == az.c.unbind) {
                    b10.k(az.c.binding, 0, 0, null, null);
                    XMPushService.this.f334a.k(b10);
                    return;
                } else {
                    str = "trying duplicate bind, ingore! " + b10.f37153m;
                }
                tf.c.l(str);
            } catch (Exception e10) {
                tf.c.u("Meet error when trying to bind. " + e10);
                XMPushService.this.a(10, e10);
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class c extends j {

        /* renamed from: b  reason: collision with root package name */
        private final az.b f37096b;

        public c(az.b bVar) {
            super(12);
            this.f37096b = bVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "bind time out. chid=" + this.f37096b.f37148h;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            this.f37096b.k(az.c.unbind, 1, 21, null, null);
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return TextUtils.equals(((c) obj).f37096b.f37148h, this.f37096b.f37148h);
            }
            return false;
        }

        public int hashCode() {
            return this.f37096b.f37148h.hashCode();
        }
    }

    /* loaded from: classes5.dex */
    class d extends j {

        /* renamed from: b  reason: collision with root package name */
        private com.xiaomi.push.r0 f37097b;

        public d(com.xiaomi.push.r0 r0Var) {
            super(8);
            this.f37097b = r0Var;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "receive a message.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            XMPushService.this.f345a.a(this.f37097b);
        }
    }

    /* loaded from: classes5.dex */
    public class e extends j {
        /* JADX INFO: Access modifiers changed from: package-private */
        public e() {
            super(1);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "do reconnect..";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            if (XMPushService.this.m1540b()) {
                XMPushService xMPushService = XMPushService.this;
                if (xMPushService.a(xMPushService.getApplicationContext())) {
                    XMPushService.this.f();
                    return;
                }
            }
            tf.c.l("should not connect. quit the job.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class f extends BroadcastReceiver {
        f() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            tf.c.l("network changed, " + sf.e.d(intent));
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* loaded from: classes5.dex */
    public class g extends j {

        /* renamed from: b  reason: collision with root package name */
        public int f37101b;

        /* renamed from: c  reason: collision with root package name */
        public Exception f37102c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public g(int i9, Exception exc) {
            super(2);
            this.f37101b = i9;
            this.f37102c = exc;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "disconnect the connection.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            XMPushService.this.a(this.f37101b, this.f37102c);
        }
    }

    /* loaded from: classes5.dex */
    class h extends j {
        h() {
            super(65535);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "Init Job";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            XMPushService.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class i extends j {

        /* renamed from: b  reason: collision with root package name */
        private Intent f37105b;

        public i(Intent intent) {
            super(15);
            this.f37105b = intent;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "Handle intent action = " + this.f37105b.getAction();
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            XMPushService.this.d(this.f37105b);
        }
    }

    /* loaded from: classes5.dex */
    public static abstract class j extends x1.b {
        public j(int i9) {
            super(i9);
        }

        public abstract String b();

        public abstract void c();

        @Override // java.lang.Runnable
        public void run() {
            int i9 = this.f37403a;
            if (i9 != 4 && i9 != 8) {
                tf.c.m(tf.b.f58139a, b());
            }
            c();
        }
    }

    /* loaded from: classes5.dex */
    class k extends BroadcastReceiver {
        k() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            tf.c.l("[HB] hold short heartbeat, " + sf.e.d(intent));
            if (intent == null || intent.getExtras() == null) {
                return;
            }
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* loaded from: classes5.dex */
    class l extends j {
        public l() {
            super(5);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "ask the job queue to quit";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            XMPushService.this.f344a.b();
        }
    }

    /* loaded from: classes5.dex */
    class m extends j {

        /* renamed from: b  reason: collision with root package name */
        private com.xiaomi.push.r1 f37109b;

        public m(com.xiaomi.push.r1 r1Var) {
            super(8);
            this.f37109b = r1Var;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "receive a message.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            XMPushService.this.f345a.c(this.f37109b);
        }
    }

    /* loaded from: classes5.dex */
    public interface n {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class o extends j {

        /* renamed from: b  reason: collision with root package name */
        boolean f37111b;

        public o(boolean z10) {
            super(4);
            this.f37111b = z10;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "send ping..";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            if (XMPushService.this.m1542d()) {
                try {
                    XMPushService.this.f334a.w(this.f37111b);
                } catch (cd e10) {
                    tf.c.o(e10);
                    XMPushService.this.a(10, e10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class p extends j {

        /* renamed from: b  reason: collision with root package name */
        az.b f37113b;

        public p(az.b bVar) {
            super(4);
            this.f37113b = bVar;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "rebind the client. " + this.f37113b.f37148h;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            try {
                this.f37113b.k(az.c.unbind, 1, 16, null, null);
                com.xiaomi.push.c1 c1Var = XMPushService.this.f334a;
                az.b bVar = this.f37113b;
                c1Var.m(bVar.f37148h, bVar.f37142b);
                XMPushService xMPushService = XMPushService.this;
                xMPushService.a(new b(this.f37113b), 300L);
            } catch (cd e10) {
                tf.c.o(e10);
                XMPushService.this.a(10, e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class q extends j {
        q() {
            super(3);
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "reset the connection.";
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            XMPushService.this.a(11, (Exception) null);
            if (XMPushService.this.m1540b()) {
                XMPushService xMPushService = XMPushService.this;
                if (xMPushService.a(xMPushService.getApplicationContext())) {
                    XMPushService.this.f();
                }
            }
        }
    }

    /* loaded from: classes5.dex */
    class r extends BroadcastReceiver {
        r() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            XMPushService.this.onStart(intent, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class s extends j {

        /* renamed from: b  reason: collision with root package name */
        az.b f37117b;

        /* renamed from: c  reason: collision with root package name */
        int f37118c;

        /* renamed from: d  reason: collision with root package name */
        String f37119d;

        /* renamed from: e  reason: collision with root package name */
        String f37120e;

        public s(az.b bVar, int i9, String str, String str2) {
            super(9);
            this.f37117b = bVar;
            this.f37118c = i9;
            this.f37119d = str;
            this.f37120e = str2;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public String b() {
            return "unbind the channel. " + this.f37117b.f37148h;
        }

        @Override // com.xiaomi.push.service.XMPushService.j
        public void c() {
            if (this.f37117b.f37153m != az.c.unbind && XMPushService.this.f334a != null) {
                try {
                    com.xiaomi.push.c1 c1Var = XMPushService.this.f334a;
                    az.b bVar = this.f37117b;
                    c1Var.m(bVar.f37148h, bVar.f37142b);
                } catch (cd e10) {
                    tf.c.o(e10);
                    XMPushService.this.a(10, e10);
                }
            }
            this.f37117b.k(az.c.unbind, this.f37118c, 0, this.f37120e, this.f37119d);
        }
    }

    /* loaded from: classes5.dex */
    class t extends BroadcastReceiver {
        t() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!XMPushService.this.f350a) {
                XMPushService.this.f350a = true;
            }
            tf.c.l("[HB] wifi changed, " + sf.e.d(intent));
            XMPushService.this.onStart(intent, 1);
        }
    }

    private com.xiaomi.push.r1 a(com.xiaomi.push.r1 r1Var, String str, String str2) {
        StringBuilder sb2;
        String str3;
        az c10 = az.c();
        List<String> g10 = c10.g(str);
        if (g10.isEmpty()) {
            sb2 = new StringBuilder();
            str3 = "open channel should be called first before sending a packet, pkg=";
        } else {
            r1Var.v(str);
            str = r1Var.m();
            if (TextUtils.isEmpty(str)) {
                str = g10.get(0);
                r1Var.p(str);
            }
            az.b b10 = c10.b(str, r1Var.q());
            if (!m1542d()) {
                sb2 = new StringBuilder();
                str3 = "drop a packet as the channel is not connected, chid=";
            } else if (b10 != null && b10.f37153m == az.c.binded) {
                if (TextUtils.equals(str2, b10.f37150j)) {
                    return r1Var;
                }
                sb2 = new StringBuilder();
                sb2.append("invalid session. ");
                sb2.append(str2);
                tf.c.l(sb2.toString());
                return null;
            } else {
                sb2 = new StringBuilder();
                str3 = "drop a packet as the channel is not opened, chid=";
            }
        }
        sb2.append(str3);
        sb2.append(str);
        tf.c.l(sb2.toString());
        return null;
    }

    private az.b a(String str, Intent intent) {
        az.b b10 = az.c().b(str, intent.getStringExtra(e0.f37226o));
        if (b10 == null) {
            b10 = new az.b(this);
        }
        b10.f37148h = intent.getStringExtra(e0.f37229r);
        b10.f37142b = intent.getStringExtra(e0.f37226o);
        b10.f37143c = intent.getStringExtra(e0.f37230s);
        b10.f37141a = intent.getStringExtra(e0.f37236y);
        b10.f37146f = intent.getStringExtra(e0.f37234w);
        b10.f37147g = intent.getStringExtra(e0.f37235x);
        b10.f37145e = intent.getBooleanExtra(e0.f37233v, false);
        b10.f37149i = intent.getStringExtra(e0.f37232u);
        b10.f37150j = intent.getStringExtra(e0.C);
        b10.f37144d = intent.getStringExtra(e0.f37231t);
        b10.f37151k = this.f343a;
        b10.h((Messenger) intent.getParcelableExtra(e0.G));
        b10.f37152l = getApplicationContext();
        az.c().l(b10);
        return b10;
    }

    private String a() {
        String f10 = sf.e.f("ro.miui.region");
        return TextUtils.isEmpty(f10) ? sf.e.f("ro.product.locale.region") : f10;
    }

    private void a(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null) {
            try {
                unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e10) {
                tf.c.o(e10);
            }
        }
    }

    private void a(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return;
        }
        w1.c(getApplicationContext()).g(extras.getString("digest"));
    }

    private void a(Intent intent, int i9) {
        byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
        boolean booleanExtra = intent.getBooleanExtra("com.xiaomi.mipush.MESSAGE_CACHE", true);
        dt dtVar = new dt();
        try {
            com.xiaomi.push.h2.c(dtVar, byteArrayExtra);
            f3.b(getApplicationContext()).i(new a0(dtVar, new WeakReference(this), booleanExtra), i9);
        } catch (ej unused) {
            tf.c.u("aw_ping : send help app ping  error");
        }
    }

    private void a(com.xiaomi.push.service.b bVar) {
        String str;
        StringBuilder sb2;
        if (bVar == null || !TextUtils.isEmpty(bVar.f()) || TextUtils.isEmpty(bVar.b())) {
            str = "no need to check country code";
        } else {
            String a10 = "com.xiaomi.xmsf".equals(getPackageName()) ? a() : sf.e.m();
            if (!TextUtils.isEmpty(a10)) {
                String name = sf.e.c(a10).name();
                if (TextUtils.equals(name, bVar.b())) {
                    bVar.g(a10);
                    sb2 = new StringBuilder();
                    sb2.append("update country code： ");
                    sb2.append(a10);
                } else {
                    sb2 = new StringBuilder();
                    sb2.append("not update country code, because not equals ");
                    sb2.append(name);
                }
                tf.c.l(sb2.toString());
                return;
            }
            str = "check no country code";
        }
        tf.c.s(str);
    }

    private static void a(String str) {
        String str2;
        String str3;
        if (Region.Global.name().equals(str)) {
            com.xiaomi.push.m.n("app.chat.global.xiaomi.net", "app.chat.global.xiaomi.net");
            str2 = "resolver.msg.global.xiaomi.net";
            com.xiaomi.push.m.n("resolver.msg.global.xiaomi.net", "47.241.174.254:443");
            str3 = "47.241.56.51:443";
        } else if (Region.Europe.name().equals(str)) {
            com.xiaomi.push.m.n("fr.app.chat.global.xiaomi.net", "fr.app.chat.global.xiaomi.net");
            str2 = "fr.resolver.msg.global.xiaomi.net";
            str3 = "fr-resolver-msg-global-xiaomi-n-916220403.eu-central-1.elb.amazonaws.com";
        } else if (Region.Russia.name().equals(str)) {
            com.xiaomi.push.m.n("ru.app.chat.global.xiaomi.net", "ru.app.chat.global.xiaomi.net");
            str2 = "ru.resolver.msg.global.xiaomi.net";
            str3 = "107.155.52.31:443";
        } else if (!Region.India.name().equals(str)) {
            return;
        } else {
            com.xiaomi.push.m.n("idmb.app.chat.global.xiaomi.net", "idmb.app.chat.global.xiaomi.net");
            str2 = "mb.resolver.msg.global.xiaomi.net";
            str3 = "resolver-msg-xiaomi-net-665721575.ap-south-1.elb.amazonaws.com";
        }
        com.xiaomi.push.m.n(str2, str3);
    }

    private void a(String str, int i9) {
        Collection<az.b> f10 = az.c().f(str);
        if (f10 != null) {
            for (az.b bVar : f10) {
                if (bVar != null) {
                    a(new s(bVar, i9, null, null));
                }
            }
        }
        az.c().m(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Context context) {
        try {
            l3.a();
            for (int i9 = 100; i9 > 0; i9--) {
                if (p3.n(context)) {
                    tf.c.l("network connectivity ok.");
                    return true;
                }
                try {
                    Thread.sleep(100L);
                } catch (Exception unused) {
                }
            }
            return false;
        } catch (Exception unused2) {
            return true;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    private boolean m1526a(String str, Intent intent) {
        az.b b10 = az.c().b(str, intent.getStringExtra(e0.f37226o));
        boolean z10 = false;
        if (b10 == null || str == null) {
            return false;
        }
        String stringExtra = intent.getStringExtra(e0.C);
        String stringExtra2 = intent.getStringExtra(e0.f37232u);
        if (!TextUtils.isEmpty(b10.f37150j) && !TextUtils.equals(stringExtra, b10.f37150j)) {
            tf.c.l("session changed. old session=" + b10.f37150j + ", new session=" + stringExtra + " chid = " + str);
            z10 = true;
        }
        if (stringExtra2.equals(b10.f37149i)) {
            return z10;
        }
        tf.c.l("security changed. chid = " + str + " sechash = " + com.xiaomi.push.f.b(stringExtra2));
        return true;
    }

    /* renamed from: a  reason: collision with other method in class */
    private int[] m1527a() {
        String[] split;
        if (!TextUtils.isEmpty("") && (split = "".split(",")) != null && split.length >= 2) {
            int[] iArr = new int[2];
            try {
                iArr[0] = Integer.valueOf(split[0]).intValue();
                iArr[1] = Integer.valueOf(split[1]).intValue();
                if (iArr[0] >= 0 && iArr[0] <= 23 && iArr[1] >= 0 && iArr[1] <= 23) {
                    if (iArr[0] != iArr[1]) {
                        return iArr;
                    }
                }
            } catch (NumberFormatException e10) {
                tf.c.u("parse falldown time range failure: " + e10);
            }
        }
        return null;
    }

    private String b() {
        l3.a();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Object obj = new Object();
        String str = null;
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            g0 c10 = g0.c(this);
            while (true) {
                if (!TextUtils.isEmpty(str) && c10.a() != 0) {
                    break;
                }
                if (TextUtils.isEmpty(str)) {
                    str = a();
                }
                try {
                    synchronized (obj) {
                        obj.wait(100L);
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
        long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
        tf.c.l("wait countryCode :" + str + " cost = " + elapsedRealtime2);
        return str;
    }

    private void b(Intent intent) {
        long j10;
        String stringExtra = intent.getStringExtra(e0.f37236y);
        String stringExtra2 = intent.getStringExtra(e0.C);
        Bundle bundleExtra = intent.getBundleExtra("ext_packet");
        az c10 = az.c();
        com.xiaomi.push.r0 r0Var = null;
        if (bundleExtra != null) {
            com.xiaomi.push.q1 q1Var = (com.xiaomi.push.q1) a(new com.xiaomi.push.q1(bundleExtra), stringExtra, stringExtra2);
            if (q1Var == null) {
                return;
            }
            r0Var = com.xiaomi.push.r0.b(q1Var, c10.b(q1Var.m(), q1Var.q()).f37149i);
        } else {
            byte[] byteArrayExtra = intent.getByteArrayExtra("ext_raw_packet");
            if (byteArrayExtra != null) {
                try {
                    j10 = Long.parseLong(intent.getStringExtra(e0.f37226o));
                } catch (NumberFormatException unused) {
                    j10 = 0;
                }
                String stringExtra3 = intent.getStringExtra(e0.f37227p);
                String stringExtra4 = intent.getStringExtra(e0.f37228q);
                String stringExtra5 = intent.getStringExtra("ext_chid");
                az.b b10 = c10.b(stringExtra5, String.valueOf(j10));
                if (b10 != null) {
                    com.xiaomi.push.r0 r0Var2 = new com.xiaomi.push.r0();
                    try {
                        r0Var2.g(Integer.parseInt(stringExtra5));
                    } catch (NumberFormatException unused2) {
                    }
                    r0Var2.j("SECMSG", null);
                    if (TextUtils.isEmpty(stringExtra3)) {
                        stringExtra3 = "xiaomi.com";
                    }
                    r0Var2.h(j10, stringExtra3, stringExtra4);
                    r0Var2.i(intent.getStringExtra("ext_pkt_id"));
                    r0Var2.l(byteArrayExtra, b10.f37149i);
                    tf.c.l("send a message: chid=" + stringExtra5 + ", packetId=" + intent.getStringExtra("ext_pkt_id"));
                    r0Var = r0Var2;
                }
            }
        }
        if (r0Var != null) {
            c(new m0(this, r0Var));
        }
    }

    private void b(boolean z10) {
        if (sf.e.h() || !z10) {
            return;
        }
        com.xiaomi.push.m.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        boolean m1536a = m1536a();
        if (m1532i() && m1536a) {
            j1 j1Var = new j1(this, 11);
            a(j1Var);
            a2.i(new k1(this, j1Var));
        }
        try {
            if (sf.j.e()) {
                this.f343a.d(this);
            }
        } catch (Exception e10) {
            tf.c.o(e10);
        }
    }

    private void c(Intent intent) {
        String stringExtra = intent.getStringExtra(e0.f37236y);
        String stringExtra2 = intent.getStringExtra(e0.C);
        Parcelable[] parcelableArrayExtra = intent.getParcelableArrayExtra("ext_packets");
        int length = parcelableArrayExtra.length;
        com.xiaomi.push.q1[] q1VarArr = new com.xiaomi.push.q1[length];
        intent.getBooleanExtra("ext_encrypt", true);
        for (int i9 = 0; i9 < parcelableArrayExtra.length; i9++) {
            q1VarArr[i9] = new com.xiaomi.push.q1((Bundle) parcelableArrayExtra[i9]);
            q1VarArr[i9] = (com.xiaomi.push.q1) a(q1VarArr[i9], stringExtra, stringExtra2);
            if (q1VarArr[i9] == null) {
                return;
            }
        }
        az c10 = az.c();
        com.xiaomi.push.r0[] r0VarArr = new com.xiaomi.push.r0[length];
        for (int i10 = 0; i10 < length; i10++) {
            com.xiaomi.push.q1 q1Var = q1VarArr[i10];
            r0VarArr[i10] = com.xiaomi.push.r0.b(q1Var, c10.b(q1Var.m(), q1Var.q()).f37149i);
        }
        c(new b1(this, r0VarArr));
    }

    private void c(j jVar) {
        this.f344a.e(jVar);
    }

    private void c(boolean z10) {
        this.f331a = SystemClock.elapsedRealtime();
        if (m1542d()) {
            if (p3.m(this)) {
                c(new o(z10));
                return;
            }
            c(new g(17, null));
        }
        a(true);
    }

    private void d() {
        NetworkInfo networkInfo;
        try {
            networkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Exception e10) {
            tf.c.o(e10);
            networkInfo = null;
        }
        w1.c(getApplicationContext()).f(networkInfo);
        if (networkInfo != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("network changed,");
            sb2.append("[type: " + networkInfo.getTypeName() + "[" + networkInfo.getSubtypeName() + "], state: " + networkInfo.getState() + FileUtils.RES_PREFIX_STORAGE + networkInfo.getDetailedState());
            tf.c.l(sb2.toString());
            NetworkInfo.State state = networkInfo.getState();
            if (state == NetworkInfo.State.SUSPENDED || state == NetworkInfo.State.UNKNOWN) {
                return;
            }
        } else {
            tf.c.l("network changed, no active network");
        }
        com.xiaomi.push.e2.h(this);
        this.f346a.A();
        if (p3.m(this)) {
            if (m1542d() && m1530g()) {
                c(false);
            }
            if (!m1542d() && !m1543e()) {
                this.f344a.c(1);
                a(new e());
            }
        } else {
            a(new g(2, null));
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:356:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(android.content.Intent r15) {
        /*
            Method dump skipped, instructions count: 2110
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.XMPushService.d(android.content.Intent):void");
    }

    private void d(boolean z10) {
        try {
            if (sf.j.e()) {
                if (!z10) {
                    sendBroadcast(new Intent("miui.intent.action.NETWORK_BLOCKED"));
                    return;
                }
                sendBroadcast(new Intent("miui.intent.action.NETWORK_CONNECTED"));
                for (com.xiaomi.push.service.m mVar : (com.xiaomi.push.service.m[]) this.f349a.toArray(new com.xiaomi.push.service.m[0])) {
                    mVar.a();
                }
            }
        } catch (Exception e10) {
            tf.c.o(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (!m1540b()) {
            com.xiaomi.push.n0.a();
        } else if (com.xiaomi.push.n0.e()) {
        } else {
            com.xiaomi.push.n0.d(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        String str;
        com.xiaomi.push.c1 c1Var = this.f334a;
        if (c1Var == null || !c1Var.x()) {
            com.xiaomi.push.c1 c1Var2 = this.f334a;
            if (c1Var2 == null || !c1Var2.z()) {
                this.f335a.j(p3.f(this));
                g();
                if (this.f334a == null) {
                    az.c().i(this);
                    d(false);
                    return;
                }
                return;
            }
            str = "try to connect while is connected.";
        } else {
            str = "try to connect while connecting.";
        }
        tf.c.u(str);
    }

    /* renamed from: f  reason: collision with other method in class */
    public static boolean m1529f() {
        return f37090b;
    }

    private void g() {
        try {
            this.f346a.i(this.f336a, new c1(this));
            this.f346a.M();
            this.f334a = this.f346a;
        } catch (cd e10) {
            tf.c.n("fail to create Slim connection", e10);
            this.f346a.s(3, e10);
        }
    }

    /* renamed from: g  reason: collision with other method in class */
    private boolean m1530g() {
        if (SystemClock.elapsedRealtime() - this.f331a < 30000) {
            return false;
        }
        return p3.o(this);
    }

    private void h() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h  reason: collision with other method in class */
    public boolean m1531h() {
        return "com.xiaomi.xmsf".equals(getPackageName()) && Settings.System.getInt(getContentResolver(), "power_supersave_mode_open", 0) == 1;
    }

    private void i() {
        synchronized (this.f348a) {
            this.f348a.clear();
        }
    }

    /* renamed from: i  reason: collision with other method in class */
    private boolean m1532i() {
        if (sf.e.h() && "com.xiaomi.xmsf".equals(getPackageName())) {
            tf.c.l("current sdk expect region is global");
            return !"China".equals(com.xiaomi.push.service.b.a(getApplicationContext()).b());
        }
        return !b2.a(this).e(getPackageName());
    }

    private boolean j() {
        return getApplicationContext().getPackageName().equals("com.xiaomi.xmsf") && k() && !sf.b.j(this) && !sf.b.h(getApplicationContext());
    }

    private boolean k() {
        int intValue = Integer.valueOf(String.format("%tH", new Date())).intValue();
        int i9 = this.f37091a;
        int i10 = this.f351b;
        if (i9 > i10) {
            if (intValue >= i9 || intValue < i10) {
                return true;
            }
        } else if (i9 < i10 && intValue >= i9 && intValue < i10) {
            return true;
        }
        return false;
    }

    private boolean l() {
        TextUtils.equals(getPackageName(), "com.xiaomi.xmsf");
        return false;
    }

    /* renamed from: a  reason: collision with other method in class */
    public com.xiaomi.push.c1 m1533a() {
        return this.f334a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public s1 m1534a() {
        return new s1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public void m1535a() {
        if (SystemClock.elapsedRealtime() - this.f331a >= com.xiaomi.push.h1.a() && p3.o(this)) {
            c(true);
        }
    }

    public void a(int i9) {
        this.f344a.c(i9);
    }

    public void a(int i9, Exception exc) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("disconnect ");
        sb2.append(hashCode());
        sb2.append(", ");
        com.xiaomi.push.c1 c1Var = this.f334a;
        sb2.append(c1Var == null ? null : Integer.valueOf(c1Var.hashCode()));
        tf.c.l(sb2.toString());
        com.xiaomi.push.c1 c1Var2 = this.f334a;
        if (c1Var2 != null) {
            c1Var2.s(i9, exc);
            this.f334a = null;
        }
        a(7);
        a(4);
        az.c().j(this, i9);
    }

    @Override // com.xiaomi.push.e1
    public void a(com.xiaomi.push.c1 c1Var) {
        tf.c.t("begin to connect...");
    }

    @Override // com.xiaomi.push.e1
    public void a(com.xiaomi.push.c1 c1Var, int i9, Exception exc) {
        if (j()) {
            return;
        }
        a(false);
    }

    @Override // com.xiaomi.push.e1
    public void a(com.xiaomi.push.c1 c1Var, Exception exc) {
        d(false);
        if (j()) {
            return;
        }
        a(false);
    }

    public void a(com.xiaomi.push.r0 r0Var) {
        com.xiaomi.push.c1 c1Var = this.f334a;
        if (c1Var == null) {
            throw new cd("try send msg while connection is null.");
        }
        c1Var.t(r0Var);
    }

    public void a(j jVar) {
        a(jVar, 0L);
    }

    public void a(j jVar, long j10) {
        try {
            this.f344a.f(jVar, j10);
        } catch (IllegalStateException e10) {
            tf.c.l("can't execute job err = " + e10.getMessage());
        }
    }

    public void a(n nVar) {
        synchronized (this.f348a) {
            this.f348a.add(nVar);
        }
    }

    public void a(az.b bVar) {
        if (bVar != null) {
            long a10 = bVar.a();
            tf.c.l("schedule rebind job in " + (a10 / 1000));
            a(new b(bVar), a10);
        }
    }

    public void a(String str, String str2, int i9, String str3, String str4) {
        az.b b10 = az.c().b(str, str2);
        if (b10 != null) {
            a(new s(b10, i9, str4, str3));
        }
        az.c().n(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, byte[] bArr, boolean z10) {
        Collection<az.b> f10 = az.c().f("5");
        if (f10.isEmpty()) {
            if (!z10) {
                return;
            }
        } else if (f10.iterator().next().f37153m == az.c.binded) {
            a(new z0(this, 4, str, bArr));
            return;
        } else if (!z10) {
            return;
        }
        d2.f(str, bArr);
    }

    public void a(boolean z10) {
        this.f342a.c(z10);
    }

    public void a(byte[] bArr, String str) {
        if (bArr == null) {
            d2.b(this, str, bArr, 70000003, "null payload");
            tf.c.l("register request without payload");
            return;
        }
        dq dqVar = new dq();
        try {
            com.xiaomi.push.h2.c(dqVar, bArr);
            if (dqVar.f160a == cz.Registration) {
                du duVar = new du();
                try {
                    com.xiaomi.push.h2.c(duVar, dqVar.m1461a());
                    a(new c2(this, dqVar.b(), duVar.b(), duVar.c(), bArr));
                } catch (ej e10) {
                    tf.c.u("app register error. " + e10);
                    d2.b(this, str, bArr, 70000003, " data action error.");
                }
            } else {
                d2.b(this, str, bArr, 70000003, " registration action required.");
                tf.c.l("register request with invalid payload");
            }
        } catch (ej e11) {
            tf.c.u("app register fail. " + e11);
            d2.b(this, str, bArr, 70000003, " data container error.");
        }
    }

    public void a(com.xiaomi.push.r0[] r0VarArr) {
        com.xiaomi.push.c1 c1Var = this.f334a;
        if (c1Var == null) {
            throw new cd("try send msg while connection is null.");
        }
        c1Var.n(r0VarArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a  reason: collision with other method in class */
    public boolean m1536a() {
        String str;
        com.xiaomi.push.service.b a10 = com.xiaomi.push.service.b.a(getApplicationContext());
        String str2 = "";
        boolean h10 = sf.e.h();
        boolean z10 = false;
        if (sf.e.h()) {
            str2 = a10.b();
            tf.c.l("region of cache is " + str2);
            if (TextUtils.isEmpty(str2)) {
                String b10 = b();
                String name = sf.e.c(b10).name();
                a10.e(name);
                a10.g(b10);
                str2 = name;
            } else {
                a(a10);
            }
        } else {
            try {
                Bundle call = getContentResolver().call(MIPushProvider.a(this), "getUserRegion", (String) null, (Bundle) null);
                if (call != null) {
                    str2 = call.getString("user_region");
                    if (!TextUtils.isEmpty(str2)) {
                        h10 = true;
                        z10 = call.getBoolean("req_hosts");
                        String n9 = sf.e.n(str2);
                        a10.e(str2);
                        a10.g(n9);
                        if (z10) {
                            getContentResolver().call(MIPushProvider.a(this), "reset_req_hosts", (String) null, (Bundle) null);
                        }
                    }
                    tf.c.l("current region is: " + str2);
                }
            } catch (Exception e10) {
                tf.c.l("set region error: " + e10);
            }
        }
        if (TextUtils.isEmpty(str2)) {
            if ("com.xiaomi.xmsf".equals(getPackageName())) {
                str2 = Region.Global.name();
            }
        } else if (Region.Global.name().equals(str2)) {
            com.xiaomi.push.d1.d("app.chat.global.xiaomi.net");
        } else {
            if (Region.Europe.name().equals(str2)) {
                str = "fr.app.chat.global.xiaomi.net";
            } else if (Region.Russia.name().equals(str2)) {
                str = "ru.app.chat.global.xiaomi.net";
            } else if (Region.India.name().equals(str2)) {
                str = "idmb.app.chat.global.xiaomi.net";
            }
            com.xiaomi.push.d1.d(str);
        }
        if (Region.Global.name().equals(str2)) {
            com.xiaomi.push.d1.d("app.chat.global.xiaomi.net");
        }
        b(z10);
        a(str2);
        return h10;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m1537a(int i9) {
        return this.f344a.h(i9);
    }

    /* renamed from: b  reason: collision with other method in class */
    public s1 m1538b() {
        return this.f343a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b  reason: collision with other method in class */
    public void m1539b() {
        w1.c(getApplicationContext()).t();
        Iterator it = new ArrayList(this.f348a).iterator();
        while (it.hasNext()) {
            ((n) it.next()).a();
        }
    }

    @Override // com.xiaomi.push.e1
    public void b(com.xiaomi.push.c1 c1Var) {
        d(true);
        this.f342a.b();
        if (!com.xiaomi.push.n0.e() && !j()) {
            tf.c.l("reconnection successful, reactivate alarm.");
            com.xiaomi.push.n0.d(true);
        }
        Iterator<az.b> it = az.c().e().iterator();
        while (it.hasNext()) {
            a(new b(it.next()));
        }
        if (this.f350a || !sf.e.i(getApplicationContext())) {
            return;
        }
        f3.b(getApplicationContext()).g(new d1(this));
    }

    public void b(j jVar) {
        this.f344a.d(jVar.f37403a, jVar);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m1540b() {
        boolean m10 = p3.m(this);
        boolean z10 = az.c().a() > 0;
        boolean z11 = !m1541c();
        boolean m1532i = m1532i();
        boolean z12 = !m1531h();
        boolean z13 = m10 && z10 && z11 && m1532i && z12;
        if (!z13) {
            tf.c.v(String.format("not conn, net=%s;cnt=%s;!dis=%s;enb=%s;!spm=%s;", Boolean.valueOf(m10), Boolean.valueOf(z10), Boolean.valueOf(z11), Boolean.valueOf(m1532i), Boolean.valueOf(z12)));
        }
        return z13;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m1541c() {
        try {
            Class<?> c10 = sf.j.c(this, "miui.os.Build");
            Field field = c10.getField("IS_CM_CUSTOMIZATION_TEST");
            Field field2 = c10.getField("IS_CU_CUSTOMIZATION_TEST");
            Field field3 = c10.getField("IS_CT_CUSTOMIZATION_TEST");
            if (!field.getBoolean(null) && !field2.getBoolean(null)) {
                if (!field3.getBoolean(null)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: d  reason: collision with other method in class */
    public boolean m1542d() {
        com.xiaomi.push.c1 c1Var = this.f334a;
        return c1Var != null && c1Var.z();
    }

    /* renamed from: e  reason: collision with other method in class */
    public boolean m1543e() {
        com.xiaomi.push.c1 c1Var = this.f334a;
        return c1Var != null && c1Var.x();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f333a.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        String[] split;
        super.onCreate();
        tf.c.j(getApplicationContext());
        sf.j.d(this);
        z1 b10 = a2.b(this);
        if (b10 != null) {
            a3.b(b10.f37432g);
        }
        if (sf.e.i(getApplicationContext())) {
            HandlerThread handlerThread = new HandlerThread("hb-alarm");
            handlerThread.start();
            Handler handler = new Handler(handlerThread.getLooper());
            this.f337a = new a(this, null);
            registerReceiver(this.f337a, new IntentFilter(e0.f37225n), "com.xiaomi.xmsf.permission.MIPUSH_RECEIVE", handler);
            f37090b = true;
            handler.post(new e1(this));
        }
        this.f333a = new Messenger(new f1(this));
        f0.d(this);
        g1 g1Var = new g1(this, null, 5222, "xiaomi.com", null);
        this.f335a = g1Var;
        g1Var.f(true);
        this.f346a = new com.xiaomi.push.y0(this, this.f335a);
        this.f343a = m1534a();
        com.xiaomi.push.n0.b(this);
        this.f346a.h(this);
        this.f345a = new y(this);
        this.f342a = new j0(this);
        new t1().b();
        this.f344a = new x1("Connection Controller Thread");
        az c10 = az.c();
        c10.o();
        c10.k(new h1(this));
        if (l()) {
            h();
        }
        a(new w0(this));
        if (sf.e.i(this)) {
            a(new z());
        }
        a(new h());
        this.f349a.add(q0.c(this));
        if (m1532i()) {
            this.f338a = new f();
            registerReceiver(this.f338a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        if (sf.e.i(getApplicationContext())) {
            this.f341a = new t();
            registerReceiver(this.f341a, new IntentFilter("miui.net.wifi.DIGEST_INFORMATION_CHANGED"), "miui.net.wifi.permission.ACCESS_WIFI_DIGEST_INFO", null);
            k kVar = new k();
            this.f339a = kVar;
            registerReceiver(kVar, new IntentFilter("com.xiaomi.xmsf.USE_INTELLIGENT_HB"), "com.xiaomi.xmsf.permission.INTELLIGENT_HB", null);
        }
        w1.c(getApplicationContext()).d();
        if ("com.xiaomi.xmsf".equals(getPackageName())) {
            Uri uriFor = Settings.System.getUriFor("power_supersave_mode_open");
            if (uriFor != null) {
                this.f332a = new i1(this, new Handler(Looper.getMainLooper()));
                try {
                    getContentResolver().registerContentObserver(uriFor, false, this.f332a);
                } catch (Throwable th2) {
                    tf.c.u("register super-power-mode observer err:" + th2.getMessage());
                }
            }
            int[] m1527a = m1527a();
            if (m1527a != null) {
                this.f340a = new r();
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                registerReceiver(this.f340a, intentFilter);
                this.f37091a = m1527a[0];
                this.f351b = m1527a[1];
                tf.c.l("falldown initialized: " + this.f37091a + "," + this.f351b);
            }
        }
        String str = "";
        if (b10 != null) {
            try {
                if (!TextUtils.isEmpty(b10.f37426a) && (split = b10.f37426a.split("@")) != null && split.length > 0) {
                    str = split[0];
                }
            } catch (Exception unused) {
            }
        }
        tf.c.v("XMPushService created. pid=" + Process.myPid() + ", uid=" + Process.myUid() + ", vc=" + com.xiaomi.channel.commonutils.android.a.b(getApplicationContext(), getPackageName()) + ", uuid=" + str);
    }

    @Override // android.app.Service
    public void onDestroy() {
        f fVar = this.f338a;
        if (fVar != null) {
            a(fVar);
            this.f338a = null;
        }
        t tVar = this.f341a;
        if (tVar != null) {
            a(tVar);
            this.f341a = null;
        }
        k kVar = this.f339a;
        if (kVar != null) {
            a(kVar);
            this.f339a = null;
        }
        r rVar = this.f340a;
        if (rVar != null) {
            a(rVar);
            this.f340a = null;
        }
        a aVar = this.f337a;
        if (aVar != null) {
            a(aVar);
            this.f337a = null;
        }
        if ("com.xiaomi.xmsf".equals(getPackageName()) && this.f332a != null) {
            try {
                getContentResolver().unregisterContentObserver(this.f332a);
            } catch (Throwable th2) {
                tf.c.u("unregister super-power-mode err:" + th2.getMessage());
            }
        }
        this.f349a.clear();
        this.f344a.i();
        a(new a1(this, 2));
        a(new l());
        az.c().o();
        az.c().j(this, 15);
        az.c().h();
        this.f346a.u(this);
        o0.e().h();
        com.xiaomi.push.n0.a();
        i();
        super.onDestroy();
        tf.c.l("Service destroyed");
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i9) {
        i iVar;
        long currentTimeMillis = System.currentTimeMillis();
        if (intent == null) {
            tf.c.u("onStart() with intent NULL");
        } else {
            try {
                tf.c.l(String.format("onStart() with intent.Action = %s, chid = %s, pkg = %s|%s", intent.getAction(), intent.getStringExtra(e0.f37229r), intent.getStringExtra(e0.f37236y), intent.getStringExtra("mipush_app_package")));
            } catch (Throwable th2) {
                tf.c.u("onStart() cause error: " + th2.getMessage());
                return;
            }
        }
        if (intent != null && intent.getAction() != null) {
            if ("com.xiaomi.push.timer".equalsIgnoreCase(intent.getAction()) || "com.xiaomi.push.check_alive".equalsIgnoreCase(intent.getAction())) {
                if (this.f344a.g()) {
                    tf.c.u("ERROR, the job controller is blocked.");
                    az.c().j(this, 14);
                    stopSelf();
                } else {
                    iVar = new i(intent);
                    a(iVar);
                }
            } else if (!"com.xiaomi.push.network_status_changed".equalsIgnoreCase(intent.getAction())) {
                iVar = new i(intent);
                a(iVar);
            }
        }
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (currentTimeMillis2 > 50) {
            tf.c.t("[Prefs] spend " + currentTimeMillis2 + " ms, too more times.");
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i9, int i10) {
        onStart(intent, i10);
        return 1;
    }
}
