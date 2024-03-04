package cn.jpush.android.t;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.View;
import cn.jpush.android.af.j;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.r.b;
import cn.jpush.android.s.c;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c implements Handler.Callback, c.a, cn.jpush.android.u.c {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, cn.jpush.android.w.c> f3297a;

    /* renamed from: c  reason: collision with root package name */
    private Handler f3299c;

    /* renamed from: d  reason: collision with root package name */
    private cn.jpush.android.s.c f3300d;

    /* renamed from: e  reason: collision with root package name */
    private cn.jpush.android.r.b f3301e;

    /* renamed from: f  reason: collision with root package name */
    private long f3302f;

    /* renamed from: g  reason: collision with root package name */
    private cn.jpush.android.u.b f3303g;

    /* renamed from: h  reason: collision with root package name */
    private int f3304h = 0;

    /* renamed from: b  reason: collision with root package name */
    private g f3298b = new g();

    public c(cn.jpush.android.u.b bVar) {
        f3297a = new HashMap();
        this.f3303g = bVar;
        this.f3299c = new Handler(Looper.getMainLooper(), this);
    }

    private int a(int i9, boolean z10) {
        return i9 != 1 ? i9 != 3 ? 1029 : 1031 : z10 ? UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_ANIMATEDPASTER : UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_SUBTITLE;
    }

    private static void a(Context context, int i9, cn.jpush.android.x.e eVar) {
        if (context == null) {
            Logger.d("InAppDisplayHelper", "set layout config failed with context is null.");
            return;
        }
        try {
            DisplayMetrics a10 = j.a(context);
            cn.jpush.android.x.g gVar = new cn.jpush.android.x.g();
            String a11 = cn.jpush.android.x.g.a(i9, 1);
            cn.jpush.android.w.c cVar = null;
            if (a11 != null && f3297a != null) {
                cn.jpush.android.w.c c10 = i9 != 1 ? i9 != 2 ? i9 != 3 ? null : gVar.c(context, a10, eVar) : gVar.e(context, a10, eVar) : gVar.a(context, a10, eVar);
                if (c10 != null) {
                    f3297a.put(a11, c10);
                }
            }
            String a12 = cn.jpush.android.x.g.a(i9, 2);
            if (a12 == null || f3297a == null) {
                return;
            }
            if (i9 == 1) {
                cVar = gVar.b(context, a10, eVar);
            } else if (i9 == 2) {
                cVar = gVar.f(context, a10, eVar);
            } else if (i9 == 3) {
                cVar = gVar.d(context, a10, eVar);
            }
            if (cVar != null) {
                f3297a.put(a12, cVar);
            }
        } catch (Throwable th2) {
            Logger.w("InAppDisplayHelper", "[setInAppLayoutConfig] failed, error: " + th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Context context, final cn.jpush.android.x.e eVar) {
        c();
        this.f3302f = System.currentTimeMillis();
        cn.jpush.android.r.b bVar = new cn.jpush.android.r.b();
        this.f3301e = bVar;
        bVar.a(new b.a() { // from class: cn.jpush.android.t.c.3
            @Override // cn.jpush.android.r.b.a
            public void a() {
                Logger.ww("InAppDisplayHelper", "js load callback timeout, time: " + (System.currentTimeMillis() - c.this.f3302f));
                c.this.a(context, 1006, eVar, true, new Object[0]);
            }
        }, 10000L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, cn.jpush.android.x.e eVar, boolean z10) {
        int i9;
        try {
            if (!eVar.p() && !cn.jpush.android.af.a.k(context)) {
                Logger.dd("InAppDisplayHelper", "delay time up, is in background");
                a(context, !z10 ? 1009 : 1010, eVar, true, new Object[0]);
            } else if (a(context, 1012, eVar, false, new Object[0])) {
                a(context, 1015, eVar, true, new Object[0]);
                Logger.dd("InAppDisplayHelper", "message is intercepted, not to show");
            } else if (d.d(context)) {
                Logger.dd("InAppDisplayHelper", "message not display in black page");
                a(context, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_WATERMARK, eVar, true, new Object[0]);
            } else if (!d.a(eVar.u().bu)) {
                Logger.dd("InAppDisplayHelper", "message not display for current page not in srv specified pages");
                a(context, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_PICTURE_JOIN, eVar, true, new Object[0]);
            } else {
                Logger.dd("InAppDisplayHelper", "ready to display message");
                if (cn.jpush.android.af.a.c(context)) {
                    eVar.k();
                }
                Activity a10 = cn.jpush.android.r.a.a(context);
                int a11 = a10 != null ? this.f3298b.a(a10, this.f3300d, false) : 100;
                JSONObject jSONObject = new JSONObject();
                if (a11 != 0) {
                    a(context, 1015, eVar, true, new Object[0]);
                    Logger.ww("InAppDisplayHelper", "show in app message failed. displayCode: " + a11);
                    i9 = 1013;
                } else {
                    if (eVar.t()) {
                        String canonicalName = a10.getClass().getCanonicalName();
                        jSONObject.put("activity_name", canonicalName);
                        Logger.d("InAppDisplayHelper", "show in app message success, report activity page name: " + canonicalName);
                    }
                    i9 = 1014;
                }
                a(context, i9, eVar, false, Integer.valueOf(a11), Boolean.FALSE, jSONObject);
                cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.IN_APP_MSG_ARRIVED_INTERVAL", eVar.u(), false);
            }
        } catch (Throwable th2) {
            Logger.ww("InAppDisplayHelper", "in app message show failed" + th2.getMessage());
            a(context, 1008, eVar, true, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Context context, int i9, cn.jpush.android.x.e eVar, boolean z10, Object... objArr) {
        boolean z11 = true;
        if (eVar != null) {
            int i10 = eVar.u().bn;
            Logger.d("InAppDisplayHelper", "dispatch display action, eventType: " + i9 + ", inAppType: " + i10 + ", dismiss: " + z10);
            cn.jpush.android.u.b bVar = this.f3303g;
            if (bVar != null && i9 != 1015) {
                z11 = bVar.a(context, i9, eVar, objArr).booleanValue();
            }
            if (z10) {
                e(context);
            }
        }
        return z11;
    }

    private long b(Context context, cn.jpush.android.x.e eVar) {
        long max = Math.max(System.currentTimeMillis() - cn.jpush.android.r.a.b(), 0L);
        long max2 = Math.max(eVar.q(), 0);
        Logger.d("InAppDisplayHelper", "stayForeTime: " + max + ", delayDisTime: " + max2);
        if (max2 <= 0 || max >= max2) {
            Logger.d("InAppDisplayHelper", "notify in-app message display directory, stay foreground time: " + max + ", server delay time: " + max2);
            return 0L;
        }
        long j10 = max2 - max;
        Logger.d("InAppDisplayHelper", "notify in-app message should delay to show, delay time: " + j10 + ", server delay time: " + max2);
        a(context, 1007, eVar, false, new Object[0]);
        return j10;
    }

    private static cn.jpush.android.x.e b(Context context, cn.jpush.android.d.d dVar) {
        if (dVar != null) {
            try {
                Logger.d("InAppDisplayHelper", "start buildAppMessage, message type: " + dVar.aA);
                int i9 = dVar.aA;
                if (i9 != 1) {
                    if (i9 != 2) {
                        if (i9 != 3) {
                            return null;
                        }
                        return c(context, dVar);
                    }
                    cn.jpush.android.x.e eVar = new cn.jpush.android.x.e(dVar);
                    a(context, eVar.o(), eVar);
                    return eVar;
                }
                return d(context, dVar);
            } catch (Throwable th2) {
                Logger.w("InAppDisplayHelper", "in-app message buildAppMessage failed, " + th2.getMessage());
                return null;
            }
        }
        return null;
    }

    private boolean b(Context context) {
        g gVar = this.f3298b;
        return gVar != null && gVar.a(this.f3300d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static cn.jpush.android.w.c c(Context context, int i9) {
        cn.jpush.android.w.c cVar = null;
        if (context == null) {
            Logger.d("InAppDisplayHelper", "[getLayoutConfig] context is null");
            return null;
        }
        try {
            if (f3297a != null) {
                int d10 = d(context);
                if (d10 < 0) {
                    Logger.d("InAppDisplayHelper", "[getLayoutConfig] get screen orientation failed, curOrientation: " + d10);
                    return null;
                }
                cn.jpush.android.w.c cVar2 = f3297a.get(cn.jpush.android.x.g.a(i9, d10));
                if (cVar2 == null) {
                    try {
                        Logger.d("InAppDisplayHelper", "get in-app layout config failed, orientation config not exist");
                        return null;
                    } catch (Throwable th2) {
                        cVar = cVar2;
                        th = th2;
                        Logger.w("InAppDisplayHelper", "[getLayoutConfig] failed. err: " + th.getMessage());
                        return cVar;
                    }
                }
                return cVar2;
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static cn.jpush.android.x.e c(Context context, cn.jpush.android.d.d dVar) {
        try {
            cn.jpush.android.x.c a10 = cn.jpush.android.x.c.d().a(dVar.aC).a(dVar.f3009be).b(dVar.aV).a(dVar).a();
            a(context, a10.o(), a10);
            return a10;
        } catch (Throwable th2) {
            Logger.w("InAppDisplayHelper", "build banner style message failed, err: " + th2.getMessage());
            return null;
        }
    }

    private void c() {
        if (this.f3301e != null) {
            Logger.d("InAppDisplayHelper", "cancel js load timer");
            this.f3301e.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(Context context) {
        g gVar = this.f3298b;
        return gVar != null && gVar.b(this.f3300d);
    }

    private static int d(Context context) {
        if (context == null) {
            return -1;
        }
        return context.getResources().getConfiguration().orientation;
    }

    private static cn.jpush.android.x.e d(Context context, cn.jpush.android.d.d dVar) {
        try {
            cn.jpush.android.x.b a10 = cn.jpush.android.x.b.j().a(dVar.aV).b(dVar.aW).c(dVar.aX).a(dVar.aD).d(dVar.f3015bk).e(dVar.f3016bl).c(dVar.aC).b(dVar.aE).a(dVar).a();
            a(context, a10.o(), a10);
            return a10;
        } catch (Throwable th2) {
            Logger.w("InAppDisplayHelper", "build banner style message failed, err: " + th2.getMessage());
            return null;
        }
    }

    private boolean d() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    private boolean e(final Context context) {
        try {
            c();
            if (d()) {
                f(context);
                return true;
            }
            Logger.d("InAppDisplayHelper", "dismiss in app change to main thread, curThread: " + Thread.currentThread().getName());
            Handler handler = this.f3299c;
            if (handler != null) {
                handler.post(new cn.jpush.android.af.e("dismissInApp") { // from class: cn.jpush.android.t.c.4
                    @Override // cn.jpush.android.af.e
                    public void a() {
                        c.this.f(context);
                    }
                });
                return true;
            }
            return true;
        } catch (Throwable th2) {
            Logger.w("InAppDisplayHelper", "dismiss in app message failed, " + th2.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context) {
        g gVar = this.f3298b;
        if (gVar != null) {
            try {
                gVar.a(context, this.f3300d);
                this.f3300d.a((c.a) null);
                cn.jpush.android.u.b bVar = this.f3303g;
                if (bVar != null) {
                    bVar.a(context, 1015, this.f3300d.c(), new Object[0]);
                }
            } catch (Throwable unused) {
            }
            Logger.d("InAppDisplayHelper", "[destroy] windowManager destroy completed. thread: " + Thread.currentThread().getName());
        }
    }

    @Override // cn.jpush.android.u.c
    public void a() {
        this.f3299c.removeCallbacksAndMessages(null);
        this.f3299c = null;
    }

    @Override // cn.jpush.android.u.c
    public void a(int i9) {
        this.f3304h = i9;
    }

    @Override // cn.jpush.android.u.c
    public void a(Context context) {
        if (context == null || this.f3298b == null || this.f3300d == null || !b(context)) {
            return;
        }
        if (!this.f3298b.a()) {
            a(context, 1024, this.f3300d.c(), false, new Object[0]);
            return;
        }
        cn.jpush.android.x.e c10 = this.f3300d.c();
        c10.f3529u = 4;
        a(context, 1015, c10, true, new Object[0]);
    }

    @Override // cn.jpush.android.u.c
    public void a(Context context, int i9) {
        try {
            if (!c(context)) {
                Logger.d("InAppDisplayHelper", "in app not inflate ready");
                return;
            }
            Handler handler = this.f3299c;
            if (handler == null || !handler.hasMessages(1000)) {
                if (b(context)) {
                    a(context, a(i9, true), this.f3300d.c(), true, new Object[0]);
                    return;
                }
                return;
            }
            Logger.d("InAppDisplayHelper", "in app is in display delaying, drop it");
            this.f3299c.removeMessages(1000);
            a(context, a(i9, false), this.f3300d.c(), true, new Object[0]);
        } catch (Throwable unused) {
        }
    }

    @Override // cn.jpush.android.s.c.a
    public void a(Context context, View view, Object obj) {
        a(context, 1015, obj instanceof cn.jpush.android.x.e ? (cn.jpush.android.x.e) obj : null, true, new Object[0]);
    }

    @Override // cn.jpush.android.u.c
    public void a(final Context context, final cn.jpush.android.x.e eVar, int i9) {
        c();
        if (context == null || eVar == null) {
            Logger.w("InAppDisplayHelper", "unexpected param is null, context is " + context + ", message is " + eVar);
            a(JPushConstants.mApplicationContext, 1018, eVar, true, new Object[0]);
        } else if (i9 != 0) {
            a(context, 1005, eVar, true, Integer.valueOf(i9));
        } else {
            Logger.dd("InAppDisplayHelper", "tpl load success will display");
            a(context, 1004, eVar, false, new Object[0]);
            long b10 = b(context, eVar);
            if (b10 <= 0) {
                this.f3299c.post(new cn.jpush.android.af.e() { // from class: cn.jpush.android.t.c.2
                    @Override // cn.jpush.android.af.e
                    public void a() {
                        c.this.a(context, eVar, false);
                    }
                });
                return;
            }
            if (this.f3299c.hasMessages(1000)) {
                Logger.d("InAppDisplayHelper", "remove delaying message");
                this.f3299c.removeMessages(1000);
            }
            Message message = new Message();
            message.what = 1000;
            message.arg1 = eVar.u().bn;
            message.arg2 = (int) b10;
            Bundle bundle = new Bundle();
            bundle.putString("msg_data", eVar.v());
            message.setData(bundle);
            this.f3299c.sendMessageDelayed(message, b10);
        }
    }

    @Override // cn.jpush.android.u.c
    public void a(Context context, String str) {
        g gVar;
        if (b(context) && (gVar = this.f3298b) != null && gVar.b(str)) {
            a(context, 1025, this.f3300d.c(), false, new Object[0]);
        }
    }

    @Override // cn.jpush.android.u.c
    public void a(Context context, String str, boolean z10, boolean z11) {
        cn.jpush.android.s.c cVar;
        if (!z11) {
            if (c(context) && (cVar = this.f3300d) != null && cVar.c().n().equals(str)) {
                Logger.dd("InAppDisplayHelper", "cancel notify message, msgId: " + str);
                Handler handler = this.f3299c;
                if (handler != null && handler.hasMessages(1000)) {
                    Logger.d("InAppDisplayHelper", "remove delaying message");
                    this.f3299c.removeMessages(1000);
                }
                a(context, 1016, this.f3300d.c(), true, new Object[0]);
                return;
            }
            return;
        }
        g gVar = this.f3298b;
        if (gVar == null || !gVar.a() || !b(context)) {
            if (z10) {
                a(context, 1022, this.f3300d.c(), false, new Object[0]);
                return;
            }
            return;
        }
        cn.jpush.android.s.c cVar2 = this.f3300d;
        if (cVar2 == null || !cVar2.c().n().equals(str)) {
            return;
        }
        Logger.dd("InAppDisplayHelper", "cancel alert notify message, msgId: " + str);
        a(context, 1016, this.f3300d.c(), true, new Object[0]);
    }

    @Override // cn.jpush.android.u.c
    public void a(cn.jpush.android.x.e eVar, int i9, String str) {
        Context context = JPushConstants.mApplicationContext;
        if (eVar == null) {
            Logger.ww("InAppDisplayHelper", "onclick message is null");
            a(context, 1020, null, true, new Object[0]);
            return;
        }
        int i10 = i9 != 0 ? 1019 : 1021;
        if (i9 != 0) {
            cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.IN_APP_MSG_CLICK_INTERVAL", eVar.u(), false);
        }
        a(context, i10, eVar, i9 != 1, Integer.valueOf(i9), str);
    }

    @Override // cn.jpush.android.u.c
    public boolean a(final Context context, cn.jpush.android.d.d dVar) {
        if (context == null || dVar == null) {
            Logger.w("InAppDisplayHelper", "unexpected error, context is null");
            a(JPushConstants.mApplicationContext, 1000, dVar != null ? new cn.jpush.android.x.e(dVar) : null, false, new Object[0]);
            return false;
        }
        Logger.d("InAppDisplayHelper", "inflate message: type: " + dVar.aA + ", showPos: " + dVar.aC + ", messageType: " + dVar.bn);
        final cn.jpush.android.x.e b10 = b(context, dVar);
        if (b10 != null) {
            this.f3299c.post(new cn.jpush.android.af.e("inflateInAppMessage") { // from class: cn.jpush.android.t.c.1
                /* JADX WARN: Removed duplicated region for block: B:14:0x0093  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0098  */
                /* JADX WARN: Removed duplicated region for block: B:17:0x009e  */
                /* JADX WARN: Removed duplicated region for block: B:18:0x00a2  */
                @Override // cn.jpush.android.af.e
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void a() {
                    /*
                        r10 = this;
                        cn.jpush.android.t.c r0 = cn.jpush.android.t.c.this
                        android.content.Context r1 = r3
                        boolean r0 = cn.jpush.android.t.c.a(r0, r1)
                        java.lang.String r1 = "InAppDisplayHelper"
                        r2 = 0
                        if (r0 == 0) goto L4c
                        cn.jpush.android.t.c r0 = cn.jpush.android.t.c.this
                        cn.jpush.android.s.c r0 = cn.jpush.android.t.c.a(r0)
                        cn.jpush.android.x.e r0 = r0.c()
                        java.lang.String r0 = r0.n()
                        java.lang.String r3 = "has message display now, should override"
                        cn.jpush.android.helper.Logger.w(r1, r3)
                        cn.jpush.android.t.c r4 = cn.jpush.android.t.c.this
                        android.content.Context r5 = r3
                        r6 = 1017(0x3f9, float:1.425E-42)
                        cn.jpush.android.x.e r7 = r4
                        r8 = 0
                        r3 = 1
                        java.lang.Object[] r9 = new java.lang.Object[r3]
                        r9[r2] = r0
                        cn.jpush.android.t.c.a(r4, r5, r6, r7, r8, r9)
                        cn.jpush.android.t.c r0 = cn.jpush.android.t.c.this
                        cn.jpush.android.t.g r0 = cn.jpush.android.t.c.b(r0)
                        android.content.Context r3 = r3
                        cn.jpush.android.t.c r4 = cn.jpush.android.t.c.this
                        cn.jpush.android.s.c r4 = cn.jpush.android.t.c.a(r4)
                        r0.a(r3, r4)
                        cn.jpush.android.t.c r0 = cn.jpush.android.t.c.this
                        cn.jpush.android.s.c r0 = cn.jpush.android.t.c.a(r0)
                        r3 = 0
                        r0.a(r3)
                    L4c:
                        android.content.Context r0 = r3
                        cn.jpush.android.x.e r3 = r4
                        int r3 = r3.o()
                        cn.jpush.android.w.c r0 = cn.jpush.android.t.c.b(r0, r3)
                        if (r0 == 0) goto L90
                        cn.jpush.android.t.c r3 = cn.jpush.android.t.c.this
                        cn.jpush.android.x.e r4 = r4
                        cn.jpush.android.s.c r0 = cn.jpush.android.s.d.a(r0, r4)
                        cn.jpush.android.t.c.a(r3, r0)
                        cn.jpush.android.t.c r0 = cn.jpush.android.t.c.this
                        cn.jpush.android.s.c r0 = cn.jpush.android.t.c.a(r0)
                        if (r0 == 0) goto L90
                        cn.jpush.android.t.c r0 = cn.jpush.android.t.c.this
                        cn.jpush.android.s.c r0 = cn.jpush.android.t.c.a(r0)
                        android.content.Context r3 = r3
                        boolean r0 = r0.d(r3)
                        if (r0 == 0) goto L91
                        cn.jpush.android.t.c r3 = cn.jpush.android.t.c.this
                        android.content.Context r4 = r3
                        cn.jpush.android.x.e r5 = r4
                        cn.jpush.android.t.c.a(r3, r4, r5)
                        cn.jpush.android.t.c r3 = cn.jpush.android.t.c.this
                        cn.jpush.android.s.c r3 = cn.jpush.android.t.c.a(r3)
                        cn.jpush.android.t.c r4 = cn.jpush.android.t.c.this
                        r3.a(r4)
                        goto L91
                    L90:
                        r0 = 0
                    L91:
                        if (r0 == 0) goto L98
                        r3 = 1003(0x3eb, float:1.406E-42)
                        r6 = 1003(0x3eb, float:1.406E-42)
                        goto L9c
                    L98:
                        r3 = 1002(0x3ea, float:1.404E-42)
                        r6 = 1002(0x3ea, float:1.404E-42)
                    L9c:
                        if (r0 == 0) goto La2
                        java.lang.String r0 = "wb inflate success"
                        goto La5
                    La2:
                        java.lang.String r0 = "wb inflate failed"
                    La5:
                        cn.jpush.android.helper.Logger.dd(r1, r0)
                        cn.jpush.android.t.c r4 = cn.jpush.android.t.c.this
                        android.content.Context r5 = r3
                        cn.jpush.android.x.e r7 = r4
                        r8 = 0
                        java.lang.Object[] r9 = new java.lang.Object[r2]
                        cn.jpush.android.t.c.a(r4, r5, r6, r7, r8, r9)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.t.c.AnonymousClass1.a():void");
                }
            });
            return true;
        }
        Logger.w("InAppDisplayHelper", "in-app message build message failed");
        a(context, 1001, new cn.jpush.android.x.e(dVar), false, new Object[0]);
        return false;
    }

    @Override // cn.jpush.android.u.c
    public int b() {
        return this.f3304h;
    }

    @Override // cn.jpush.android.u.c
    public void b(Context context, String str) {
        g gVar;
        if (b(context) && (gVar = this.f3298b) != null && gVar.b(str)) {
            a(context, UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER, this.f3300d.c(), false, new Object[0]);
        }
    }

    @Override // cn.jpush.android.u.c
    public void c(Context context, String str) {
        g gVar;
        if (context == null || (gVar = this.f3298b) == null || this.f3300d == null || !gVar.a(str) || !b(context)) {
            return;
        }
        Logger.d("InAppDisplayHelper", "[onActivityDestroyed], to dismiss in app, activityName: " + str);
        cn.jpush.android.x.e c10 = this.f3300d.c();
        c10.f3529u = 3;
        a(context, 1015, c10, true, new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0049  */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handleMessage(android.os.Message r11) {
        /*
            r10 = this;
            java.lang.String r0 = "InAppDisplayHelper"
            int r1 = r11.what
            r2 = 0
            r3 = 1000(0x3e8, float:1.401E-42)
            if (r1 != r3) goto L5d
            android.content.Context r5 = cn.jpush.android.local.JPushConstants.mApplicationContext
            r1 = 1
            android.os.Bundle r11 = r11.getData()     // Catch: java.lang.Throwable -> L2d
            if (r11 == 0) goto L2b
            if (r5 == 0) goto L2b
            java.lang.String r3 = "msg_data"
            java.lang.String r11 = r11.getString(r3)     // Catch: java.lang.Throwable -> L2d
            cn.jpush.android.x.e r11 = cn.jpush.android.x.e.a(r11)     // Catch: java.lang.Throwable -> L2d
            if (r11 == 0) goto L2b
            java.lang.String r3 = "message delay up, start to display"
            cn.jpush.android.helper.Logger.d(r0, r3)     // Catch: java.lang.Throwable -> L29
            r10.a(r5, r11, r1)     // Catch: java.lang.Throwable -> L29
            goto L47
        L29:
            r11 = move-exception
            goto L2f
        L2b:
            r1 = 0
            goto L47
        L2d:
            r11 = move-exception
            r1 = 0
        L2f:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "handle message failed, "
            r3.append(r4)
            java.lang.String r11 = r11.getMessage()
            r3.append(r11)
            java.lang.String r11 = r3.toString()
            cn.jpush.android.helper.Logger.w(r0, r11)
        L47:
            if (r1 != 0) goto L5d
            cn.jpush.android.s.c r11 = r10.f3300d
            if (r11 == 0) goto L52
            cn.jpush.android.x.e r11 = r11.c()
            goto L53
        L52:
            r11 = 0
        L53:
            r7 = r11
            r6 = 1018(0x3fa, float:1.427E-42)
            r8 = 1
            java.lang.Object[] r9 = new java.lang.Object[r2]
            r4 = r10
            r4.a(r5, r6, r7, r8, r9)
        L5d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.t.c.handleMessage(android.os.Message):boolean");
    }
}
