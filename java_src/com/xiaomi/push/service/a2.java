package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import cn.jpush.android.api.JThirdPlatFormInterface;
import com.meizu.cloud.pushsdk.constants.PushConstants;
import com.xiaomi.channel.commonutils.android.Region;
import com.xiaomi.push.a3;
/* loaded from: classes5.dex */
public class a2 {

    /* renamed from: a  reason: collision with root package name */
    private static z1 f37136a;

    /* renamed from: b  reason: collision with root package name */
    private static a f37137b;

    /* loaded from: classes5.dex */
    public interface a {
        void a();
    }

    private static int a(Context context) {
        return context.getSharedPreferences("mipush_account", 0).getInt("enc_req_fail_count", 0);
    }

    public static synchronized z1 b(Context context) {
        synchronized (a2.class) {
            z1 z1Var = f37136a;
            if (z1Var != null) {
                return z1Var;
            }
            SharedPreferences sharedPreferences = context.getSharedPreferences("mipush_account", 0);
            String string = sharedPreferences.getString("uuid", null);
            String string2 = sharedPreferences.getString(JThirdPlatFormInterface.KEY_TOKEN, null);
            String string3 = sharedPreferences.getString("security", null);
            String string4 = sharedPreferences.getString("app_id", null);
            String string5 = sharedPreferences.getString("app_token", null);
            String string6 = sharedPreferences.getString(PushConstants.PACKAGE_NAME, null);
            String string7 = sharedPreferences.getString("device_id", null);
            int i9 = sharedPreferences.getInt("env_type", 1);
            if (!TextUtils.isEmpty(string7) && sf.b.f(string7)) {
                string7 = sf.b.k(context);
                sharedPreferences.edit().putString("device_id", string7).commit();
            }
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                return null;
            }
            String k10 = sf.b.k(context);
            if (!"com.xiaomi.xmsf".equals(context.getPackageName()) && !TextUtils.isEmpty(k10) && !TextUtils.isEmpty(string7) && !string7.equals(k10)) {
                tf.c.l("read_phone_state permission changes.");
            }
            z1 z1Var2 = new z1(string, string2, string3, string4, string5, string6, i9);
            f37136a = z1Var2;
            return z1Var2;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(33:3|4|(1:107)(1:10)|11|(1:13)|14|(1:16)(1:106)|17|(1:19)(1:105)|20|(1:22)(1:104)|23|(2:24|25)|26|(1:28)(1:100)|29|(1:31)|32|(6:35|36|37|39|40|33)|44|45|(11:50|51|(1:53)|54|55|(2:59|(4:61|62|63|(7:65|(1:67)|68|69|70|71|72)(6:75|76|(1:80)|81|82|83)))|94|(2:78|80)|81|82|83)|99|51|(0)|54|55|(3:57|59|(0))|94|(0)|81|82|83) */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0180, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0182, code lost:
        tf.c.u("device registration request failed. " + r0);
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0284 A[Catch: all -> 0x0299, TryCatch #3 {, blocks: (B:4:0x0005, B:6:0x0019, B:8:0x0021, B:10:0x002e, B:12:0x003a, B:14:0x0044, B:15:0x0049, B:19:0x0055, B:23:0x0061, B:27:0x006d, B:28:0x0077, B:34:0x008b, B:36:0x0094, B:38:0x00d2, B:39:0x00db, B:40:0x00e8, B:42:0x00ee, B:43:0x00f5, B:46:0x0104, B:47:0x0135, B:49:0x0156, B:52:0x015d, B:54:0x0174, B:57:0x017b, B:61:0x0182, B:63:0x0199, B:65:0x019f, B:86:0x0256, B:87:0x0267, B:93:0x0284, B:95:0x028a, B:96:0x0292, B:90:0x026e, B:31:0x0083), top: B:104:0x0005, inners: #1, #5, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static synchronized com.xiaomi.push.service.z1 c(android.content.Context r17, java.lang.String r18, java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.push.service.a2.c(android.content.Context, java.lang.String, java.lang.String, java.lang.String):com.xiaomi.push.service.z1");
    }

    private static String d(Context context, boolean z10) {
        StringBuilder sb2;
        String str;
        String b10 = b.a(context).b();
        String str2 = z10 ? "/pass/v2/register/encrypt" : "/pass/v2/register";
        if (a3.d()) {
            sb2 = new StringBuilder();
            sb2.append("http://");
            sb2.append(com.xiaomi.push.d1.f36483h);
            str = ":9085";
        } else if (Region.Global.name().equals(b10)) {
            sb2 = new StringBuilder();
            str = "https://register.xmpush.global.xiaomi.com";
        } else if (Region.Europe.name().equals(b10)) {
            sb2 = new StringBuilder();
            str = "https://fr.register.xmpush.global.xiaomi.com";
        } else if (Region.Russia.name().equals(b10)) {
            sb2 = new StringBuilder();
            str = "https://ru.register.xmpush.global.xiaomi.com";
        } else if (Region.India.name().equals(b10)) {
            sb2 = new StringBuilder();
            str = "https://idmb.register.xmpush.global.xiaomi.com";
        } else {
            sb2 = new StringBuilder();
            sb2.append("https://");
            a3.c();
            str = "";
        }
        sb2.append(str);
        sb2.append(str2);
        return sb2.toString();
    }

    public static void e() {
        a aVar = f37137b;
        if (aVar != null) {
            aVar.a();
        }
    }

    public static void f(Context context) {
        context.getSharedPreferences("mipush_account", 0).edit().clear().commit();
        f37136a = null;
        e();
    }

    private static void g(Context context, int i9) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putInt("enc_req_fail_count", i9);
        edit.commit();
    }

    public static void h(Context context, z1 z1Var) {
        SharedPreferences.Editor edit = context.getSharedPreferences("mipush_account", 0).edit();
        edit.putString("uuid", z1Var.f37426a);
        edit.putString("security", z1Var.f37428c);
        edit.putString(JThirdPlatFormInterface.KEY_TOKEN, z1Var.f37427b);
        edit.putString("app_id", z1Var.f37429d);
        edit.putString(PushConstants.PACKAGE_NAME, z1Var.f37431f);
        edit.putString("app_token", z1Var.f37430e);
        edit.putString("device_id", sf.b.k(context));
        edit.putInt("env_type", z1Var.f37432g);
        edit.commit();
        e();
    }

    public static void i(a aVar) {
        f37137b = aVar;
    }

    private static boolean j(Context context) {
        return context.getPackageName().equals("com.xiaomi.xmsf");
    }
}
