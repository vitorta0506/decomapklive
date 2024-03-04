package cn.jpush.android.v;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import cn.jpush.android.af.i;
import cn.jpush.android.cache.Key;
import cn.jpush.android.cache.Sp;
import cn.jpush.android.helper.JCoreHelper;
import cn.jpush.android.helper.Logger;
import cn.jpush.android.x.d;
import java.io.File;
/* loaded from: classes.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private String f3368e = "";

    /* renamed from: c  reason: collision with root package name */
    private static final String f3366c = cn.jpush.android.af.d.b(new byte[]{96, 98, 101, 64, 83, 35, 39, 57, 97, 69, 83, 113, 123, 98, 104, 92, 69, 55, 98, 102, 100, 67, 72, 55, 107, 120});

    /* renamed from: a  reason: collision with root package name */
    public static String f3364a = "";

    /* renamed from: b  reason: collision with root package name */
    public static String f3365b = "";

    /* renamed from: d  reason: collision with root package name */
    private static volatile a f3367d = null;

    /* renamed from: cn.jpush.android.v.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0049a extends cn.jpush.android.af.e {

        /* renamed from: a  reason: collision with root package name */
        private volatile Context f3369a;

        C0049a(Context context) {
            this.f3369a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private java.lang.String a(boolean r5) {
            /*
                r4 = this;
                java.lang.String r0 = android.os.Build.MANUFACTURER
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                java.lang.String r2 = ""
                if (r1 != 0) goto L13
                java.lang.String r0 = r0.trim()
                java.lang.String r0 = r0.toLowerCase()
                goto L14
            L13:
                r0 = r2
            L14:
                boolean r1 = android.text.TextUtils.isEmpty(r0)
                java.lang.String r3 = "a"
                if (r1 != 0) goto L41
                if (r5 == 0) goto L41
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r1 = b()
                r5.append(r1)
                java.lang.String r1 = java.io.File.separator
                r5.append(r1)
                r5.append(r3)
                r5.append(r1)
                r5.append(r0)
                r5.append(r1)
                r5.append(r0)
                java.lang.String r0 = ".json"
                goto L64
            L41:
                if (r5 != 0) goto L6c
                java.lang.StringBuilder r5 = new java.lang.StringBuilder
                r5.<init>()
                java.lang.String r0 = b()
                r5.append(r0)
                java.lang.String r0 = java.io.File.separator
                r5.append(r0)
                r5.append(r3)
                r5.append(r0)
                java.lang.String r1 = "all"
                r5.append(r1)
                r5.append(r0)
                java.lang.String r0 = "all.json"
            L64:
                r5.append(r0)
                java.lang.String r5 = r5.toString()
                goto L6d
            L6c:
                r5 = r2
            L6d:
                boolean r0 = android.text.TextUtils.isEmpty(r5)
                if (r0 == 0) goto L74
                goto L87
            L74:
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = r4.c()
                r0.append(r1)
                r0.append(r5)
                java.lang.String r2 = r0.toString()
            L87:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.v.a.C0049a.a(boolean):java.lang.String");
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void a(Context context, String str) {
            try {
                Sp.set(context, Key.LocalAniConfigSign().set(Sp.get(context, Key.SvrAniConfigSign())));
                Sp.set(context, Key.LastAniConfigReqTime().set(Long.valueOf(System.currentTimeMillis())));
                d.a a10 = cn.jpush.android.w.b.a(str);
                if (a10 == null) {
                    Logger.w("InAppAniConfigDownloadHelper", "dealResponseConfigData getInMatches is null");
                    return;
                }
                Logger.d("InAppAniConfigDownloadHelper", "getInMatches: " + a10.toString());
                String f10 = a10.f();
                int a11 = a10.a();
                Logger.v("InAppAniConfigDownloadHelper", "response config data, aniConfigPath: " + f10 + ", aniFileVersion: " + a11);
                if (TextUtils.isEmpty(f10) || !a(context, a11, f10)) {
                    return;
                }
                String str2 = c() + f10;
                String a12 = cn.jpush.android.z.a.a(this.f3369a, str2, "", 2);
                if (TextUtils.isEmpty(a12)) {
                    Logger.w("InAppAniConfigDownloadHelper", "download ani config file failed");
                    return;
                }
                Sp.set(context, Key.LocalAniConfigVersion().set(Integer.valueOf(a11)));
                Sp.set(context, Key.LastAniConfigPath().set(f10));
                Logger.d("InAppAniConfigDownloadHelper", "inapp ani-config file response: " + a12 + ", request url: " + str2);
                String a13 = i.a(a12);
                if (!context.getPackageName().equals(cn.jpush.android.af.a.d(context))) {
                    a.a().a(context, a13);
                    return;
                }
                Logger.i("InAppAniConfigDownloadHelper", "sync animator rule config to main process");
                cn.jpush.android.d.d dVar = new cn.jpush.android.d.d();
                dVar.bs = a13;
                cn.jpush.android.p.a.a(context, "cn.jpush.android.intent.SYNC_ANI_CONFIG", dVar, true);
            } catch (Throwable th2) {
                Logger.w("InAppAniConfigDownloadHelper", "update ani config data parse json failed, e: " + th2.getMessage());
            }
        }

        private boolean a(Context context) {
            String str;
            if (JCoreHelper.checkSdkBanned(context).booleanValue()) {
                str = "sdk is banned not request config";
            } else {
                String str2 = (String) Sp.get(context, Key.SvrAniConfigSign());
                String str3 = (String) Sp.get(context, Key.LocalAniConfigSign());
                if (!TextUtils.isEmpty(str2)) {
                    Logger.d("InAppAniConfigDownloadHelper", "current local file md5 equals the server latest");
                    return !str2.equals(str3);
                }
                if (System.currentTimeMillis() - ((Long) Sp.get(context, Key.LastAniConfigReqTime())).longValue() >= 259200000) {
                    return true;
                }
                str = "not config request internal time";
            }
            Logger.d("InAppAniConfigDownloadHelper", str);
            return false;
        }

        private boolean a(Context context, int i9, String str) {
            return i9 > ((Integer) Sp.get(context, Key.LocalAniConfigVersion())).intValue() || !(TextUtils.isEmpty(str) || str.equals(Sp.get(context, Key.LastAniConfigPath())));
        }

        public static String b() {
            TextUtils.isEmpty(a.f3365b);
            return "V100";
        }

        private String c() {
            String str = a.f3366c;
            TextUtils.isEmpty(a.f3364a);
            return str + File.separator;
        }

        @Override // cn.jpush.android.af.e
        public void a() {
            try {
                if (a(this.f3369a)) {
                    String a10 = a(true);
                    if (TextUtils.isEmpty(a10)) {
                        Logger.w("InAppAniConfigDownloadHelper", "inapp manu ani config url is null");
                        return;
                    }
                    String a11 = cn.jpush.android.z.a.a(this.f3369a, a10, "", 2);
                    if (TextUtils.isEmpty(a11)) {
                        Logger.w("InAppAniConfigDownloadHelper", "request manufacture ani config failed, manufacture: " + Build.MANUFACTURER + ", try common config.");
                        a10 = a(false);
                        if (TextUtils.isEmpty(a10)) {
                            Logger.w("InAppAniConfigDownloadHelper", "inapp common ani config url is null");
                            return;
                        }
                        a11 = cn.jpush.android.z.a.a(this.f3369a, a10, "", 2);
                        if (TextUtils.isEmpty(a11)) {
                            Logger.w("InAppAniConfigDownloadHelper", "request common ani config failed");
                            return;
                        }
                    }
                    Logger.d("InAppAniConfigDownloadHelper", "ani config response: " + a11 + ", reqUrl: " + a10);
                    a(this.f3369a, a11);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static a a() {
        if (f3367d == null) {
            synchronized (a.class) {
                if (f3367d == null) {
                    f3367d = new a();
                }
            }
        }
        return f3367d;
    }

    public String a(Context context) {
        if (TextUtils.isEmpty(this.f3368e)) {
            synchronized ("ani_config.cache") {
                String str = context.getFilesDir().getAbsolutePath() + File.separator + "ani_config.cache";
                File file = new File(str);
                if (file.exists()) {
                    String str2 = (String) cn.jpush.android.af.c.a(file);
                    if (!TextUtils.isEmpty(str2)) {
                        String b10 = i.b(str2);
                        Logger.d("InAppAniConfigDownloadHelper", "use config from cache file, path: " + str);
                        this.f3368e = b10;
                        return b10;
                    }
                }
                this.f3368e = cn.jpush.android.x.a.f3464a;
                Logger.d("InAppAniConfigDownloadHelper", "use local mem cache config");
                return this.f3368e;
            }
        }
        return this.f3368e;
    }

    public void a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        synchronized ("ani_config.cache") {
            cn.jpush.android.af.c.a(new File(context.getFilesDir(), "ani_config.cache"), str);
            Logger.d("InAppAniConfigDownloadHelper", "cache animator config data");
        }
    }

    public void b(Context context) {
        JCoreHelper.futureExecutor(context, new C0049a(context));
    }
}
