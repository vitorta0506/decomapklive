package cn.jpush.android.t;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import com.tencent.ugc.datereport.UGCDataReportDef;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class h extends cn.jpush.android.u.d implements cn.jpush.android.u.b {

    /* renamed from: a  reason: collision with root package name */
    private cn.jpush.android.u.a f3326a;

    /* renamed from: d  reason: collision with root package name */
    private cn.jpush.android.d.d f3329d;

    /* renamed from: e  reason: collision with root package name */
    private int f3330e = 0;

    /* renamed from: c  reason: collision with root package name */
    private cn.jpush.android.u.c f3328c = new c(this);

    /* renamed from: b  reason: collision with root package name */
    private int f3327b = 2;

    /* loaded from: classes.dex */
    private static class a extends cn.jpush.android.af.e {

        /* renamed from: a  reason: collision with root package name */
        Context f3331a;

        /* renamed from: b  reason: collision with root package name */
        cn.jpush.android.d.d f3332b;

        /* renamed from: c  reason: collision with root package name */
        cn.jpush.android.u.a f3333c;

        a(Context context, cn.jpush.android.d.d dVar, cn.jpush.android.u.a aVar) {
            this.f3331a = context;
            this.f3332b = dVar;
            this.f3333c = aVar;
            this.f2899f = "NotifyInAppMessageAction";
        }

        private boolean a(Context context, cn.jpush.android.d.d dVar) {
            try {
                if (context == null || dVar == null) {
                    Logger.w("NotificationInAppHelper", "unexpected nulrl param error, context is " + context + ", message is " + dVar);
                    return false;
                }
                Logger.d("NotificationInAppHelper", "handle notify message, messageType: " + dVar.av);
                if (a(dVar)) {
                    Logger.ww("NotificationInAppHelper", "notify inapp message expired");
                    cn.jpush.android.helper.c.a(dVar.f3017c, 1603, context);
                    return false;
                } else if (b(context, dVar) != null) {
                    cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.INAPP_MESSAGE_ARRIVED", dVar, true);
                    return true;
                } else {
                    Logger.ww("NotificationInAppHelper", "notify tpl dl failed");
                    return false;
                }
            } catch (Throwable th2) {
                Logger.w("NotificationInAppHelper", "handle notify in-app message failed, " + th2.getMessage());
                return false;
            }
        }

        private boolean a(cn.jpush.android.d.d dVar) {
            if (TextUtils.isEmpty(dVar.at)) {
                return false;
            }
            return System.currentTimeMillis() >= cn.jpush.android.af.b.b(dVar.at);
        }

        private cn.jpush.android.d.d b(Context context, cn.jpush.android.d.d dVar) {
            String str;
            String str2;
            boolean z10;
            try {
                String str3 = dVar.f3007bc;
                if (TextUtils.isEmpty(str3)) {
                    str3 = cn.jpush.android.af.a.d(dVar.f3008bd);
                }
                String str4 = dVar.f3017c;
                LinkedHashMap<String, cn.jpush.android.x.f> a10 = f.a(context);
                cn.jpush.android.x.f fVar = a10.get(str3);
                str = "";
                if (fVar != null) {
                    str2 = fVar.f3536b;
                    if (cn.jpush.android.af.c.a(str2)) {
                        dVar.aY = "file://" + str2;
                        fVar.f3537c = System.currentTimeMillis();
                        Logger.d("NotificationInAppHelper", "use cache template, templateId: " + str3 + ", webPagePath: " + str2 + ", totalTemplateCount: " + a10.values().size() + ", update template file time: " + new File(str2).setLastModified(fVar.f3537c));
                    } else {
                        a10.remove(str3);
                        Logger.d("NotificationInAppHelper", "local config has template path, but the template file is not exist, will download again.");
                        str2 = "";
                    }
                    f.a(context, a10);
                } else {
                    str2 = "";
                }
                String str5 = dVar.f3008bd;
                int i9 = 0;
                if (TextUtils.isEmpty(str2)) {
                    Logger.d("NotificationInAppHelper", "no local template cache, start download template, url: " + str5);
                    if (TextUtils.isEmpty(str5)) {
                        Logger.w("NotificationInAppHelper", "template url is Empty! Give up to download!");
                        z10 = false;
                    } else {
                        String a11 = cn.jpush.android.z.a.a(str5, 5, 5000L);
                        boolean isEmpty = TextUtils.isEmpty(a11);
                        str = isEmpty ? "" : a11;
                        z10 = !isEmpty;
                    }
                    if (!z10) {
                        Logger.w("NotificationInAppHelper", "NOTE: failed to download html page. Give up this.");
                        return null;
                    }
                    String str6 = cn.jpush.android.af.c.a(context, "h5_tpls", 20) + str3 + ".html";
                    Logger.d("NotificationInAppHelper", "download template success, will save to local of path: " + str6);
                    if (cn.jpush.android.af.c.b(str6, str)) {
                        dVar.aY = "file://" + str6;
                        Logger.d("NotificationInAppHelper", "cache h5 template to local success, templateId: " + str3 + ", path: " + dVar.aY);
                        a10.put(str3, cn.jpush.android.x.f.a(str3, str6, System.currentTimeMillis()));
                        f.a(context, a10);
                    } else {
                        dVar.aY = dVar.f3008bd;
                    }
                }
                if (dVar.f3012bh.size() > 0) {
                    Logger.d("NotificationInAppHelper", "template has image resource, start download image to local, images: " + dVar.f3012bh.toString());
                    ArrayList<String> a12 = f.a(dVar.f3012bh, context, str5.substring(0, str5.lastIndexOf(FileUtils.RES_PREFIX_STORAGE) + 1), str4);
                    if (a12 == null) {
                        Logger.w("NotificationInAppHelper", "Load notify in-app message image resources failed, give up this in app!");
                        return null;
                    }
                    Logger.d("NotificationInAppHelper", "Load notify in-app message image succeed, webView will open cache!");
                    JSONObject jSONObject = new JSONObject(dVar.f3010bf);
                    while (i9 < a12.size()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("in_pic_path");
                        int i10 = i9 + 1;
                        sb2.append(i10);
                        jSONObject.put(sb2.toString(), a12.get(i9));
                        i9 = i10;
                    }
                    dVar.f3010bf = jSONObject.toString();
                    Logger.d("NotificationInAppHelper", "http image resources replace local path, new templateData: " + dVar.f3010bf);
                } else {
                    Logger.d("NotificationInAppHelper", "template no image resource.");
                }
            } catch (Throwable unused) {
            }
            return dVar;
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            cn.jpush.android.d.d dVar;
            if (a(this.f3331a, this.f3332b) || (dVar = this.f3332b) == null) {
                return;
            }
            if (!TextUtils.isEmpty(dVar.f3017c)) {
                cn.jpush.android.helper.c.a(this.f3332b.f3017c, 1604, this.f3331a);
            }
            if (this.f3332b.av == 104) {
                Logger.d("NotificationInAppHelper", "in app handle failed, start handle notification");
                cn.jpush.android.d.b.a(this.f3331a, this.f3332b);
            }
            if (this.f3333c != null) {
                cn.jpush.android.d.d dVar2 = this.f3332b;
                this.f3333c.a(this.f3331a, this.f3332b.bn, d.a(dVar2.aA, dVar2.aC), 0);
            }
        }
    }

    public h(cn.jpush.android.u.a aVar) {
        this.f3326a = aVar;
    }

    private void b(Context context, cn.jpush.android.x.e eVar, int i9) {
        if (eVar != null) {
            if (this.f3326a != null) {
                this.f3326a.a(context, eVar.u().bn, d.a(eVar.o(), eVar.u().aC), i9);
            }
            if (i9 != 1 && eVar.u().av == 104 && this.f3330e != 2) {
                Logger.d("NotificationInAppHelper", "in app handle completed, start handle notification, state: " + i9);
                f(context, eVar.u());
            }
        }
        this.f3330e = i9;
    }

    private boolean e(Context context, cn.jpush.android.d.d dVar) {
        String str;
        String str2;
        boolean z10 = false;
        if (context == null) {
            Logger.w("NotificationInAppHelper", "[openDeepLink] context is null");
            return false;
        } else if (dVar == null || TextUtils.isEmpty(dVar.K)) {
            Logger.d("NotificationInAppHelper", "is not deep link notification in app");
            return false;
        } else {
            try {
                Logger.d("NotificationInAppHelper", "open deeplink notification in app, targetPkg:" + dVar.N);
            } catch (Throwable th2) {
                Logger.w("NotificationInAppHelper", "url failed:" + th2.getMessage());
            }
            if (TextUtils.isEmpty(dVar.N)) {
                z10 = cn.jpush.android.aa.c.a(context, dVar.K, dVar.N);
                if (z10) {
                    str2 = dVar.f3017c;
                    cn.jpush.android.helper.c.a(str2, 1605, context);
                    return z10;
                }
                str = dVar.f3017c;
                cn.jpush.android.helper.c.a(str, 1606, context);
                return z10;
            } else if (cn.jpush.android.af.a.a(context, dVar.N, dVar.K)) {
                z10 = d.b(context, new cn.jpush.android.x.e(dVar));
                if (z10) {
                    str2 = dVar.f3017c;
                    cn.jpush.android.helper.c.a(str2, 1605, context);
                    return z10;
                }
                str = dVar.f3017c;
                cn.jpush.android.helper.c.a(str, 1606, context);
                return z10;
            } else {
                Logger.d("NotificationInAppHelper", "app not installed,fail_handle_type:" + dVar.L + ",fail_handle_url:" + dVar.M);
                int i9 = dVar.L;
                if (i9 == 0) {
                    Intent g10 = cn.jpush.android.af.a.g(context);
                    if (g10 != null) {
                        context.startActivity(g10);
                    }
                } else if (i9 == 1 || i9 == 2) {
                    if (TextUtils.isEmpty(dVar.M)) {
                        Logger.d("NotificationInAppHelper", "fail_handle_url is empty");
                    } else {
                        z10 = cn.jpush.android.aa.c.d(context, dVar.M);
                        if (z10) {
                            str2 = dVar.f3017c;
                            cn.jpush.android.helper.c.a(str2, 1605, context);
                        } else {
                            str = dVar.f3017c;
                            cn.jpush.android.helper.c.a(str, 1606, context);
                        }
                    }
                }
                return z10;
            }
        }
    }

    private void f(Context context, cn.jpush.android.d.d dVar) {
        if (dVar != null) {
            Logger.d("NotificationInAppHelper", "notify in app, start handle notify message");
            Bundle bundle = new Bundle();
            bundle.putString("content", dVar.c());
            JCoreHelper.runActionWithService(context, JPushConstants.SDK_TYPE, "in_app_notify_msg", bundle);
        }
    }

    @Override // cn.jpush.android.u.d
    public int a() {
        return 201;
    }

    @Override // cn.jpush.android.u.d
    public int a(int i9) {
        if (i9 == 1) {
            return this.f3330e;
        }
        return 0;
    }

    @Override // cn.jpush.android.u.d
    public int a(Context context) {
        return this.f3327b;
    }

    @Override // cn.jpush.android.u.b
    public Boolean a(Context context, int i9, cn.jpush.android.x.e eVar, Object... objArr) {
        if (context == null) {
            Logger.w("NotificationInAppHelper", "unexpected error context is null, eventType: " + i9);
        } else if (eVar != null) {
            try {
                String n9 = eVar.n();
                int i10 = eVar.u().bn;
                switch (i9) {
                    case 1000:
                    case 1001:
                    case 1002:
                    case 1015:
                        if (i9 != 1015) {
                            cn.jpush.android.helper.c.a(n9, 1604, context);
                        }
                        b(context, eVar, 0);
                        break;
                    case 1003:
                    case 1004:
                    case 1007:
                    case 1011:
                    case 1017:
                    case 1021:
                    case UGCDataReportDef.DR_DAU_EVENT_ID_EDIT_FILTER /* 1023 */:
                    case 1024:
                    case 1025:
                        break;
                    case 1005:
                    case 1006:
                    case 1008:
                    case 1009:
                    case 1010:
                    case 1013:
                    case 1018:
                    case 1020:
                        cn.jpush.android.helper.c.a(n9, 1604, context);
                        break;
                    case 1012:
                        boolean a10 = cn.jpush.android.aa.e.a(context, eVar.n(), "");
                        if (a10) {
                            cn.jpush.android.helper.c.a(n9, 1602, context);
                        }
                        return Boolean.valueOf(a10);
                    case 1014:
                        cn.jpush.android.helper.c.a(n9, 1600, context);
                        b(context, eVar, 2);
                        break;
                    case 1016:
                        cn.jpush.android.helper.c.a(n9, 1602, context);
                        break;
                    case 1019:
                        cn.jpush.android.helper.c.a(n9, 1601, context);
                        e(context, eVar.u());
                        break;
                    case 1022:
                        cn.jpush.android.u.a aVar = this.f3326a;
                        if (aVar != null) {
                            aVar.a(context, n9, i10);
                            break;
                        }
                        break;
                    default:
                        Logger.d("NotificationInAppHelper", "onDisplayEvent default eventType: " + i9);
                        break;
                }
            } catch (Throwable th2) {
                Logger.w("NotificationInAppHelper", "onDisplayEvent error: " + th2.getMessage());
            }
            return Boolean.TRUE;
        } else {
            Logger.ww("NotificationInAppHelper", "unexpected error message is null, eventType: " + i9);
        }
        return Boolean.FALSE;
    }

    @Override // cn.jpush.android.u.d
    public void a(int i9, int i10) {
        if (i9 == 1) {
            this.f3330e = i10;
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, int i9) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar != null) {
            cVar.a(context, i9);
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, cn.jpush.android.d.d dVar) {
        if (cn.jpush.android.af.a.k(context) && !d.d(context)) {
            this.f3330e = 1;
            this.f3329d = dVar;
            this.f3327b = dVar.bo;
            JCoreHelper.normalExecutor(context, JPushConstants.SDK_TYPE, new a(context, dVar, this.f3326a));
            return;
        }
        Logger.dd("NotificationInAppHelper", "cache notify message in background or page in black list");
        b(context, dVar);
        if (this.f3326a != null) {
            this.f3326a.a(context, dVar.bn, d.a(dVar.aA, dVar.aC), 0);
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(Context context, cn.jpush.android.x.e eVar, int i9) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar != null) {
            cVar.a(context, eVar, i9);
        }
    }

    @Override // cn.jpush.android.u.d
    public void a(cn.jpush.android.x.e eVar, int i9, String str) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar != null) {
            cVar.a(eVar, i9, str);
        }
    }

    @Override // cn.jpush.android.u.d
    public cn.jpush.android.d.d b(Context context) {
        return cn.jpush.android.w.e.b(context);
    }

    @Override // cn.jpush.android.u.d
    public void b(Context context, int i9) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar != null) {
            cVar.a(context, 3);
        }
    }

    @Override // cn.jpush.android.u.d
    public void b(Context context, cn.jpush.android.d.d dVar) {
        if (dVar != null) {
            this.f3327b = dVar.bo;
            cn.jpush.android.w.e.a(context, dVar);
        }
    }

    @Override // cn.jpush.android.u.d
    public void c(Context context, String str) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar != null) {
            cVar.c(context, str);
        }
    }

    @Override // cn.jpush.android.u.d
    public boolean c(Context context) {
        return cn.jpush.android.w.e.a(context) > 0;
    }

    @Override // cn.jpush.android.u.d
    public boolean c(Context context, cn.jpush.android.d.d dVar) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar != null) {
            this.f3329d = dVar;
            return cVar.a(context, dVar);
        }
        return false;
    }

    @Override // cn.jpush.android.u.d
    public void d(Context context) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar == null || this.f3330e != 2) {
            return;
        }
        cVar.a(context);
    }

    @Override // cn.jpush.android.u.d
    public void d(Context context, cn.jpush.android.d.d dVar) {
        cn.jpush.android.u.c cVar = this.f3328c;
        if (cVar != null) {
            cVar.a(context, dVar.f3017c, false, false);
        }
    }

    @Override // cn.jpush.android.u.d
    public void d(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            Logger.w("NotificationInAppHelper", "unexpected param is null");
            return;
        }
        String[] split = str.split(",");
        for (String str2 : split) {
            if (!TextUtils.isEmpty(str2)) {
                if (cn.jpush.android.w.e.a(context, str2)) {
                    if (split.length == 2) {
                        str2 = split[1];
                    }
                    cn.jpush.android.helper.c.a(str2, 1602, context);
                } else if (this.f3328c != null) {
                    cn.jpush.android.d.d dVar = this.f3329d;
                    this.f3328c.a(context, str2, dVar != null && dVar.f3017c.equals(str2), true);
                }
            }
        }
    }
}
