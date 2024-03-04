package cn.jpush.android.t;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.local.JPushConstants;
import cn.jpush.android.service.JNotifyActivity;
import cn.jpush.android.ui.PushActivity;
import com.guochao.faceshow.aaspring.beans.SharePlatformBean;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static long f3316a;

    /* renamed from: b  reason: collision with root package name */
    private static int f3317b;

    /* renamed from: c  reason: collision with root package name */
    private static Map<String, String> f3318c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private static Map<String, String> f3319d = new HashMap();

    public static int a(int i9, int i10) {
        int i11 = 2;
        if (i9 != 1) {
            if (i9 != 2) {
                i11 = 3;
                if (i9 != 3) {
                    i11 = 0;
                } else if (i10 == 0) {
                    i11 = 4;
                }
            } else {
                i11 = 5;
            }
        } else if (i10 == 0) {
            i11 = 1;
        }
        Logger.d("InAppHelper", "getMsgDisplayStyle, msgType: " + i9 + ", displayPos: " + i10 + ", style: " + i11);
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:14:0x0024, B:19:0x002e, B:20:0x0030, B:22:0x003a, B:24:0x0040, B:30:0x006a, B:31:0x0070, B:33:0x0076, B:26:0x0048, B:35:0x009c), top: B:40:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:14:0x0024, B:19:0x002e, B:20:0x0030, B:22:0x003a, B:24:0x0040, B:30:0x006a, B:31:0x0070, B:33:0x0076, B:26:0x0048, B:35:0x009c), top: B:40:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:14:0x0024, B:19:0x002e, B:20:0x0030, B:22:0x003a, B:24:0x0040, B:30:0x006a, B:31:0x0070, B:33:0x0076, B:26:0x0048, B:35:0x009c), top: B:40:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(android.content.Context r10, int r11, long r12) {
        /*
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            r1 = 0
            java.lang.String r3 = cn.jpush.android.cache.a.p(r10)     // Catch: java.lang.Throwable -> L1e
            java.lang.String r4 = ","
            java.lang.String[] r3 = r3.split(r4)     // Catch: java.lang.Throwable -> L1e
            r4 = r3[r0]     // Catch: java.lang.Throwable -> L1e
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Throwable -> L1e
            r5 = 1
            r3 = r3[r5]     // Catch: java.lang.Throwable -> L1f
            long r5 = java.lang.Long.parseLong(r3)     // Catch: java.lang.Throwable -> L1f
            goto L20
        L1e:
            r4 = 0
        L1f:
            r5 = r1
        L20:
            java.lang.String r3 = "InAppHelper"
            if (r4 != 0) goto L2a
            int r4 = cn.jpush.android.t.d.f3317b     // Catch: java.lang.Throwable -> L27
            goto L2a
        L27:
            r10 = move-exception
            goto Lab
        L2a:
            int r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r7 != 0) goto L30
            long r5 = cn.jpush.android.t.d.f3316a     // Catch: java.lang.Throwable -> L27
        L30:
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L27
            boolean r9 = cn.jpush.android.af.b.a(r7, r5)     // Catch: java.lang.Throwable -> L27
            if (r9 == 0) goto L9c
            cn.jpush.android.t.d.f3317b = r4     // Catch: java.lang.Throwable -> L27
            cn.jpush.android.t.d.f3316a = r5     // Catch: java.lang.Throwable -> L27
            if (r11 != 0) goto L46
            java.lang.String r10 = "inApp count is 0, not limit count"
            cn.jpush.android.helper.Logger.d(r3, r10)     // Catch: java.lang.Throwable -> L27
            goto L66
        L46:
            if (r4 < r11) goto L66
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L27
            r10.<init>()     // Catch: java.lang.Throwable -> L27
            java.lang.String r12 = "inApp message count limit,inAppLastCount:"
            r10.append(r12)     // Catch: java.lang.Throwable -> L27
            r10.append(r4)     // Catch: java.lang.Throwable -> L27
            java.lang.String r12 = ",inAppLimitCount:"
            r10.append(r12)     // Catch: java.lang.Throwable -> L27
            r10.append(r11)     // Catch: java.lang.Throwable -> L27
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> L27
            cn.jpush.android.helper.Logger.d(r3, r10)     // Catch: java.lang.Throwable -> L27
            r10 = -1
            return r10
        L66:
            int r10 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r10 != 0) goto L70
            java.lang.String r10 = "inApp interval is 0, not limit time"
            cn.jpush.android.helper.Logger.d(r3, r10)     // Catch: java.lang.Throwable -> L27
            goto Lc3
        L70:
            long r10 = r7 - r5
            int r1 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            if (r1 > 0) goto Lc3
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L27
            r10.<init>()     // Catch: java.lang.Throwable -> L27
            java.lang.String r11 = "inApp message time limit,inAppLastTime:"
            r10.append(r11)     // Catch: java.lang.Throwable -> L27
            r10.append(r5)     // Catch: java.lang.Throwable -> L27
            java.lang.String r11 = ",currentTime:"
            r10.append(r11)     // Catch: java.lang.Throwable -> L27
            r10.append(r7)     // Catch: java.lang.Throwable -> L27
            java.lang.String r11 = ",inAppLimitInterval:"
            r10.append(r11)     // Catch: java.lang.Throwable -> L27
            r10.append(r12)     // Catch: java.lang.Throwable -> L27
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> L27
            cn.jpush.android.helper.Logger.d(r3, r10)     // Catch: java.lang.Throwable -> L27
            r10 = -2
            return r10
        L9c:
            cn.jpush.android.t.d.f3317b = r0     // Catch: java.lang.Throwable -> L27
            cn.jpush.android.t.d.f3316a = r1     // Catch: java.lang.Throwable -> L27
            java.lang.String r11 = "is a new day,reset inAppState"
            cn.jpush.android.helper.Logger.d(r3, r11)     // Catch: java.lang.Throwable -> L27
            java.lang.String r11 = "0,0"
            cn.jpush.android.cache.a.h(r10, r11)     // Catch: java.lang.Throwable -> L27
            goto Lc3
        Lab:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "getSSPState error:"
            r11.append(r12)
            java.lang.String r10 = r10.getMessage()
            r11.append(r10)
            java.lang.String r10 = r11.toString()
            cn.jpush.android.helper.Logger.w(r3, r10)
        Lc3:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.t.d.a(android.content.Context, int, long):int");
    }

    public static String a() {
        Iterator<String> it = f3318c.values().iterator();
        String str = "";
        String next = it.hasNext() ? it.next() : "";
        Iterator<String> it2 = f3318c.keySet().iterator();
        while (it2.hasNext()) {
            str = it2.next();
        }
        if (TextUtils.isEmpty(next)) {
            return str;
        }
        if (!TextUtils.isEmpty(str)) {
            next = str + ContainerUtils.FIELD_DELIMITER + next;
        }
        return next;
    }

    public static void a(Context context) {
        long j10;
        if (context == null) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis();
            int i9 = 0;
            try {
                String[] split = cn.jpush.android.cache.a.p(context).split(",");
                i9 = Integer.parseInt(split[0]);
                j10 = Long.parseLong(split[1]);
            } catch (Throwable unused) {
                j10 = 0;
            }
            if (i9 == 0) {
                i9 = f3317b;
            }
            if (j10 == 0) {
                j10 = f3316a;
            }
            int i10 = cn.jpush.android.af.b.a(currentTimeMillis, j10) ? 1 + i9 : 1;
            f3317b = i10;
            f3316a = currentTimeMillis;
            Logger.d("InAppHelper", "setInAppState inAppCount:" + i10 + ",inAppTime:" + currentTimeMillis);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(i10);
            sb2.append(",");
            sb2.append(currentTimeMillis);
            cn.jpush.android.cache.a.h(context, sb2.toString());
        } catch (Throwable th2) {
            Logger.w("InAppHelper", "setInAppLastState error:" + th2.getMessage());
        }
    }

    private static void a(Context context, Intent intent) {
        if ("com.mt.mtxx.mtxx".equals(context.getPackageName())) {
            intent.putExtra("infoProvider", "JPush");
        }
    }

    public static void a(Context context, cn.jpush.android.d.d dVar) {
        try {
            String str = dVar.ay;
            String str2 = dVar.az;
            long currentTimeMillis = System.currentTimeMillis();
            String d10 = cn.jpush.android.af.a.d(str + str2);
            Logger.d("InAppHelper", "in-app message contentMd5: " + d10);
            if (TextUtils.isEmpty(d10)) {
                return;
            }
            cn.jpush.android.o.b.a(context, d10, currentTimeMillis);
        } catch (Throwable th2) {
            Logger.w("InAppHelper", "setLatestInAppInfo failed, " + th2.getMessage());
        }
    }

    public static void a(Context context, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("funName", str);
            }
            if (context == null) {
                context = JPushConstants.mApplicationContext;
            }
            cn.jpush.android.helper.c.a(str2, 1257, jSONObject.toString(), context);
        } catch (Throwable unused) {
        }
    }

    public static synchronized void a(String str, int i9, boolean z10) {
        synchronized (d.class) {
            if (TextUtils.isEmpty(str)) {
                Logger.w("InAppHelper", "[updateCurrentPage] pageName is null");
                return;
            }
            if (z10) {
                if (i9 == 0 && !f3318c.isEmpty()) {
                    f3319d.putAll(f3318c);
                }
                if (f3318c.containsKey(str)) {
                    f3318c.clear();
                }
                if (i9 == 1) {
                    f3318c.put(str, f3319d.get(str));
                }
            } else if (i9 == 1) {
                Iterator<String> it = f3318c.keySet().iterator();
                if (it.hasNext()) {
                    f3318c.put(it.next(), str);
                }
            } else {
                Iterator<String> it2 = f3318c.keySet().iterator();
                if (it2.hasNext()) {
                    String next = it2.next();
                    if (str.equals(f3318c.get(next))) {
                        f3318c.put(next, "");
                    }
                }
            }
            Logger.d("InAppHelper", "updateCurrentPage current pages: " + f3318c.toString());
        }
    }

    private static boolean a(Context context, int i9, String str, cn.jpush.android.d.d dVar) {
        if (TextUtils.isEmpty(str) || context == null) {
            Logger.d("InAppHelper", "link uri is empty, url: " + str + ", context: " + context);
            return false;
        }
        Logger.d("InAppHelper", "[openWebUri], urlOpenType: " + i9 + ", url: " + str);
        try {
            Intent intent = new Intent();
            intent.addFlags(268435456);
            if (i9 != 0) {
                if (i9 == 1) {
                    if (!cn.jpush.android.af.a.d(context, "com.android.browser")) {
                        Logger.dd("InAppHelper", "not found com.android.browser,user will choose other browser");
                        throw new Throwable("not found com.android.browser,user will choose other browser");
                    }
                    intent.setAction("android.intent.action.VIEW");
                    intent.setData(Uri.parse(str));
                    intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
                    a(context, intent);
                }
            } else if (!f(context)) {
                Logger.ww("InAppHelper", "please check layout file jpush_webview_layout.xml!");
                throw new Throwable("not found layout file jpush_webview_layout.xml");
            } else {
                intent.setClass(context, PushActivity.class);
                if (dVar != null) {
                    dVar.V = str;
                    intent.putExtra(PushActivity.FROM_OTHER_WAY, true);
                    intent.putExtra("msg_data", dVar.c());
                }
                intent.addFlags(536870912);
            }
            context.startActivity(intent);
        } catch (Throwable th2) {
            Logger.w("InAppHelper", "first open url failed, use browser open again. " + th2.getMessage());
            try {
                try {
                    if (!cn.jpush.android.af.a.d(context, "com.android.browser")) {
                        Logger.dd("InAppHelper", "not found com.android.browser,user will choose other browser");
                        throw new Throwable("not found com.android.browser,user will choose other browser");
                    }
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.VIEW");
                    intent2.setData(Uri.parse(str));
                    intent2.setFlags(268435456);
                    intent2.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
                    a(context, intent2);
                    context.startActivity(intent2);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                    Logger.d("InAppHelper", "[openWebUri] start fail uri error:" + th3.getMessage());
                    return false;
                }
            } catch (Throwable unused) {
                Intent parseUri = Intent.parseUri(str, 0);
                parseUri.setFlags(268435456);
                a(context, parseUri);
                context.startActivity(parseUri);
            }
        }
        return true;
    }

    public static boolean a(Context context, cn.jpush.android.x.e eVar) {
        String n9;
        String n10;
        String n11;
        String n12;
        if (context == null || eVar == null) {
            Logger.w("InAppHelper", "deep link open with unexpected error, context: " + context + ", message: " + eVar);
            if (eVar != null) {
                a(context, "deepLinkOpen", eVar.n());
            }
            return false;
        } else if (TextUtils.isEmpty(eVar.f3510b) && !eVar.f3527s) {
            Logger.w("InAppHelper", "is not deep link in-app message");
            cn.jpush.android.helper.c.a(eVar.n(), 1293, context);
            return false;
        } else {
            try {
                if (eVar.m() == 2) {
                    Logger.d("InAppHelper", "open wechat mini program");
                    c(context, eVar);
                } else {
                    Logger.d("InAppHelper", "in-app open deeplink, targetPkg:" + eVar.f3513e + ", forNewUser: " + eVar.f3515g);
                    if (!TextUtils.isEmpty(eVar.f3513e)) {
                        if (cn.jpush.android.af.a.a(context, eVar.f3513e, !eVar.f3515g ? eVar.f3510b : "")) {
                            Logger.d("InAppHelper", "p installed, targetPkgName: " + eVar.f3513e);
                            if (eVar.f3515g) {
                                Logger.w("InAppHelper", "link for new user, p installed not download");
                                cn.jpush.android.helper.c.a(eVar.n(), 1248, context);
                            } else if (b(context, eVar)) {
                                n12 = eVar.n();
                                cn.jpush.android.helper.c.a(n12, 1214, context);
                            } else {
                                n11 = eVar.n();
                                cn.jpush.android.helper.c.a(n11, 1215, context);
                            }
                        } else if (!eVar.f3515g) {
                            cn.jpush.android.helper.c.a(eVar.n(), 1216, context);
                            Logger.d("InAppHelper", "app not installed,fail_handle_type:" + eVar.f3511c + ",fail_handle_url:" + eVar.f3512d);
                            if (eVar.f3511c != 1) {
                                cn.jpush.android.helper.c.a(eVar.n(), 1301, context);
                            } else if (TextUtils.isEmpty(eVar.f3512d)) {
                                Logger.w("InAppHelper", "fail_handle_url is empty");
                            } else {
                                eVar.f3510b = eVar.f3512d;
                                if (b(context, eVar)) {
                                    cn.jpush.android.helper.c.a(eVar.n(), 1217, context);
                                } else {
                                    cn.jpush.android.helper.c.a(eVar.n(), 1218, context);
                                }
                            }
                        } else if (d(context, eVar)) {
                            n10 = eVar.n();
                            cn.jpush.android.helper.c.a(n10, 1300, context);
                        } else {
                            n9 = eVar.n();
                            cn.jpush.android.helper.c.a(n9, 1299, context);
                        }
                    } else if (eVar.f3515g) {
                        if (d(context, eVar)) {
                            n10 = eVar.n();
                            cn.jpush.android.helper.c.a(n10, 1300, context);
                        } else {
                            n9 = eVar.n();
                            cn.jpush.android.helper.c.a(n9, 1299, context);
                        }
                    } else if (b(context, eVar)) {
                        n12 = eVar.n();
                        cn.jpush.android.helper.c.a(n12, 1214, context);
                    } else {
                        n11 = eVar.n();
                        cn.jpush.android.helper.c.a(n11, 1215, context);
                    }
                }
                return true;
            } catch (Throwable th2) {
                cn.jpush.android.helper.c.a(eVar.n(), 1294, context);
                Logger.w("InAppHelper", "url failed:" + th2.getMessage());
                return false;
            }
        }
    }

    public static boolean a(Context context, String str) {
        if (context == null) {
            Logger.w("InAppHelper", "[checkInBlackList] context is null");
            return false;
        } else if (!cn.jpush.android.v.b.b(context)) {
            Logger.d("InAppHelper", "[checkInBlackList] request black list not completed");
            return true;
        } else {
            List<String> d10 = cn.jpush.android.v.b.d(context);
            if (d10 == null || d10.isEmpty()) {
                Logger.d("InAppHelper", "no blacklist and check whitelist");
                return !b(context, str);
            }
            boolean contains = d10.contains(str);
            Logger.d("InAppHelper", "[checkInBlackList] isBlack: " + contains + ", curPageName: " + str);
            return contains;
        }
    }

    public static boolean a(String str) {
        String b10 = b();
        Logger.d("InAppHelper", "checkInSrvPageList, currentPage: " + b10 + ", srvPages: " + str);
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        for (String str2 : str.split(ContainerUtils.FIELD_DELIMITER)) {
            if (str2.equals(b10)) {
                return true;
            }
        }
        return false;
    }

    private static int b(Context context, String str, String str2) {
        if (context == null) {
            return 0;
        }
        return context.getResources().getIdentifier(str, str2, context.getPackageName());
    }

    private static String b() {
        Iterator<String> it = f3318c.values().iterator();
        String next = it.hasNext() ? it.next() : "";
        if (TextUtils.isEmpty(next)) {
            Iterator<String> it2 = f3318c.keySet().iterator();
            return it2.hasNext() ? it2.next() : next;
        }
        return next;
    }

    public static String b(Context context) {
        return cn.jpush.android.cache.a.q(context);
    }

    public static boolean b(Context context, cn.jpush.android.x.e eVar) {
        if (context == null || eVar == null) {
            return false;
        }
        try {
            return (TextUtils.isEmpty(eVar.f3510b) || !eVar.f3510b.startsWith("http")) ? cn.jpush.android.aa.c.a(context, eVar.f3510b, eVar.f3513e) : a(context, eVar.f3514f, eVar.f3510b, eVar.u());
        } catch (Throwable th2) {
            Logger.w("InAppHelper", "open deeplink failed, error: " + th2.getMessage());
            return false;
        }
    }

    private static boolean b(Context context, String str) {
        if (context == null) {
            Logger.w("InAppHelper", "[checkInWhiteList] context is null");
            return false;
        } else if (!cn.jpush.android.v.b.b(context)) {
            Logger.d("InAppHelper", "[checkInWhiteList] request black list not completed");
            return false;
        } else {
            List<String> c10 = cn.jpush.android.v.b.c(context);
            if (c10 == null || c10.isEmpty()) {
                Logger.d("InAppHelper", "not set white list");
                return true;
            }
            boolean contains = c10.contains(str);
            Logger.d("InAppHelper", "[checkInWhiteList] isBlack: " + contains + ", curPageName: " + str);
            return contains;
        }
    }

    public static void c(Context context) {
        if (context == null) {
            Logger.ww("InAppHelper", "context is null");
        } else if (!cn.jpush.android.af.a.a(context, JNotifyActivity.class)) {
            Logger.ee("InAppHelper", "AndroidManifest.xml missing required activity: " + JNotifyActivity.class.getCanonicalName());
        } else {
            if (!cn.jpush.android.af.a.c(context)) {
                Logger.dd("InAppHelper", "no draw overlay permission");
            }
            boolean j10 = cn.jpush.android.af.a.j(context);
            cn.jpush.android.o.b.f3179c = j10;
            if ((j10 ? cn.jpush.android.q.a.a(context) : -1) == 0) {
                Logger.dd("InAppHelper", "can install apk by system");
            } else {
                Logger.ww("InAppHelper", "not allowed install apk by system");
            }
            if (!f(context)) {
                Logger.ww("InAppHelper", "please check layout file jpush_webview_layout.xml, no this file can not open h5 in app");
            }
            Logger.dd("InAppHelper", "in app is integrated succeed~");
        }
    }

    private static void c(Context context, cn.jpush.android.x.e eVar) {
        int i9;
        eVar.f3513e = SharePlatformBean.WechatPackage;
        String n9 = eVar.n();
        if (cn.jpush.android.af.a.a(context, eVar.f3513e, "weixin://")) {
            i9 = !cn.jpush.android.aa.c.a(context, eVar.f3523o, eVar.f3524p, eVar.f3526r, eVar.f3525q) ? 1213 : 1212;
        } else {
            Logger.d("InAppHelper", "wechat apk not install");
            i9 = 1221;
        }
        cn.jpush.android.helper.c.a(n9, i9, context);
    }

    public static boolean d(Context context) {
        Activity p10;
        String canonicalName;
        StringBuilder sb2;
        String str;
        if (!f3318c.isEmpty()) {
            canonicalName = b();
            sb2 = new StringBuilder();
            str = "[checkInBlackList] curPageName: ";
        } else if (!g(context) || (p10 = cn.jpush.android.af.a.p(context)) == null) {
            return false;
        } else {
            canonicalName = p10.getClass().getCanonicalName();
            sb2 = new StringBuilder();
            str = "[checkInBlackList] getCurrentActivity->curPageName: ";
        }
        sb2.append(str);
        sb2.append(canonicalName);
        Logger.d("InAppHelper", sb2.toString());
        return a(context, canonicalName);
    }

    private static boolean d(Context context, cn.jpush.android.x.e eVar) {
        Logger.d("InAppHelper", "google play not allowed");
        return false;
    }

    public static boolean e(Context context) {
        Activity p10;
        String canonicalName;
        StringBuilder sb2;
        String str;
        if (!f3318c.isEmpty()) {
            canonicalName = b();
            sb2 = new StringBuilder();
            str = "[checkInWhiteList] curPageName: ";
        } else if (!g(context) || (p10 = cn.jpush.android.af.a.p(context)) == null) {
            return true;
        } else {
            canonicalName = p10.getClass().getCanonicalName();
            sb2 = new StringBuilder();
            str = "[checkInWhiteList] getCurrentActivity->curPageName: ";
        }
        sb2.append(str);
        sb2.append(canonicalName);
        Logger.d("InAppHelper", sb2.toString());
        return b(context, canonicalName);
    }

    private static boolean f(Context context) {
        if (context != null) {
            return b(context, "jpush_webview_layout", "layout") > 0 && b(context, "actionbarLayoutId", "id") > 0 && b(context, "rlRichpushTitleBar", "id") > 0 && b(context, "tvRichpushTitle", "id") > 0 && b(context, "imgRichpushBtnBack", "id") > 0 && b(context, "pushPrograssBar", "id") > 0;
        }
        Logger.w("InAppHelper", "context is null");
        return false;
    }

    private static boolean g(Context context) {
        return context.getPackageName().equals(cn.jpush.android.af.a.d(context));
    }
}
