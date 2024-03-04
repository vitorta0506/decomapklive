package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.internal.security.CertificateUtil;
import com.xiaomi.mipush.sdk.PushMessageHandler;
import com.xiaomi.push.bg;
import com.xiaomi.push.cz;
import com.xiaomi.push.df;
import com.xiaomi.push.dh;
import com.xiaomi.push.di;
import com.xiaomi.push.dj;
import com.xiaomi.push.dl;
import com.xiaomi.push.dm;
import com.xiaomi.push.dp;
import com.xiaomi.push.dq;
import com.xiaomi.push.dr;
import com.xiaomi.push.ds;
import com.xiaomi.push.dt;
import com.xiaomi.push.dv;
import com.xiaomi.push.dx;
import com.xiaomi.push.dz;
import com.xiaomi.push.eb;
import com.xiaomi.push.ed;
import com.xiaomi.push.ef;
import com.xiaomi.push.ej;
import com.xiaomi.push.h2;
import com.xiaomi.push.service.r1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TimeZone;
/* loaded from: classes5.dex */
public class u {

    /* renamed from: b  reason: collision with root package name */
    private static u f36293b;

    /* renamed from: c  reason: collision with root package name */
    private static Queue<String> f36294c;

    /* renamed from: d  reason: collision with root package name */
    private static Object f36295d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private Context f36296a;

    private u(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f36296a = applicationContext;
        if (applicationContext == null) {
            this.f36296a = context;
        }
    }

    public static Intent a(Context context, String str, Map<String, String> map, int i9) {
        return com.xiaomi.push.service.i.P(context, str, map, i9);
    }

