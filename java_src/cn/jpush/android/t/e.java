package cn.jpush.android.t;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import com.tencent.liteav.TXLiteAVCode;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import org.light.utils.FileUtils;
/* loaded from: classes.dex */
public class e extends cn.jpush.android.af.e {

    /* renamed from: a  reason: collision with root package name */
    private Context f3320a;

    /* renamed from: b  reason: collision with root package name */
    private cn.jpush.android.d.d f3321b;

    /* renamed from: c  reason: collision with root package name */
    private cn.jpush.android.u.a f3322c;

    public e(Context context, cn.jpush.android.d.d dVar, cn.jpush.android.u.a aVar) {
        this.f3320a = context;
        this.f3321b = dVar;
        this.f3322c = aVar;
        this.f2899f = "AdInAppHelper#Action";
    }

    private boolean a(Context context, cn.jpush.android.d.d dVar) {
        if (context == null || dVar == null) {
            Logger.d("InAppMessageAction", "[handleInAppMessage] context or pushEntity is null");
            if (dVar != null) {
                d.a(context, "handleInAppMessage", dVar.f3017c);
            }
            return false;
        }
        Logger.d("InAppMessageAction", "[handleInAppMessage] message: type: " + dVar.aA + ", showType: " + dVar.aB + ", showPos: " + dVar.aC + ", checkIntentType: " + dVar.f3005ba);
        try {
            int b10 = b(context, dVar);
            if (b10 != 0) {
                cn.jpush.android.helper.c.a(dVar.f3017c, b10, context);
                Logger.w("InAppMessageAction", "in-app message frequency is too frequently, drop it[msgID: " + dVar.f3017c + "]");
                return false;
            } else if (c(context, dVar)) {
                return false;
            } else {
                if (!e(context, dVar)) {
                    Logger.w("InAppMessageAction", "wx mini program link, but some param not match, in-app not show");
                    Logger.ww("IN-AT", "bad params of wx mini link");
                    return false;
                } else if (!d(context, dVar)) {
                    Logger.ww("IN-AT", "bad params of d link");
                    return false;
                } else if (f(context, dVar) == null) {
                    Logger.ww("IN-AT", "dl tpl failed");
                    return false;
                } else {
                    cn.jpush.android.helper.c.a(dVar.f3017c, 1263, context);
                    cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.INAPP_MESSAGE_ARRIVED", dVar, true);
                    return true;
                }
            }
        } catch (Throwable th2) {
            cn.jpush.android.helper.c.a(dVar.f3017c, 1268, context);
            Logger.w("InAppMessageAction", "[handleInAppMessage] error. " + th2.getMessage());
            return false;
        }
    }

    private static int b(Context context, cn.jpush.android.d.d dVar) {
        try {
            if (dVar == null || context == null) {
                Logger.w("InAppMessageAction", "unexcepted error param is null");
                return 1269;
            }
            int max = Math.max(dVar.aJ, 0);
            long max2 = Math.max(dVar.aK, 0L) * 1000;
            if (max > 0) {
                Logger.d("InAppMessageAction", "set in-app message LimitCount:" + max);
            }
            if (max2 > 0) {
                Logger.d("InAppMessageAction", "set in-app message LimitInterval:" + max2);
            }
            int a10 = d.a(context, max, max2);
            if (a10 != -2) {
                if (a10 != -1) {
                    return 0;
                }
                return TXLiteAVCode.WARNING_SPEAKER_DEVICE_EMPTY;
            }
            return TXLiteAVCode.WARNING_MICROPHONE_NOT_AUTHORIZED;
        } catch (Throwable th2) {
            Logger.w("InAppMessageAction", "parse in-app message notificationExtra failed, error:" + th2.getMessage());
            return 1269;
        }
    }

