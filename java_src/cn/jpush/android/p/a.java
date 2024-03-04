package cn.jpush.android.p;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import cn.jpush.android.aa.c;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.r.b;
import cn.jpush.android.t.h;
import cn.jpush.android.u.d;
import cn.jpush.android.x.e;
import com.facebook.internal.ServerProtocol;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a extends cn.jpush.android.u.a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f3181a;

    /* renamed from: d  reason: collision with root package name */
    private b f3184d;

    /* renamed from: c  reason: collision with root package name */
    private int f3183c = 0;

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<Integer, d> f3182b = new ConcurrentHashMap<>();

    private a() {
    }

    public static a a() {
        if (f3181a == null) {
            synchronized (a.class) {
                if (f3181a == null) {
                    f3181a = new a();
                }
            }
        }
        return f3181a;
    }

    private d a(int i9) {
        d dVar = this.f3182b.get(Integer.valueOf(i9));
        if (dVar == null) {
            synchronized (a.class) {
                if (i9 == 200) {
                    dVar = new cn.jpush.android.t.a(this);
                } else if (i9 == 201) {
                    dVar = new h(this);
                }
                if (dVar != null) {
                    this.f3182b.put(Integer.valueOf(i9), dVar);
                }
            }
            Logger.d("InAppMessagingManager", "init in app message, type: " + i9);
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, Bundle bundle) {
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, str, bundle);
    }

    public static void a(Context context, String str, cn.jpush.android.d.d dVar, boolean z10) {
        if (context != null && dVar != null) {
            if (dVar.aL == 1 || z10) {
                c.a(context, str, dVar, (Intent) null);
                return;
            }
            return;
        }
        Logger.w("InAppMessagingManager", "[sendInAppMsgToUserReceiver] unexpected error, context: " + context + ", message: " + dVar);
    }

    private void b(Context context, int i9, int i10, int i11) {
        Bundle bundle = new Bundle();
        bundle.putInt("display_state", i9);
        bundle.putInt("in_app_type", i10);
        bundle.putInt("display_style", i11);
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "in_app_display_state", bundle);
    }

    private void b(Context context, String str, int i9, boolean z10) {
        Bundle bundle = new Bundle();
        bundle.putString("activity_name", str);
        bundle.putInt(ServerProtocol.DIALOG_PARAM_STATE, i9);
        bundle.putBoolean("type", z10);
        JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "handle_life_resume", bundle);
    }

    private boolean b(int i9) {
        for (Integer num : this.f3182b.keySet()) {
            d a10 = a(num.intValue());
            if (a10 != null && a10.a(i9) != 0) {
                this.f3183c = a10.a();
                Logger.d("InAppMessagingManager", "current display position is occupied, type is " + this.f3183c);
                return false;
            }
        }
        return true;
    }

    private void c(Context context) {
        for (Integer num : this.f3182b.keySet()) {
            d dVar = this.f3182b.get(Integer.valueOf(num.intValue()));
            if (dVar != null) {
                dVar.d(context);
            }
        }
    }

    private void d(final Context context) {
        try {
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                Logger.d("InAppMessagingManager", "change to foreground, start delay to deal cache message, delay time: 5000");
                e(context);
                b bVar = new b();
                this.f3184d = bVar;
                bVar.a(new b.a() { // from class: cn.jpush.android.p.a.1
                    @Override // cn.jpush.android.r.b.a
                    public void a() {
                        Logger.d("InAppMessagingManager", "timer time-up to process cache message");
                        a.this.a(context, "in_app_msg_handle", (Bundle) null);
                    }
                }, 5000L, 1000L);
            } else {
                Logger.d("InAppMessagingManager", "redirect to process cache message");
                a(context, "in_app_msg_handle", (Bundle) null);
            }
        } catch (Throwable th2) {
            Logger.w("InAppMessagingManager", "start delay timer failed: " + th2.getMessage());
        }
    }

    private void e(Context context) {
        b bVar = this.f3184d;
        if (bVar != null) {
            bVar.a();
        }
    }

    private void e(Context context, cn.jpush.android.d.d dVar) {
        if (dVar == null) {
            Logger.d("InAppMessagingManager", "message is null, no message to deal");
            return;
        }
        d a10 = a(dVar.bn);
        if (a10 == null) {
            Logger.w("InAppMessagingManager", "[processMessage] unexpected error infs is null");
            return;
        }
        int a11 = cn.jpush.android.t.d.a(dVar.aA, dVar.aC);
        if (!b(a11)) {
            boolean z10 = dVar.bn == this.f3183c;
            if (!dVar.bp && !a10.a(context, z10, dVar)) {
                Logger.d("InAppMessagingManager", "message not display, cache recv message, type: " + dVar.bn);
                a10.b(context, dVar);
                return;
            } else if (!z10) {
                cn.jpush.android.d.d dVar2 = new cn.jpush.android.d.d();
                dVar2.bn = this.f3183c;
                dVar2.f3031q = a11;
                a(context, "cn.jpush.android.intent.DISPLAYED_STOP", dVar2, true);
            }
        }
        a10.a(context, dVar);
    }

    private synchronized cn.jpush.android.d.d f(Context context, cn.jpush.android.d.d dVar) {
        d a10;
        int a11;
        try {
            int i9 = 0;
            int i10 = 0;
            for (Integer num : this.f3182b.keySet()) {
                int intValue = num.intValue();
                d dVar2 = this.f3182b.get(Integer.valueOf(intValue));
                if (dVar2 != null && i10 <= (a11 = dVar2.a(context)) && dVar2.c(context)) {
                    if (i10 != a11 || i9 == 0) {
                        i9 = intValue;
                        i10 = a11;
                    } else if (intValue == 200) {
                        i9 = intValue;
                    }
                }
            }
            if (this.f3182b.size() <= 0 || i9 == 0) {
                Logger.d("InAppMessagingManager", "first start create notify to check file cache");
                a10 = a(201);
            } else {
                a10 = this.f3182b.get(Integer.valueOf(i9));
            }
            if (a10 == null) {
                Logger.d("InAppMessagingManager", "no other in app message to deal, type: " + i9);
                return dVar;
            }
            cn.jpush.android.d.d b10 = a10.b(context);
            if (dVar != null) {
                if (b10 == null) {
                    return dVar;
                }
                b10.au = dVar.au;
                if (a10.a(context) <= dVar.bo) {
                    a10.b(context, b10);
                    return dVar;
                }
                d a12 = a(dVar.bn);
                if (a12 != null) {
                    a12.b(context, dVar);
                }
            }
            Logger.d("InAppMessagingManager", "deal cache message, type: " + i9 + ", priority: " + i10);
            return b10;
        } catch (Throwable th2) {
            Logger.w("InAppMessagingManager", "get message for priority failed, " + th2.getMessage());
            return null;
        }
    }

    public void a(Context context) {
        Logger.d("InAppMessagingManager", "back to background for service");
        c(context);
    }

    public void a(Context context, int i9) {
        for (Integer num : this.f3182b.keySet()) {
            d a10 = a(num.intValue());
            if (a10 != null) {
                a10.a(context, i9);
            }
        }
    }

    public void a(Context context, int i9, int i10) {
        Logger.d("InAppMessagingManager", "Sync to main process to stop the display style inapp, inappType: " + i9 + ", displayStyle: " + i10);
        d dVar = this.f3182b.get(Integer.valueOf(i9));
        if (dVar != null) {
            dVar.b(context, i10);
        }
    }

    @Override // cn.jpush.android.u.a
    public void a(Context context, int i9, int i10, int i11) {
        String str;
        Logger.dd("InAppMessagingManager", "message status changed, type: " + i9 + ", displayStyle: " + i10 + ", status: " + i11);
        b(context, i11, i9, i10);
        if (i11 == 0) {
            if (!cn.jpush.android.af.a.k(context)) {
                str = "not in foreground, handle next in app stop";
            } else if (!cn.jpush.android.t.d.d(context)) {
                a(context, "in_app_msg_handle", (Bundle) null);
                return;
            } else {
                str = "current black list not handle inapp msg";
            }
            Logger.d("InAppMessagingManager", str);
        }
    }

    public void a(Context context, Bundle bundle) {
        if (cn.jpush.android.cache.a.d(context)) {
            Logger.i("InAppMessagingManager", "Service is stopped, give up all the cache message");
        } else if (JPushConstants.isTcpConnected()) {
            e(context, f(context, null));
        } else {
            Logger.i("InAppMessagingManager", "tcp is disconnected, give up to deal cache message");
        }
    }

    public void a(Context context, cn.jpush.android.d.d dVar) {
        e(context, f(context, dVar));
    }

    public void a(Context context, e eVar, int i9) {
        if (eVar == null) {
            Logger.w("InAppMessagingManager", "[onJsLoadedCallback] message is null");
            return;
        }
        try {
            d a10 = a(eVar.u().bn);
            if (a10 == null) {
                Logger.w("InAppMessagingManager", "unexpected error of infs is null");
            } else {
                a10.a(context, eVar, i9);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, e eVar, String str) {
        if (eVar == null) {
            Logger.w("InAppMessagingManager", "[onJsDataReport] message is null");
            return;
        }
        try {
            d a10 = a(eVar.u().bn);
            if (a10 == null) {
                Logger.w("InAppMessagingManager", "unexpected error of infs is null");
            } else {
                a10.a(context, eVar, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, String str) {
        for (Integer num : this.f3182b.keySet()) {
            d dVar = this.f3182b.get(Integer.valueOf(num.intValue()));
            if (dVar != null) {
                dVar.b(context.getApplicationContext(), str);
            }
        }
        a(context.getApplicationContext(), str, 0, true);
    }

    @Override // cn.jpush.android.u.a
    public void a(Context context, String str, int i9) {
        cn.jpush.android.d.d dVar = new cn.jpush.android.d.d();
        dVar.f3017c = str;
        dVar.bn = i9;
        a(context, "cn.jpush.android.intent.NOTIFY_INAPP_CANCEL", dVar, true);
    }

    public void a(Context context, String str, int i9, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sync current page status, page: ");
        sb2.append(str);
        sb2.append(", isEnter: ");
        sb2.append(i9 == 1);
        sb2.append(", isActivity: ");
        sb2.append(z10);
        Logger.d("InAppMessagingManager", sb2.toString());
        cn.jpush.android.t.d.a(str, i9, z10);
        b(context, str, i9, z10);
    }

    public void a(Context context, String str, boolean z10) {
        a(context, str, z10 ? 1 : 0, false);
        Logger.d("InAppMessagingManager", "[setCurrentPageByUser] set fragment page by user, pageName: " + str + ", isEnter: " + z10);
        if (z10) {
            if (!cn.jpush.android.t.d.a(context, str)) {
                return;
            }
        } else if (cn.jpush.android.t.d.e(context)) {
            return;
        }
        a(context, 1);
    }

    public void a(Context context, JSONObject jSONObject) {
        try {
            String optString = jSONObject.getJSONObject("content").optString("ids");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            Logger.d("InAppMessagingManager", "dealCancelInAppMessage ids=" + optString);
            d a10 = a(201);
            if (a10 == null) {
                Logger.ww("InAppMessagingManager", "unexpected error, infs is null");
            } else {
                a10.d(context, optString);
            }
        } catch (Throwable th2) {
            Logger.w("InAppMessagingManager", "[cancelInAppMessage] parse ids json failed, " + th2.getMessage());
        }
    }

    public void a(e eVar, int i9, String str) {
        if (eVar == null) {
            Logger.w("InAppMessagingManager", "[onWebInAppClick] message is null");
            return;
        }
        try {
            d a10 = a(eVar.u().bn);
            if (a10 == null) {
                Logger.w("InAppMessagingManager", "unexpected error of infs is null");
            } else {
                a10.a(eVar, i9, str);
            }
        } catch (Throwable unused) {
        }
    }

    public void b(Context context) {
        d a10 = a(200);
        if (a10 != null) {
            a10.f(context);
        }
    }

    public void b(Context context, int i9) {
        if (i9 == 0) {
            c(context);
        } else if (i9 == 1 || i9 == 2) {
            d(context);
        }
    }

    public void b(Context context, Bundle bundle) {
        if (bundle != null) {
            int i9 = bundle.getInt("display_state");
            int i10 = bundle.getInt("in_app_type");
            int i11 = bundle.getInt("display_style");
            d a10 = a(i10);
            if (a10 != null) {
                a10.a(i11, i9);
            }
        }
    }

    public void b(Context context, cn.jpush.android.d.d dVar) {
        if (dVar == null) {
            Logger.w("InAppMessagingManager", "[handleInAppMessage] message is null");
            return;
        }
        try {
            d a10 = a(dVar.bn);
            if (a10 == null) {
                Logger.w("InAppMessagingManager", "[handleInAppMessage] unexpected error of infs is null");
            } else {
                a10.c(context, dVar);
            }
        } catch (Throwable unused) {
        }
    }

    public void b(Context context, String str) {
        for (Integer num : this.f3182b.keySet()) {
            d dVar = this.f3182b.get(Integer.valueOf(num.intValue()));
            if (dVar != null) {
                dVar.a(context.getApplicationContext(), str);
            }
        }
        a(context.getApplicationContext(), str, 1, true);
    }

    public void c(Context context, cn.jpush.android.d.d dVar) {
        if (dVar == null) {
            Logger.w("InAppMessagingManager", "[dismissInAppMessage] message is null");
            return;
        }
        try {
            d a10 = a(dVar.bn);
            if (a10 == null) {
                Logger.w("InAppMessagingManager", "[dismissInAppMessage] unexpected error of infs is null");
            } else {
                a10.d(context, dVar);
            }
        } catch (Throwable unused) {
        }
    }

    public void c(Context context, String str) {
        for (Integer num : this.f3182b.keySet()) {
            d dVar = this.f3182b.get(Integer.valueOf(num.intValue()));
            if (dVar != null) {
                dVar.c(context, str);
            }
        }
    }

    public boolean c(Context context, int i9) {
        try {
            d a10 = a(i9);
            if (a10 == null) {
                Logger.w("InAppMessagingManager", "unexpected error of infs is null");
                return false;
            }
            return a10.e(context);
        } catch (Throwable unused) {
            return false;
        }
    }

    public void d(Context context, cn.jpush.android.d.d dVar) {
        if (context == null || dVar == null) {
            return;
        }
        cn.jpush.android.d.b.a(context, dVar);
    }
}