    private PushMessageHandler.a c(dq dqVar, boolean z10, byte[] bArr, String str, int i9, Intent intent) {
        MiPushMessage miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        miPushMessage = null;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        miPushMessage = null;
        ArrayList arrayList3 = null;
        miPushMessage = null;
        try {
            ef d10 = q.d(this.f36296a, dqVar);
            if (d10 == null) {
                tf.c.u("receiving an un-recognized message. " + dqVar.f160a);
                p0.f(this.f36296a, dqVar, z10);
                return null;
            }
            cz a10 = dqVar.a();
            tf.c.l("processing a message, action=" + a10);
            switch (v.f36298a[a10.ordinal()]) {
                case 1:
                    if (!dqVar.m1463b()) {
                        tf.c.u("receiving an un-encrypt message(SendMessage).");
                        return null;
                    } else if (n.c(this.f36296a).w() && !z10) {
                        tf.c.l("receive a message in pause state. drop it");
                        return null;
                    } else {
                        dx dxVar = (dx) d10;
                        dh a11 = dxVar.a();
                        if (a11 == null) {
                            tf.c.u("receive an empty message without push content, drop it");
                            p0.g(this.f36296a, dqVar, z10);
                            return null;
                        }
                        int intExtra = intent.getIntExtra("notification_click_button", 0);
                        if (z10) {
                            if (com.xiaomi.push.service.i.J(dqVar)) {
                                j.S(this.f36296a, a11.m1416a(), dqVar.m1455a(), dqVar.f167b, a11.b());
                            } else {
                                di diVar = dqVar.m1455a() != null ? new di(dqVar.m1455a()) : new di();
                                if (diVar.m1425a() == null) {
                                    diVar.a(new HashMap());
                                }
                                diVar.m1425a().put("notification_click_button", String.valueOf(intExtra));
                                j.T(this.f36296a, a11.m1416a(), diVar, a11.b());
                            }
                        }
                        if (!z10) {
                            if (!TextUtils.isEmpty(dxVar.d()) && j.j(this.f36296a, dxVar.d()) < 0) {
                                j.f(this.f36296a, dxVar.d());
                            } else if (!TextUtils.isEmpty(dxVar.c()) && j.i0(this.f36296a, dxVar.c()) < 0) {
                                j.i(this.f36296a, dxVar.c());
                            }
                        }
                        di diVar2 = dqVar.f161a;
                        String str2 = (diVar2 == null || diVar2.m1425a() == null) ? null : dqVar.f161a.f77a.get("jobkey");
                        String str3 = str2;
                        if (TextUtils.isEmpty(str2)) {
                            str2 = a11.m1416a();
                        }
                        if (z10 || !m(this.f36296a, str2)) {
                            MiPushMessage b10 = m.b(dxVar, dqVar.m1455a(), z10);
                            if (b10.getPassThrough() == 0 && !z10 && com.xiaomi.push.service.i.L(b10.getExtra())) {
                                com.xiaomi.push.service.i.r(this.f36296a, dqVar, bArr);
                                return null;
                            }
                            tf.c.l("receive a message, msgid=" + a11.m1416a() + ", jobkey=" + str2 + ", btn=" + intExtra);
                            String u10 = com.xiaomi.push.service.i.u(b10.getExtra(), intExtra);
                            if (z10 && b10.getExtra() != null && !TextUtils.isEmpty(u10)) {
                                Map<String, String> extra = b10.getExtra();
                                if (intExtra != 0 && dqVar.m1455a() != null) {
                                    w.h(this.f36296a).o(dqVar.m1455a().c(), intExtra);
                                }
                                if (com.xiaomi.push.service.i.J(dqVar)) {
                                    Intent a12 = a(this.f36296a, dqVar.f167b, extra, intExtra);
                                    a12.putExtra("eventMessageType", i9);
                                    a12.putExtra("messageId", str);
                                    a12.putExtra("jobkey", str3);
                                    String c10 = a11.c();
                                    if (!TextUtils.isEmpty(c10)) {
                                        a12.putExtra("payload", c10);
                                    }
                                    this.f36296a.startActivity(a12);
                                    p0.b(this.f36296a, dqVar);
                                } else {
                                    Context context = this.f36296a;
                                    Intent a13 = a(context, context.getPackageName(), extra, intExtra);
                                    if (a13 != null) {
                                        if (!u10.equals(com.xiaomi.push.service.e0.f37214c)) {
                                            a13.putExtra("key_message", b10);
                                            a13.putExtra("eventMessageType", i9);
                                            a13.putExtra("messageId", str);
                                            a13.putExtra("jobkey", str3);
                                        }
                                        this.f36296a.startActivity(a13);
                                        p0.b(this.f36296a, dqVar);
                                        tf.c.l("start activity succ");
                                        u10.equals(com.xiaomi.push.service.e0.f37214c);
                                    }
                                }
                                return null;
                            }
                            miPushMessage = b10;
                        } else {
                            tf.c.l("drop a duplicate message, key=" + str2);
                        }
                        if (dqVar.m1455a() == null && !z10) {
                            k(dxVar, dqVar);
                            break;
                        }
                    }
                    break;
                case 2:
                    dv dvVar = (dv) d10;
                    String str4 = n.c(this.f36296a).f36264d;
                    if (TextUtils.isEmpty(str4) || !TextUtils.equals(str4, dvVar.m1484a())) {
                        tf.c.l("bad Registration result:");
                        return null;
                    }
                    long b11 = w.h(this.f36296a).b();
                    if (b11 > 0 && SystemClock.elapsedRealtime() - b11 > 900000) {
                        tf.c.l("The received registration result has expired.");
                        com.xiaomi.push.h0.a(this.f36296a).b(this.f36296a.getPackageName(), com.xiaomi.push.g0.a(i9), str, "26");
                        return null;
                    }
                    n.c(this.f36296a).f36264d = null;
                    if (dvVar.f223a == 0) {
                        n.c(this.f36296a).o(dvVar.f233e, dvVar.f234f, dvVar.f240l);
                        e.a(this.f36296a);
                    }
                    if (!TextUtils.isEmpty(dvVar.f233e)) {
                        arrayList3 = new ArrayList();
                        arrayList3.add(dvVar.f233e);
                    }
                    MiPushCommandMessage a14 = m.a(bg.COMMAND_REGISTER.f21a, arrayList3, dvVar.f223a, dvVar.f232d, null);
                    w.h(this.f36296a).U();
                    return a14;
                case 3:
                    if (!dqVar.m1463b()) {
                        tf.c.u("receiving an un-encrypt message(UnRegistration).");
                        return null;
                    }
                    if (((eb) d10).f299a == 0) {
                        n.c(this.f36296a).e();
                        j.m(this.f36296a);
                    }
                    PushMessageHandler.a();
                    break;
                case 4:
                    dz dzVar = (dz) d10;
                    if (dzVar.f274a == 0) {
                        j.i(this.f36296a, dzVar.b());
                    }
                    if (!TextUtils.isEmpty(dzVar.b())) {
                        arrayList2 = new ArrayList();
                        arrayList2.add(dzVar.b());
                    }
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("resp-cmd:");
                    bg bgVar = bg.COMMAND_SUBSCRIBE_TOPIC;
                    sb2.append(bgVar);
                    sb2.append(", ");
                    sb2.append(dzVar.a());
                    tf.c.v(sb2.toString());
                    return m.a(bgVar.f21a, arrayList2, dzVar.f274a, dzVar.f280d, dzVar.c());
                case 5:
                    ed edVar = (ed) d10;
                    if (edVar.f319a == 0) {
                        j.R(this.f36296a, edVar.b());
                    }
                    if (!TextUtils.isEmpty(edVar.b())) {
                        arrayList = new ArrayList();
                        arrayList.add(edVar.b());
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("resp-cmd:");
                    bg bgVar2 = bg.COMMAND_UNSUBSCRIBE_TOPIC;
                    sb3.append(bgVar2);
                    sb3.append(", ");
                    sb3.append(edVar.a());
                    tf.c.v(sb3.toString());
                    return m.a(bgVar2.f21a, arrayList, edVar.f319a, edVar.f325d, edVar.c());
                case 6:
                    dp dpVar = (dp) d10;
                    String b12 = dpVar.b();
                    List<String> m1449a = dpVar.m1449a();
                    if (dpVar.f148a == 0) {
                        if (TextUtils.equals(b12, bg.COMMAND_SET_ACCEPT_TIME.f21a) && m1449a != null && m1449a.size() > 1) {
                            j.d(this.f36296a, m1449a.get(0), m1449a.get(1));
                            if ("00:00".equals(m1449a.get(0)) && "00:00".equals(m1449a.get(1))) {
                                n.c(this.f36296a).j(true);
                            } else {
                                n.c(this.f36296a).j(false);
                            }
                            m1449a = f(TimeZone.getTimeZone("GMT+08"), TimeZone.getDefault(), m1449a);
                        } else if (TextUtils.equals(b12, bg.COMMAND_SET_ALIAS.f21a) && m1449a != null && m1449a.size() > 0) {
                            j.f(this.f36296a, m1449a.get(0));
                        } else if (TextUtils.equals(b12, bg.COMMAND_UNSET_ALIAS.f21a) && m1449a != null && m1449a.size() > 0) {
                            j.N(this.f36296a, m1449a.get(0));
                        } else if (TextUtils.equals(b12, bg.COMMAND_SET_ACCOUNT.f21a) && m1449a != null && m1449a.size() > 0) {
                            j.e(this.f36296a, m1449a.get(0));
                        } else if (TextUtils.equals(b12, bg.COMMAND_UNSET_ACCOUNT.f21a) && m1449a != null && m1449a.size() > 0) {
                            j.M(this.f36296a, m1449a.get(0));
                        } else if (TextUtils.equals(b12, bg.COMMAND_CHK_VDEVID.f21a)) {
                            return null;
                        }
                    }
                    tf.c.v("resp-cmd:" + b12 + ", " + dpVar.a());
                    return m.a(b12, m1449a, dpVar.f148a, dpVar.f156d, dpVar.c());
                case 7:
                    if (d10 instanceof dm) {
                        dm dmVar = (dm) d10;
                        String a15 = dmVar.a();
                        tf.c.v("resp-type:" + dmVar.b() + ", code:" + dmVar.f120a + ", " + a15);
                        if (df.DisablePushMessage.f42a.equalsIgnoreCase(dmVar.f127d)) {
                            if (dmVar.f120a == 0) {
                                synchronized (x0.class) {
                                    if (x0.b(this.f36296a).f(a15)) {
                                        x0.b(this.f36296a).h(a15);
                                        x0 b13 = x0.b(this.f36296a);
                                        am amVar = am.DISABLE_PUSH;
                                        if ("syncing".equals(b13.c(amVar))) {
                                            x0.b(this.f36296a).d(amVar, "synced");
                                            j.p(this.f36296a);
                                            j.o(this.f36296a);
                                            PushMessageHandler.a();
                                            w.h(this.f36296a).L();
                                        }
                                    }
                                }
                                break;
                            } else if ("syncing".equals(x0.b(this.f36296a).c(am.DISABLE_PUSH))) {
                                synchronized (x0.class) {
                                    if (x0.b(this.f36296a).f(a15)) {
                                        if (x0.b(this.f36296a).a(a15) < 10) {
                                            x0.b(this.f36296a).g(a15);
                                            w.h(this.f36296a).G(true, a15);
                                        } else {
                                            x0.b(this.f36296a).h(a15);
                                        }
                                    }
                                }
                                break;
                            }
                        } else if (df.EnablePushMessage.f42a.equalsIgnoreCase(dmVar.f127d)) {
                            if (dmVar.f120a == 0) {
                                synchronized (x0.class) {
                                    if (x0.b(this.f36296a).f(a15)) {
                                        x0.b(this.f36296a).h(a15);
                                        x0 b14 = x0.b(this.f36296a);
                                        am amVar2 = am.ENABLE_PUSH;
                                        if ("syncing".equals(b14.c(amVar2))) {
                                            x0.b(this.f36296a).d(amVar2, "synced");
                                        }
                                    }
                                }
                                break;
                            } else if ("syncing".equals(x0.b(this.f36296a).c(am.ENABLE_PUSH))) {
                                synchronized (x0.class) {
                                    if (x0.b(this.f36296a).f(a15)) {
                                        if (x0.b(this.f36296a).a(a15) < 10) {
                                            x0.b(this.f36296a).g(a15);
                                            w.h(this.f36296a).G(false, a15);
                                        } else {
                                            x0.b(this.f36296a).h(a15);
                                        }
                                    }
                                }
                                break;
                            }
                        } else if (df.ThirdPartyRegUpdate.f42a.equalsIgnoreCase(dmVar.f127d)) {
                            h(dmVar);
                            break;
                        }
                        x0.b(this.f36296a).h(a15);
                        break;
                    } else if (d10 instanceof dt) {
                        dt dtVar = (dt) d10;
                        if ("registration id expired".equalsIgnoreCase(dtVar.f184d)) {
                            List<String> v10 = j.v(this.f36296a);
                            List<String> w6 = j.w(this.f36296a);
                            List<String> x10 = j.x(this.f36296a);
                            String u11 = j.u(this.f36296a);
                            tf.c.v("resp-type:" + dtVar.f184d + ", " + dtVar.m1470a());
                            j.G(this.f36296a, dj.RegIdExpired);
                            for (String str5 : v10) {
                                j.N(this.f36296a, str5);
                                j.V(this.f36296a, str5, null);
                            }
                            for (String str6 : w6) {
                                j.R(this.f36296a, str6);
                                j.d0(this.f36296a, str6, null);
                            }
                            for (String str7 : x10) {
                                j.M(this.f36296a, str7);
                                j.Z(this.f36296a, str7, null);
                            }
                            String[] split = u11.split(",");
                            if (split.length == 2) {
                                j.L(this.f36296a);
                                j.d(this.f36296a, split[0], split[1]);
                                break;
                            }
                        } else if (df.ClientInfoUpdateOk.f42a.equalsIgnoreCase(dtVar.f184d)) {
                            if (dtVar.m1471a() != null && dtVar.m1471a().containsKey("app_version")) {
                                n.c(this.f36296a).g(dtVar.m1471a().get("app_version"));
                                break;
                            }
                        } else {
                            try {
                                if (df.NormalClientConfigUpdate.f42a.equalsIgnoreCase(dtVar.f184d)) {
                                    ds dsVar = new ds();
                                    h2.c(dsVar, dtVar.m1476a());
                                    com.xiaomi.push.service.v.d(com.xiaomi.push.service.u.c(this.f36296a), dsVar);
                                } else if (df.CustomClientConfigUpdate.f42a.equalsIgnoreCase(dtVar.f184d)) {
                                    dr drVar = new dr();
                                    h2.c(drVar, dtVar.m1476a());
                                    com.xiaomi.push.service.v.c(com.xiaomi.push.service.u.c(this.f36296a), drVar);
                                } else if (df.SyncInfoResult.f42a.equalsIgnoreCase(dtVar.f184d)) {
                                    d0.a(this.f36296a, dtVar);
                                    break;
                                } else if (df.CancelPushMessage.f42a.equals(dtVar.f184d)) {
                                    tf.c.v("resp-type:" + dtVar.f184d + ", " + dtVar.m1470a());
                                    if (dtVar.m1471a() != null) {
                                        int i10 = -2;
                                        if (dtVar.m1471a().containsKey(com.xiaomi.push.service.e0.J)) {
                                            String str8 = dtVar.m1471a().get(com.xiaomi.push.service.e0.J);
                                            if (!TextUtils.isEmpty(str8)) {
                                                try {
                                                    i10 = Integer.parseInt(str8);
                                                } catch (NumberFormatException e10) {
                                                    e10.printStackTrace();
                                                }
                                            }
                                        }
                                        if (i10 >= -1) {
                                            j.q(this.f36296a, i10);
                                        } else {
                                            j.r(this.f36296a, dtVar.m1471a().containsKey(com.xiaomi.push.service.e0.H) ? dtVar.m1471a().get(com.xiaomi.push.service.e0.H) : "", dtVar.m1471a().containsKey(com.xiaomi.push.service.e0.I) ? dtVar.m1471a().get(com.xiaomi.push.service.e0.I) : "");
                                        }
                                    }
                                    j(dtVar);
                                    break;
                                } else {
                                    try {
                                        if (df.HybridRegisterResult.f42a.equals(dtVar.f184d)) {
                                            dv dvVar2 = new dv();
                                            h2.c(dvVar2, dtVar.m1476a());
                                            k.a(this.f36296a, dvVar2);
                                        } else if (df.HybridUnregisterResult.f42a.equals(dtVar.f184d)) {
                                            eb ebVar = new eb();
                                            h2.c(ebVar, dtVar.m1476a());
                                            k.b(this.f36296a, ebVar);
                                        } else if (r1.b(dtVar)) {
                                            tf.c.s("receive notification handle by cpra");
                                            break;
                                        }
                                        break;
                                    } catch (ej e11) {
                                        tf.c.o(e11);
                                        break;
                                    }
                                }
                                break;
                            } catch (ej unused) {
                                break;
                            }
                        }
                    }
                    break;
            }
            return miPushMessage;
        } catch (o e12) {
            tf.c.o(e12);
            i(dqVar);
            p0.f(this.f36296a, dqVar, z10);
            return null;
        } catch (ej e13) {
            tf.c.o(e13);
            tf.c.u("receive a message which action string is not valid. is the reg expired?");
            p0.f(this.f36296a, dqVar, z10);
            return null;
        }
    }

    private PushMessageHandler.a d(dq dqVar, byte[] bArr) {
        String str;
        ef d10;
        String str2 = null;
        try {
            d10 = q.d(this.f36296a, dqVar);
        } catch (o e10) {
            tf.c.o(e10);
            str = "message arrived: receive a message but decrypt failed. report when click.";
        } catch (ej e11) {
            tf.c.o(e11);
            str = "message arrived: receive a message which action string is not valid. is the reg expired?";
        }
        if (d10 == null) {
            tf.c.u("message arrived: receiving an un-recognized message. " + dqVar.f160a);
            return null;
        }
        cz a10 = dqVar.a();
        tf.c.l("message arrived: processing an arrived message, action=" + a10);
        if (v.f36298a[a10.ordinal()] != 1) {
            return null;
        }
        if (dqVar.m1463b()) {
            dx dxVar = (dx) d10;
            dh a11 = dxVar.a();
            if (a11 != null) {
                di diVar = dqVar.f161a;
                if (diVar != null && diVar.m1425a() != null) {
                    str2 = dqVar.f161a.f77a.get("jobkey");
                }
                MiPushMessage b10 = m.b(dxVar, dqVar.m1455a(), false);
                b10.setArrivedMessage(true);
                tf.c.l("message arrived: receive a message, msgid=" + a11.m1416a() + ", jobkey=" + str2);
                return b10;
            }
            str = "message arrived: receive an empty message without push content, drop it";
        } else {
            str = "message arrived: receiving an un-encrypt message(SendMessage).";
        }
        tf.c.u(str);
        return null;
    }

    public static u e(Context context) {
        if (f36293b == null) {
            f36293b = new u(context);
        }
        return f36293b;
    }

    private void g() {
        SharedPreferences sharedPreferences = this.f36296a.getSharedPreferences("mipush_extra", 0);
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - sharedPreferences.getLong("last_reinitialize", 0L)) > 1800000) {
            j.G(this.f36296a, dj.PackageUnregistered);
            sharedPreferences.edit().putLong("last_reinitialize", currentTimeMillis).commit();
        }
    }

    private void h(dm dmVar) {
        Context context;
        c cVar;
        tf.c.t("ASSEMBLE_PUSH : " + dmVar.toString());
        String a10 = dmVar.a();
        Map<String, String> m1439a = dmVar.m1439a();
        if (m1439a != null) {
            String str = m1439a.get("RegInfo");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (str.contains("brand:" + y.FCM.name())) {
                tf.c.l("ASSEMBLE_PUSH : receive fcm token sync ack");
                context = this.f36296a;
                cVar = c.ASSEMBLE_PUSH_FCM;
            } else {
                if (str.contains("brand:" + y.HUAWEI.name())) {
                    tf.c.l("ASSEMBLE_PUSH : receive hw token sync ack");
                    context = this.f36296a;
                    cVar = c.ASSEMBLE_PUSH_HUAWEI;
                } else {
                    if (str.contains("brand:" + y.OPPO.name())) {
                        tf.c.l("ASSEMBLE_PUSH : receive COS token sync ack");
                        context = this.f36296a;
                        cVar = c.ASSEMBLE_PUSH_COS;
                    } else {
                        if (!str.contains("brand:" + y.VIVO.name())) {
                            return;
                        }
                        tf.c.l("ASSEMBLE_PUSH : receive FTOS token sync ack");
                        context = this.f36296a;
                        cVar = c.ASSEMBLE_PUSH_FTOS;
                    }
                }
            }
            i0.m(context, cVar, str);
            l(a10, dmVar.f120a, cVar);
        }
    }

    private void i(dq dqVar) {
        tf.c.l("receive a message but decrypt failed. report now.");
        dt dtVar = new dt(dqVar.m1455a().f75a, false);
        dtVar.c(df.DecryptMessageFail.f42a);
        dtVar.b(dqVar.m1456a());
        dtVar.d(dqVar.f167b);
        HashMap hashMap = new HashMap();
        dtVar.f179a = hashMap;
        hashMap.put("regid", j.D(this.f36296a));
        w.h(this.f36296a).w(dtVar, cz.Notification, false, null);
    }

    private void j(dt dtVar) {
        dm dmVar = new dm();
        dmVar.c(df.CancelPushMessageACK.f42a);
        dmVar.a(dtVar.m1470a());
        dmVar.a(dtVar.a());
        dmVar.b(dtVar.b());
        dmVar.e(dtVar.c());
        dmVar.a(0L);
        dmVar.d("success clear push message.");
        w.h(this.f36296a).A(dmVar, cz.Notification, false, true, null, false, this.f36296a.getPackageName(), n.c(this.f36296a).d(), false);
    }

    private void k(dx dxVar, dq dqVar) {
        di m1455a = dqVar.m1455a();
        if (m1455a != null) {
            m1455a = com.xiaomi.push.service.k0.a(m1455a.m1423a());
        }
        dl dlVar = new dl();
        dlVar.b(dxVar.b());
        dlVar.a(dxVar.m1492a());
        dlVar.a(dxVar.a().a());
        if (!TextUtils.isEmpty(dxVar.c())) {
            dlVar.c(dxVar.c());
        }
        if (!TextUtils.isEmpty(dxVar.d())) {
            dlVar.d(dxVar.d());
        }
        dlVar.a(h2.a(this.f36296a, dqVar));
        w.h(this.f36296a).u(dlVar, cz.AckMessage, m1455a);
    }

    private void l(String str, long j10, c cVar) {
        am a10 = l0.a(cVar);
        if (a10 == null) {
            return;
        }
        if (j10 == 0) {
            synchronized (x0.class) {
                if (x0.b(this.f36296a).f(str)) {
                    x0.b(this.f36296a).h(str);
                    if ("syncing".equals(x0.b(this.f36296a).c(a10))) {
                        x0.b(this.f36296a).d(a10, "synced");
                    }
                }
            }
        } else if (!"syncing".equals(x0.b(this.f36296a).c(a10))) {
            x0.b(this.f36296a).h(str);
        } else {
            synchronized (x0.class) {
                if (x0.b(this.f36296a).f(str)) {
                    if (x0.b(this.f36296a).a(str) < 10) {
                        x0.b(this.f36296a).g(str);
                        w.h(this.f36296a).C(str, a10, cVar);
                    } else {
                        x0.b(this.f36296a).h(str);
                    }
                }
            }
        }
    }

    private static boolean m(Context context, String str) {
        synchronized (f36295d) {
            n.c(context);
            SharedPreferences b10 = n.b(context);
            if (f36294c == null) {
                String[] split = b10.getString("pref_msg_ids", "").split(",");
                f36294c = new LinkedList();
                for (String str2 : split) {
                    f36294c.add(str2);
                }
            }
            if (f36294c.contains(str)) {
                return true;
            }
            f36294c.add(str);
            if (f36294c.size() > 25) {
                f36294c.poll();
            }
            String d10 = com.xiaomi.push.g.d(f36294c, ",");
            SharedPreferences.Editor edit = b10.edit();
            edit.putString("pref_msg_ids", d10);
            sf.h.a(edit);
            return false;
        }
    }

    private boolean n(dq dqVar) {
        Map<String, String> m1425a = dqVar.m1455a() == null ? null : dqVar.m1455a().m1425a();
        if (m1425a == null) {
            return false;
        }
        String str = m1425a.get("push_server_action");
        return TextUtils.equals(str, "hybrid_message") || TextUtils.equals(str, "platform_message");
    }

    private void o(dq dqVar) {
        di m1455a = dqVar.m1455a();
        if (m1455a != null) {
            m1455a = com.xiaomi.push.service.k0.a(m1455a.m1423a());
        }
        dl dlVar = new dl();
        dlVar.b(dqVar.m1456a());
        dlVar.a(m1455a.m1424a());
        dlVar.a(m1455a.m1422a());
        if (!TextUtils.isEmpty(m1455a.m1429b())) {
            dlVar.c(m1455a.m1429b());
        }
        dlVar.a(h2.a(this.f36296a, dqVar));
        w.h(this.f36296a).w(dlVar, cz.AckMessage, false, m1455a);
    }

    public PushMessageHandler.a b(Intent intent) {
        String str;
        String str2;
        n c10;
        di m1455a;
        cz czVar;
        String format;
        String action = intent.getAction();
        tf.c.l("receive an intent from server, action=" + action);
        String stringExtra = intent.getStringExtra("mrt");
        if (stringExtra == null) {
            stringExtra = Long.toString(System.currentTimeMillis());
        }
        String stringExtra2 = intent.getStringExtra("messageId");
        int intExtra = intent.getIntExtra("eventMessageType", -1);
        if (!"com.xiaomi.mipush.RECEIVE_MESSAGE".equals(action)) {
            if ("com.xiaomi.mipush.ERROR".equals(action)) {
                MiPushCommandMessage miPushCommandMessage = new MiPushCommandMessage();
                dq dqVar = new dq();
                try {
                    byte[] byteArrayExtra = intent.getByteArrayExtra("mipush_payload");
                    if (byteArrayExtra != null) {
                        h2.c(dqVar, byteArrayExtra);
                    }
                } catch (ej unused) {
                }
                miPushCommandMessage.setCommand(String.valueOf(dqVar.a()));
                miPushCommandMessage.setResultCode(intent.getIntExtra("mipush_error_code", 0));
                miPushCommandMessage.setReason(intent.getStringExtra("mipush_error_msg"));
                tf.c.u("receive a error message. code = " + intent.getIntExtra("mipush_error_code", 0) + ", msg= " + intent.getStringExtra("mipush_error_msg"));
                return miPushCommandMessage;
            }
            if ("com.xiaomi.mipush.MESSAGE_ARRIVED".equals(action)) {
                byte[] byteArrayExtra2 = intent.getByteArrayExtra("mipush_payload");
                if (byteArrayExtra2 == null) {
                    str2 = "message arrived: receiving an empty message, drop";
                } else {
                    dq dqVar2 = new dq();
                    try {
                        h2.c(dqVar2, byteArrayExtra2);
                        n c11 = n.c(this.f36296a);
                        if (com.xiaomi.push.service.i.J(dqVar2)) {
                            str = "message arrived: receive ignore reg message, ignore!";
                        } else if (!c11.s()) {
                            str = "message arrived: receive message without registration. need unregister or re-register!";
                        } else if (!c11.s() || !c11.y()) {
                            return d(dqVar2, byteArrayExtra2);
                        } else {
                            str = "message arrived: app info is invalidated";
                        }
                        tf.c.u(str);
                    } catch (Exception e10) {
                        tf.c.u("fail to deal with arrived message. " + e10);
                    }
                }
            }
            return null;
        }
        byte[] byteArrayExtra3 = intent.getByteArrayExtra("mipush_payload");
        boolean booleanExtra = intent.getBooleanExtra("mipush_notified", false);
        if (byteArrayExtra3 != null) {
            dq dqVar3 = new dq();
            try {
                h2.c(dqVar3, byteArrayExtra3);
                c10 = n.c(this.f36296a);
                m1455a = dqVar3.m1455a();
                cz a10 = dqVar3.a();
                czVar = cz.SendMessage;
                if (a10 == czVar && m1455a != null && !c10.w() && !booleanExtra) {
                    m1455a.a("mrt", stringExtra);
                    m1455a.a("mat", Long.toString(System.currentTimeMillis()));
                    if (n(dqVar3)) {
                        tf.c.s("this is a mina's message, ack later");
                        m1455a.a("__hybrid_message_ts", String.valueOf(m1455a.m1422a()));
                        m1455a.a("__hybrid_device_status", String.valueOf((int) h2.a(this.f36296a, dqVar3)));
                    } else {
                        o(dqVar3);
                    }
                }
            } catch (ej | Exception e11) {
                tf.c.o(e11);
            }
            if (dqVar3.a() == czVar && !dqVar3.m1463b()) {
                if (com.xiaomi.push.service.i.J(dqVar3)) {
                    Object[] objArr = new Object[2];
                    objArr[0] = dqVar3.b();
                    objArr[1] = m1455a != null ? m1455a.m1424a() : "";
                    format = String.format("drop an un-encrypted wake-up messages. %1$s, %2$s", objArr);
                } else {
                    Object[] objArr2 = new Object[2];
                    objArr2[0] = dqVar3.b();
                    objArr2[1] = m1455a != null ? m1455a.m1424a() : "";
                    format = String.format("drop an un-encrypted messages. %1$s, %2$s", objArr2);
                }
                tf.c.l(format);
                p0.c(this.f36296a, dqVar3, booleanExtra);
                return null;
            }
            if (dqVar3.a() == czVar && dqVar3.m1463b() && com.xiaomi.push.service.i.J(dqVar3) && (!booleanExtra || m1455a == null || m1455a.m1425a() == null || !m1455a.m1425a().containsKey("notify_effect"))) {
                Object[] objArr3 = new Object[2];
                objArr3[0] = dqVar3.b();
                objArr3[1] = m1455a != null ? m1455a.m1424a() : "";
                tf.c.l(String.format("drop a wake-up messages which not has 'notify_effect' attr. %1$s, %2$s", objArr3));
                p0.e(this.f36296a, dqVar3, booleanExtra);
                return null;
            }
            if (c10.s() || dqVar3.f160a == cz.Registration) {
                if (!c10.s() || !c10.y()) {
                    return c(dqVar3, booleanExtra, byteArrayExtra3, stringExtra2, intExtra, intent);
                }
                if (dqVar3.f160a != cz.UnRegistration) {
                    p0.h(this.f36296a, dqVar3, booleanExtra);
                    j.j0(this.f36296a);
                } else if (dqVar3.m1463b()) {
                    c10.e();
                    j.m(this.f36296a);
                    PushMessageHandler.a();
                } else {
                    tf.c.u("receiving an un-encrypt unregistration message");
                }
            } else if (com.xiaomi.push.service.i.J(dqVar3)) {
                return c(dqVar3, booleanExtra, byteArrayExtra3, stringExtra2, intExtra, intent);
            } else {
                p0.h(this.f36296a, dqVar3, booleanExtra);
                boolean u10 = c10.u();
                tf.c.u("receive message without registration. need re-register!registered?" + u10);
                if (u10) {
                    g();
                }
            }
            return null;
        }
        str2 = "receiving an empty message, drop";
        tf.c.u(str2);
        return null;
    }

    public List<String> f(TimeZone timeZone, TimeZone timeZone2, List<String> list) {
        if (timeZone.equals(timeZone2)) {
            return list;
        }
        long rawOffset = ((timeZone.getRawOffset() - timeZone2.getRawOffset()) / 1000) / 60;
        long parseLong = ((((Long.parseLong(list.get(0).split(CertificateUtil.DELIMITER)[0]) * 60) + Long.parseLong(list.get(0).split(CertificateUtil.DELIMITER)[1])) - rawOffset) + 1440) % 1440;
        long parseLong2 = ((((Long.parseLong(list.get(1).split(CertificateUtil.DELIMITER)[0]) * 60) + Long.parseLong(list.get(1).split(CertificateUtil.DELIMITER)[1])) - rawOffset) + 1440) % 1440;
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(parseLong / 60), Long.valueOf(parseLong % 60)));
        arrayList.add(String.format("%1$02d:%2$02d", Long.valueOf(parseLong2 / 60), Long.valueOf(parseLong2 % 60)));
        return arrayList;
    }
}