    private static boolean c(Context context, cn.jpush.android.d.d dVar) {
        if (context != null && dVar != null) {
            try {
                if (dVar.aG == 1 && cn.jpush.android.p.a.a().c(context, 200)) {
                    Logger.dd("InAppMessageAction", "need not show in-app message by user");
                    cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.IN_APP_MSG_UN_SHOW_INTERVAL", dVar, false);
                    cn.jpush.android.helper.c.a(dVar.f3017c, TXLiteAVCode.WARNING_SCREEN_CAPTURE_NOT_AUTHORIZED, context);
                    return true;
                }
            } catch (Throwable th2) {
                Logger.w("InAppMessageAction", "check user intercept the message show error. " + th2.getMessage());
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c9, code lost:
        cn.jpush.android.helper.Logger.d("InAppMessageAction", "deeplink is empty or not a http/https url, not show in-app message");
        cn.jpush.android.helper.c.a(r4, 1207, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d3, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0109, code lost:
        cn.jpush.android.helper.Logger.w("InAppMessageAction", "targetPkgname:" + r6 + " not installed and failed type:" + r11 + ", not show in-app message");
        cn.jpush.android.helper.c.a(r4, 1208, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x012f, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean d(android.content.Context r14, cn.jpush.android.d.d r15) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.t.e.d(android.content.Context, cn.jpush.android.d.d):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01c9 A[Catch: all -> 0x020a, TryCatch #0 {all -> 0x020a, blocks: (B:6:0x000f, B:7:0x0030, B:9:0x0036, B:66:0x01cb, B:12:0x005d, B:14:0x0065, B:16:0x0070, B:19:0x00ae, B:21:0x00b4, B:23:0x00ba, B:26:0x00ca, B:28:0x00dd, B:31:0x00ef, B:33:0x0139, B:35:0x0145, B:37:0x014b, B:40:0x0153, B:42:0x0159, B:44:0x0166, B:46:0x016c, B:48:0x0178, B:50:0x0192, B:52:0x0198, B:55:0x019f, B:59:0x01ac, B:61:0x01ba, B:63:0x01c2, B:65:0x01c9, B:67:0x01d4, B:71:0x01e3, B:73:0x0201), top: B:79:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c2 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v5, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean e(android.content.Context r22, cn.jpush.android.d.d r23) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.t.e.e(android.content.Context, cn.jpush.android.d.d):boolean");
    }

    private static cn.jpush.android.d.d f(Context context, cn.jpush.android.d.d dVar) {
        String str;
        String str2;
        boolean z10;
        if (context == null || dVar == null) {
            Logger.w("InAppMessageAction", "unexpected param is null, context: " + context + ", pushEntity: " + dVar);
            if (dVar != null) {
                d.a(context, "handleH5Template", dVar.f3017c);
            }
            return null;
        }
        String str3 = dVar.f3007bc;
        String str4 = dVar.f3017c;
        LinkedHashMap<String, cn.jpush.android.x.f> a10 = f.a(context);
        cn.jpush.android.x.f fVar = a10.get(str3);
        str = "";
        if (fVar != null) {
            str2 = fVar.f3536b;
            if (cn.jpush.android.af.c.a(str2)) {
                dVar.aY = "file://" + str2;
                fVar.f3537c = System.currentTimeMillis();
                boolean lastModified = new File(str2).setLastModified(fVar.f3537c);
                cn.jpush.android.helper.c.a(str4, 1283, context);
                Logger.d("InAppMessageAction", "use cache template, templateId: " + str3 + ", webPagePath: " + str2 + ", totalTemplateCount: " + a10.values().size() + ", update template file time: " + lastModified);
            } else {
                a10.remove(str3);
                Logger.d("InAppMessageAction", "local config has template path, but the template file is not exist, will download again.");
                str2 = "";
            }
            f.a(context, a10);
        } else {
            str2 = "";
        }
        String str5 = dVar.f3008bd;
        if (TextUtils.isEmpty(str2)) {
            Logger.d("InAppMessageAction", "no local template cache, start download template, url: " + str5);
            if (TextUtils.isEmpty(str5)) {
                Logger.w("InAppMessageAction", "template url is Empty! Give up to download!");
                z10 = false;
            } else {
                String a11 = cn.jpush.android.z.a.a(str5, 5, 5000L);
                boolean isEmpty = TextUtils.isEmpty(a11);
                str = isEmpty ? "" : a11;
                z10 = !isEmpty;
            }
            if (!z10) {
                Logger.w("InAppMessageAction", "NOTE: failed to download html page. Give up this.");
                cn.jpush.android.helper.c.a(dVar.f3017c, 1231, context);
                return null;
            }
            String str6 = cn.jpush.android.af.c.a(context, "h5_tpls", 20) + str3 + ".html";
            Logger.d("InAppMessageAction", "download template success, will save to local of path: " + str6);
            if (cn.jpush.android.af.c.b(str6, str)) {
                dVar.aY = "file://" + str6;
                Logger.d("InAppMessageAction", "cache h5 template to local success, templateId: " + str3 + ", path: " + dVar.aY);
                a10.put(str3, cn.jpush.android.x.f.a(str3, str6, System.currentTimeMillis()));
                f.a(context, a10);
                cn.jpush.android.helper.c.a(str4, 1273, context);
            } else {
                cn.jpush.android.helper.c.a(str4, 1233, context);
                dVar.aY = dVar.f3008bd;
            }
        }
        if (dVar.f3012bh.size() > 0 || !TextUtils.isEmpty(dVar.bm)) {
            String substring = str5.substring(0, str5.lastIndexOf(FileUtils.RES_PREFIX_STORAGE) + 1);
            if (dVar.f3012bh.size() > 0) {
                Logger.d("InAppMessageAction", "template has image resource, start download image to local, images: " + dVar.f3012bh.toString());
                ArrayList<String> a12 = f.a(dVar.f3012bh, context, substring, str4);
                if (a12 == null) {
                    cn.jpush.android.helper.c.a(str4, 1232, context);
                    Logger.w("InAppMessageAction", "Loads in-app message image resources failed, give up this in app!");
                    return null;
                }
                Logger.d("InAppMessageAction", "Loads in-app message image succeed, webView will open cache!");
                String str7 = dVar.f3010bf;
                try {
                    JSONObject jSONObject = new JSONObject(str7);
                    int i9 = 0;
                    while (i9 < a12.size()) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("in_pic_path");
                        int i10 = i9 + 1;
                        sb2.append(i10);
                        jSONObject.put(sb2.toString(), a12.get(i9));
                        i9 = i10;
                    }
                    dVar.f3010bf = jSONObject.toString();
                    Logger.d("InAppMessageAction", "http image resources replace local path, new templateData: " + dVar.f3010bf);
                } catch (JSONException e10) {
                    dVar.f3010bf = str7;
                    cn.jpush.android.helper.c.a(str4, 1266, context);
                    Logger.w("InAppMessageAction", "replace template picture resource error, " + e10.getMessage());
                }
            }
            if (!TextUtils.isEmpty(dVar.bm)) {
                Logger.d("InAppMessageAction", "template has image resource, start download image to local, icon: " + dVar.bm);
                ArrayList arrayList = new ArrayList();
                arrayList.add(dVar.bm);
                ArrayList<String> a13 = f.a(arrayList, context, substring, str4, false);
                if (a13 == null) {
                    cn.jpush.android.helper.c.a(str4, 1232, context);
                    Logger.w("InAppMessageAction", "Loads in-app message image icon resources failed, give up this in app!");
                    return null;
                }
                Logger.d("InAppMessageAction", "Loads in-app message image icon succeed, webView will open cache!");
                String str8 = dVar.f3010bf;
                try {
                    JSONObject jSONObject2 = new JSONObject(str8);
                    for (int i11 = 0; i11 < a13.size(); i11++) {
                        jSONObject2.put("in_app_icon", a13.get(i11));
                    }
                    dVar.f3010bf = jSONObject2.toString();
                    Logger.d("InAppMessageAction", "http image icon resources replace local path, new templateData: " + dVar.f3010bf);
                } catch (JSONException e11) {
                    dVar.f3010bf = str8;
                    cn.jpush.android.helper.c.a(str4, 1266, context);
                    Logger.w("InAppMessageAction", "replace template picture icon resource error, " + e11.getMessage());
                }
            }
        } else {
            Logger.d("InAppMessageAction", "template no image resource.");
        }
        return dVar;
    }

    @Override // cn.jpush.android.af.e
    public void a() {
        try {
            if (a(this.f3320a, this.f3321b) || this.f3322c == null) {
                return;
            }
            cn.jpush.android.d.d dVar = this.f3321b;
            this.f3322c.a(this.f3320a, this.f3321b.bn, d.a(dVar.aA, dVar.aC), 0);
        } catch (Throwable th2) {
            Logger.w("InAppMessageAction", "run InAppMessageAction failed:" + th2.getMessage());
        }
    }
}
