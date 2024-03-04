package com.xiaomi.push.service;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Pair;
import android.widget.RemoteViews;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.guochao.component.mvp.activity.MVPActivity;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.xiaomi.push.di;
import com.xiaomi.push.dq;
import com.xiaomi.push.q3;
import com.xiaomi.push.service.q;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    public static long f37258a;

    /* renamed from: b  reason: collision with root package name */
    private static final LinkedList<Pair<Integer, dq>> f37259b = new LinkedList<>();

    /* renamed from: c  reason: collision with root package name */
    private static ExecutorService f37260c = Executors.newCachedThreadPool();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class a implements Callable<Bitmap> {

        /* renamed from: a  reason: collision with root package name */
        private String f37261a;

        /* renamed from: b  reason: collision with root package name */
        private Context f37262b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f37263c;

        public a(String str, Context context, boolean z10) {
            this.f37262b = context;
            this.f37261a = str;
            this.f37263c = z10;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Bitmap call() {
            Bitmap bitmap = null;
            if (TextUtils.isEmpty(this.f37261a)) {
                tf.c.l("Failed get online picture/icon resource cause picUrl is empty");
                return null;
            }
            if (this.f37261a.startsWith("http")) {
                q.b d10 = q.d(this.f37262b, this.f37261a, this.f37263c);
                if (d10 != null) {
                    return d10.f37330a;
                }
            } else {
                bitmap = q.b(this.f37262b, this.f37261a);
                if (bitmap != null) {
                    return bitmap;
                }
            }
            tf.c.l("Failed get online picture/icon resource");
            return bitmap;
        }
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        Notification f37264a;

        /* renamed from: b  reason: collision with root package name */
        long f37265b = 0;
    }

    /* loaded from: classes5.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        public String f37266a;

        /* renamed from: b  reason: collision with root package name */
        public long f37267b = 0;

        /* renamed from: c  reason: collision with root package name */
        public boolean f37268c = false;
    }

    private static void A(Context context, String str, com.xiaomi.push.j0 j0Var, Map<String, String> map) {
        int b10 = b(context, str, "mipush_small_notification");
        int b11 = b(context, str, "mipush_notification");
        if (!sf.e.i(context)) {
            if (b10 > 0) {
                j0Var.setSmallIcon(b10);
            } else {
                S(context, str, j0Var, map);
            }
            if (b11 <= 0) {
                return;
            }
        } else if (b10 <= 0 || b11 <= 0) {
            S(context, str, j0Var, map);
            return;
        } else {
            j0Var.setSmallIcon(b10);
        }
        j0Var.setLargeIcon(l(context, b11));
    }

    public static void B(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return;
        }
        r e10 = r.e(context, str);
        List<StatusBarNotification> z10 = e10.z();
        if (sf.k.b(z10)) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (StatusBarNotification statusBarNotification : z10) {
            Notification notification = statusBarNotification.getNotification();
            if (notification != null && !TextUtils.isEmpty(String.valueOf(statusBarNotification.getId()))) {
                int id2 = statusBarNotification.getId();
                String g10 = s.g(notification);
                String t10 = s.t(notification);
                if (!TextUtils.isEmpty(g10) && !TextUtils.isEmpty(t10) && K(g10, str2) && K(t10, str3)) {
                    linkedList.add(statusBarNotification);
                    e10.m(id2);
                }
            }
        }
        C(context, linkedList);
    }

    public static void C(Context context, LinkedList<? extends Object> linkedList) {
    }

    private static void D(Intent intent) {
        try {
            Method declaredMethod = intent.getClass().getDeclaredMethod("addMiuiFlags", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(intent, 2);
        } catch (Exception e10) {
            tf.c.s("insert flags error " + e10);
        }
    }

    private static void E(com.xiaomi.push.j0 j0Var, Context context, String str, dq dqVar, byte[] bArr, int i9) {
        PendingIntent h10;
        PendingIntent h11;
        PendingIntent h12;
        PendingIntent h13;
        Map<String, String> m1425a = dqVar.m1455a().m1425a();
        if (TextUtils.equals("3", m1425a.get("notification_style_type")) || TextUtils.equals("4", m1425a.get("notification_style_type"))) {
            return;
        }
        if (W(m1425a)) {
            for (int i10 = 1; i10 <= 3; i10++) {
                String str2 = m1425a.get(String.format("cust_btn_%s_n", Integer.valueOf(i10)));
                if (!TextUtils.isEmpty(str2) && (h13 = h(context, str, dqVar, bArr, i9, i10)) != null) {
                    j0Var.addAction(0, str2, h13);
                }
            }
            return;
        }
        if (!TextUtils.isEmpty(m1425a.get("notification_style_button_left_name")) && (h12 = h(context, str, dqVar, bArr, i9, 1)) != null) {
            j0Var.addAction(0, m1425a.get("notification_style_button_left_name"), h12);
        }
        if (!TextUtils.isEmpty(m1425a.get("notification_style_button_mid_name")) && (h11 = h(context, str, dqVar, bArr, i9, 2)) != null) {
            j0Var.addAction(0, m1425a.get("notification_style_button_mid_name"), h11);
        }
        if (TextUtils.isEmpty(m1425a.get("notification_style_button_right_name")) || (h10 = h(context, str, dqVar, bArr, i9, 3)) == null) {
            return;
        }
        j0Var.addAction(0, m1425a.get("notification_style_button_right_name"), h10);
    }

    private static boolean F(Context context, dq dqVar, String str) {
        if (dqVar != null && dqVar.m1455a() != null && dqVar.m1455a().m1425a() != null && !TextUtils.isEmpty(str)) {
            return Boolean.parseBoolean(dqVar.m1455a().m1425a().get("use_clicked_activity")) && u1.b(context, i(str));
        }
        tf.c.l("should clicked activity params are null.");
        return false;
    }

    public static boolean G(Context context, String str) {
        return com.xiaomi.channel.commonutils.android.a.k(context, str);
    }

    public static boolean H(Context context, String str, boolean z10) {
        return sf.e.h() && !z10 && G(context, str);
    }

    private static boolean I(di diVar) {
        if (diVar != null) {
            String m1424a = diVar.m1424a();
            return !TextUtils.isEmpty(m1424a) && m1424a.length() == 22 && "satuigmo".indexOf(m1424a.charAt(0)) >= 0;
        }
        return false;
    }

    public static boolean J(dq dqVar) {
        di m1455a = dqVar.m1455a();
        return I(m1455a) && m1455a.l();
    }

    private static boolean K(String str, String str2) {
        return TextUtils.isEmpty(str) || str2.contains(str);
    }

    public static boolean L(Map<String, String> map) {
        if (map == null || !map.containsKey("notify_foreground")) {
            return true;
        }
        return "1".equals(map.get("notify_foreground"));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004e, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0070, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0072, code lost:
        r1 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String[] M(android.content.Context r3, com.xiaomi.push.di r4) {
        /*
            java.lang.String r0 = r4.m1432c()
            java.lang.String r1 = r4.d()
            java.util.Map r4 = r4.m1425a()
            if (r4 == 0) goto L73
            android.content.res.Resources r2 = r3.getResources()
            android.util.DisplayMetrics r2 = r2.getDisplayMetrics()
            int r2 = r2.widthPixels
            android.content.res.Resources r3 = r3.getResources()
            android.util.DisplayMetrics r3 = r3.getDisplayMetrics()
            float r3 = r3.density
            float r2 = (float) r2
            float r2 = r2 / r3
            r3 = 1056964608(0x3f000000, float:0.5)
            float r2 = r2 + r3
            java.lang.Float r3 = java.lang.Float.valueOf(r2)
            int r3 = r3.intValue()
            r2 = 320(0x140, float:4.48E-43)
            if (r3 > r2) goto L51
            java.lang.String r3 = "title_short"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 != 0) goto L42
            r0 = r3
        L42:
            java.lang.String r3 = "description_short"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L73
            goto L72
        L51:
            r2 = 360(0x168, float:5.04E-43)
            if (r3 <= r2) goto L73
            java.lang.String r3 = "title_long"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 != 0) goto L64
            r0 = r3
        L64:
            java.lang.String r3 = "description_long"
            java.lang.Object r3 = r4.get(r3)
            java.lang.String r3 = (java.lang.String) r3
            boolean r4 = android.text.TextUtils.isEmpty(r3)
            if (r4 != 0) goto L73
        L72:
            r1 = r3
        L73:
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]
            r4 = 0
            r3[r4] = r0
            r4 = 1
            r3[r4] = r1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.M(android.content.Context, com.xiaomi.push.di):java.lang.String[]");
    }

    private static int N(Context context, String str) {
        int b10 = b(context, str, "mipush_notification");
        int b11 = b(context, str, "mipush_small_notification");
        if (b10 <= 0) {
            b10 = b11 > 0 ? b11 : context.getApplicationInfo().icon;
        }
        return b10 == 0 ? context.getApplicationInfo().logo : b10;
    }

    private static int O(Map<String, String> map) {
        if (map != null) {
            String str = map.get("channel_importance");
            if (TextUtils.isEmpty(str)) {
                return 3;
            }
            try {
                tf.c.t("importance=" + str);
                return Integer.parseInt(str);
            } catch (Exception e10) {
                tf.c.u("parsing channel importance error: " + e10);
                return 3;
            }
        }
        return 3;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent P(android.content.Context r5, java.lang.String r6, java.util.Map<java.lang.String, java.lang.String> r7, int r8) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.P(android.content.Context, java.lang.String, java.util.Map, int):android.content.Intent");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Q(Context context, String str) {
        context.getSharedPreferences("pref_notify_type", 0).edit().remove(str).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void R(Context context, String str, int i9) {
        context.getSharedPreferences("pref_notify_type", 0).edit().putInt(str, i9).commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void S(android.content.Context r2, java.lang.String r3, com.xiaomi.push.j0 r4, java.util.Map<java.lang.String, java.lang.String> r5) {
        /*
            boolean r0 = sf.e.i(r2)
            if (r0 != 0) goto L2c
            java.lang.String r0 = "fcm_icon_uri"
            java.lang.String r0 = v(r5, r0)
            java.lang.String r1 = "fcm_icon_color"
            java.lang.String r5 = v(r5, r1)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L2c
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            if (r1 != 0) goto L2c
            int r0 = b(r2, r3, r0)
            if (r0 <= 0) goto L2c
            r1 = 1
            r4.setSmallIcon(r0)
            r4.f(r5)
            goto L2d
        L2c:
            r1 = 0
        L2d:
            if (r1 != 0) goto L48
            int r5 = android.os.Build.VERSION.SDK_INT
            r0 = 23
            if (r5 < r0) goto L41
            int r2 = com.xiaomi.push.service.s.b(r2, r3)
            android.graphics.drawable.Icon r2 = android.graphics.drawable.Icon.createWithResource(r3, r2)
            r4.setSmallIcon(r2)
            goto L48
        L41:
            int r2 = N(r2, r3)
            r4.setSmallIcon(r2)
        L48:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.S(android.content.Context, java.lang.String, com.xiaomi.push.j0, java.util.Map):void");
    }

    private static void T(Intent intent) {
        if (intent == null) {
            return;
        }
        intent.setFlags(intent.getFlags() & (-2) & (-3) & (-65) & (-129));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean U(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).contains(str);
    }

    public static boolean V(dq dqVar) {
        di m1455a = dqVar.m1455a();
        return I(m1455a) && m1455a.f79b == 1 && !J(dqVar);
    }

    private static boolean W(Map<String, String> map) {
        if (map == null) {
            tf.c.l("meta extra is null");
            return false;
        }
        return MVPActivity.FROM_BAG_BADGE.equals(map.get("notification_style_type"));
    }

    private static int X(Map<String, String> map) {
        if (map != null) {
            String str = map.get("notification_priority");
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            try {
                tf.c.t("priority=" + str);
                return Integer.parseInt(str);
            } catch (Exception e10) {
                tf.c.u("parsing notification priority error: " + e10);
                return 0;
            }
        }
        return 0;
    }

    public static boolean Y(dq dqVar) {
        di m1455a = dqVar.m1455a();
        return I(m1455a) && m1455a.f79b == 0 && !J(dqVar);
    }

    static int a(Context context, String str) {
        return context.getSharedPreferences("pref_notify_type", 0).getInt(str, Integer.MAX_VALUE);
    }

    private static int b(Context context, String str, String str2) {
        if (str.equals(context.getPackageName())) {
            return context.getResources().getIdentifier(str2, "drawable", str);
        }
        return 0;
    }

    private static int c(Context context, String str, Map<String, String> map, int i9) {
        ComponentName a10;
        Intent P = P(context, str, map, i9);
        if (P == null || (a10 = u1.a(context, P)) == null) {
            return 0;
        }
        return a10.hashCode();
    }

    private static int d(Map<String, String> map) {
        String str = map == null ? null : map.get("timeout");
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception unused) {
            return 0;
        }
    }

    private static Notification e(Notification notification) {
        Object d10 = q3.d(notification, "extraNotification");
        if (d10 != null) {
            q3.e(d10, "setCustomizedIcon", Boolean.TRUE);
        }
        return notification;
    }

    private static PendingIntent f(Context context, dq dqVar, String str, byte[] bArr, int i9) {
        return g(context, dqVar, str, bArr, i9, 0, F(context, dqVar, str));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.app.PendingIntent g(android.content.Context r16, com.xiaomi.push.dq r17, java.lang.String r18, byte[] r19, int r20, int r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.g(android.content.Context, com.xiaomi.push.dq, java.lang.String, byte[], int, int, boolean):android.app.PendingIntent");
    }

    private static PendingIntent h(Context context, String str, dq dqVar, byte[] bArr, int i9, int i10) {
        Map<String, String> m1425a = dqVar.m1455a().m1425a();
        if (m1425a == null) {
            return null;
        }
        boolean F = F(context, dqVar, str);
        if (F) {
            return g(context, dqVar, str, bArr, i9, i10, F);
        }
        Intent j10 = j(context, str, m1425a, i10);
        if (j10 != null) {
            return PendingIntent.getActivity(context, 0, j10, Build.VERSION.SDK_INT >= 31 ? 167772160 : 134217728);
        }
        return null;
    }

    public static ComponentName i(String str) {
        return new ComponentName(str, "com.xiaomi.mipush.sdk.NotificationClickedActivity");
    }

    public static Intent j(Context context, String str, Map<String, String> map, int i9) {
        if (W(map)) {
            return k(context, str, map, String.format("cust_btn_%s_ne", Integer.valueOf(i9)), String.format("cust_btn_%s_iu", Integer.valueOf(i9)), String.format("cust_btn_%s_ic", Integer.valueOf(i9)), String.format("cust_btn_%s_wu", Integer.valueOf(i9)));
        }
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        return null;
                    }
                    return k(context, str, map, "notification_colorful_button_notify_effect", "notification_colorful_button_intent_uri", "notification_colorful_button_intent_class", "notification_colorful_button_web_uri");
                }
                return k(context, str, map, "notification_style_button_right_notify_effect", "notification_style_button_right_intent_uri", "notification_style_button_right_intent_class", "notification_style_button_right_web_uri");
            }
            return k(context, str, map, "notification_style_button_mid_notify_effect", "notification_style_button_mid_intent_uri", "notification_style_button_mid_intent_class", "notification_style_button_mid_web_uri");
        }
        return k(context, str, map, "notification_style_button_left_notify_effect", "notification_style_button_left_intent_uri", "notification_style_button_left_intent_class", "notification_style_button_left_web_uri");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x010a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.content.Intent k(android.content.Context r3, java.lang.String r4, java.util.Map<java.lang.String, java.lang.String> r5, java.lang.String r6, java.lang.String r7, java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.k(android.content.Context, java.lang.String, java.util.Map, java.lang.String, java.lang.String, java.lang.String, java.lang.String):android.content.Intent");
    }

    private static Bitmap l(Context context, int i9) {
        return n(context.getResources().getDrawable(i9));
    }

    private static Bitmap m(Context context, String str, boolean z10) {
        Future submit = f37260c.submit(new a(str, context, z10));
        try {
            try {
                Bitmap bitmap = (Bitmap) submit.get(180L, TimeUnit.SECONDS);
                return bitmap == null ? bitmap : bitmap;
            } finally {
                submit.cancel(true);
            }
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            tf.c.o(e10);
            submit.cancel(true);
            return null;
        }
    }

    public static Bitmap n(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = 1;
        }
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight > 0 ? intrinsicHeight : 1, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    private static RemoteViews o(Context context, dq dqVar, byte[] bArr) {
        di m1455a = dqVar.m1455a();
        String t10 = t(dqVar);
        if (m1455a != null && m1455a.m1425a() != null) {
            Map<String, String> m1425a = m1455a.m1425a();
            String str = m1425a.get("layout_name");
            String str2 = m1425a.get("layout_value");
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                try {
                    Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication(t10);
                    int identifier = resourcesForApplication.getIdentifier(str, "layout", t10);
                    if (identifier == 0) {
                        return null;
                    }
                    RemoteViews remoteViews = new RemoteViews(t10, identifier);
                    try {
                        JSONObject jSONObject = new JSONObject(str2);
                        if (jSONObject.has(ViewHierarchyConstants.TEXT_KEY)) {
                            JSONObject jSONObject2 = jSONObject.getJSONObject(ViewHierarchyConstants.TEXT_KEY);
                            Iterator<String> keys = jSONObject2.keys();
                            while (keys.hasNext()) {
                                String next = keys.next();
                                String string = jSONObject2.getString(next);
                                int identifier2 = resourcesForApplication.getIdentifier(next, "id", t10);
                                if (identifier2 > 0) {
                                    remoteViews.setTextViewText(identifier2, string);
                                }
                            }
                        }
                        if (jSONObject.has("image")) {
                            JSONObject jSONObject3 = jSONObject.getJSONObject("image");
                            Iterator<String> keys2 = jSONObject3.keys();
                            while (keys2.hasNext()) {
                                String next2 = keys2.next();
                                String string2 = jSONObject3.getString(next2);
                                int identifier3 = resourcesForApplication.getIdentifier(next2, "id", t10);
                                int identifier4 = resourcesForApplication.getIdentifier(string2, "drawable", t10);
                                if (identifier3 > 0) {
                                    remoteViews.setImageViewResource(identifier3, identifier4);
                                }
                            }
                        }
                        if (jSONObject.has(CrashHianalyticsData.TIME)) {
                            JSONObject jSONObject4 = jSONObject.getJSONObject(CrashHianalyticsData.TIME);
                            Iterator<String> keys3 = jSONObject4.keys();
                            while (keys3.hasNext()) {
                                String next3 = keys3.next();
                                String string3 = jSONObject4.getString(next3);
                                if (string3.length() == 0) {
                                    string3 = "yy-MM-dd hh:mm";
                                }
                                int identifier5 = resourcesForApplication.getIdentifier(next3, "id", t10);
                                if (identifier5 > 0) {
                                    remoteViews.setTextViewText(identifier5, new SimpleDateFormat(string3).format(new Date(System.currentTimeMillis())));
                                }
                            }
                        }
                        return remoteViews;
                    } catch (JSONException e10) {
                        tf.c.o(e10);
                        return null;
                    }
                } catch (PackageManager.NameNotFoundException e11) {
                    tf.c.o(e11);
                }
            }
        }
        return null;
    }

    private static com.xiaomi.push.j0 p(Context context, dq dqVar, byte[] bArr, String str, int i9) {
        PendingIntent h10;
        String t10 = t(dqVar);
        Map<String, String> m1425a = dqVar.m1455a().m1425a();
        String str2 = m1425a.get("notification_style_type");
        sf.e.i(context);
        if ("2".equals(str2)) {
            com.xiaomi.push.j0 j0Var = new com.xiaomi.push.j0(context);
            Bitmap m10 = TextUtils.isEmpty(m1425a.get("notification_bigPic_uri")) ? null : m(context, m1425a.get("notification_bigPic_uri"), false);
            if (m10 == null) {
                tf.c.l("can not get big picture.");
                return j0Var;
            }
            Notification.BigPictureStyle bigPictureStyle = new Notification.BigPictureStyle(j0Var);
            bigPictureStyle.bigPicture(m10);
            bigPictureStyle.setSummaryText(str);
            bigPictureStyle.bigLargeIcon((Bitmap) null);
            j0Var.setStyle(bigPictureStyle);
            return j0Var;
        } else if ("1".equals(str2)) {
            com.xiaomi.push.j0 j0Var2 = new com.xiaomi.push.j0(context);
            j0Var2.setStyle(new Notification.BigTextStyle().bigText(str));
            return j0Var2;
        } else if ("4".equals(str2) && sf.e.h()) {
            com.xiaomi.push.i0 i0Var = new com.xiaomi.push.i0(context, t10);
            if (!TextUtils.isEmpty(m1425a.get("notification_banner_image_uri"))) {
                i0Var.G(m(context, m1425a.get("notification_banner_image_uri"), false));
            }
            if (!TextUtils.isEmpty(m1425a.get("notification_banner_icon_uri"))) {
                i0Var.I(m(context, m1425a.get("notification_banner_icon_uri"), false));
            }
            i0Var.l(m1425a);
            return i0Var;
        } else if ("3".equals(str2) && sf.e.h()) {
            com.xiaomi.push.k0 k0Var = new com.xiaomi.push.k0(context, i9, t10);
            if (!TextUtils.isEmpty(m1425a.get("notification_colorful_button_text")) && (h10 = h(context, t10, dqVar, bArr, i9, 4)) != null) {
                k0Var.I(m1425a.get("notification_colorful_button_text"), h10).J(m1425a.get("notification_colorful_button_bg_color"));
            }
            if (!TextUtils.isEmpty(m1425a.get("notification_colorful_bg_color"))) {
                k0Var.L(m1425a.get("notification_colorful_bg_color"));
            } else if (!TextUtils.isEmpty(m1425a.get("notification_colorful_bg_image_uri"))) {
                k0Var.H(m(context, m1425a.get("notification_colorful_bg_image_uri"), false));
            }
            k0Var.l(m1425a);
            return k0Var;
        } else {
            return new com.xiaomi.push.j0(context);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0284 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0386  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03d5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0276  */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.xiaomi.push.service.i.b q(android.content.Context r26, com.xiaomi.push.dq r27, byte[] r28, android.widget.RemoteViews r29, android.app.PendingIntent r30, int r31) {
        /*
            Method dump skipped, instructions count: 1119
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.q(android.content.Context, com.xiaomi.push.dq, byte[], android.widget.RemoteViews, android.app.PendingIntent, int):com.xiaomi.push.service.i$b");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x02ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0214 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x026b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.xiaomi.push.service.i.c r(android.content.Context r19, com.xiaomi.push.dq r20, byte[] r21) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.i.r(android.content.Context, com.xiaomi.push.dq, byte[]):com.xiaomi.push.service.i$c");
    }

    private static String s(Context context, String str, Map<String, String> map) {
        return (map == null || TextUtils.isEmpty(map.get("channel_name"))) ? com.xiaomi.channel.commonutils.android.a.j(context, str) : map.get("channel_name");
    }

    public static String t(dq dqVar) {
        di m1455a;
        if ("com.xiaomi.xmsf".equals(dqVar.f167b) && (m1455a = dqVar.m1455a()) != null && m1455a.m1425a() != null) {
            String str = m1455a.m1425a().get("miui_package_name");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
        }
        return dqVar.f167b;
    }

    public static String u(Map<String, String> map, int i9) {
        String format = i9 == 0 ? "notify_effect" : W(map) ? String.format("cust_btn_%s_ne", Integer.valueOf(i9)) : i9 == 1 ? "notification_style_button_left_notify_effect" : i9 == 2 ? "notification_style_button_mid_notify_effect" : i9 == 3 ? "notification_style_button_right_notify_effect" : i9 == 4 ? "notification_colorful_button_notify_effect" : null;
        if (map == null || format == null) {
            return null;
        }
        return map.get(format);
    }

    private static String v(Map<String, String> map, String str) {
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    private static void w(Context context, Intent intent, dq dqVar, di diVar, String str, int i9) {
        if (dqVar == null || diVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        String u10 = u(diVar.m1425a(), i9);
        if (TextUtils.isEmpty(u10)) {
            return;
        }
        if (e0.f37212a.equals(u10) || e0.f37213b.equals(u10) || e0.f37214c.equals(u10)) {
            intent.putExtra("messageId", str);
            intent.putExtra("local_paid", dqVar.f163a);
            if (!TextUtils.isEmpty(dqVar.f167b)) {
                intent.putExtra(HiAnalyticsConstant.BI_KEY_TARGET_PACKAGE, dqVar.f167b);
            }
            intent.putExtra("job_key", v(diVar.m1425a(), "jobkey"));
            intent.putExtra(i9 + "_target_component", c(context, dqVar.f167b, diVar.m1425a(), i9));
        }
    }

    public static void x(Context context, String str) {
        y(context, str, -1);
    }

    public static void y(Context context, String str, int i9) {
        z(context, str, i9, -1);
    }

    public static void z(Context context, String str, int i9, int i10) {
        int hashCode;
        if (context == null || TextUtils.isEmpty(str) || i9 < -1) {
            return;
        }
        r e10 = r.e(context, str);
        List<StatusBarNotification> z10 = e10.z();
        if (sf.k.b(z10)) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        boolean z11 = false;
        if (i9 == -1) {
            hashCode = 0;
            z11 = true;
        } else {
            hashCode = ((str.hashCode() / 10) * 10) + i9;
        }
        Iterator<StatusBarNotification> it = z10.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            StatusBarNotification next = it.next();
            if (!TextUtils.isEmpty(String.valueOf(next.getId()))) {
                int id2 = next.getId();
                if (z11) {
                    linkedList.add(next);
                    e10.m(id2);
                } else if (hashCode == id2) {
                    m1.b(context, next, i10);
                    linkedList.add(next);
                    e10.m(id2);
                    break;
                }
            }
        }
        C(context, linkedList);
    }
}
