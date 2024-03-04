package com.huawei.hms.opendevice;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.huawei.android.hms.openid.R$string;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.IOUtils;
import com.meizu.cloud.pushsdk.notification.model.NotifyType;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4.dex */
public abstract class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27627a = "c";

    /* renamed from: b  reason: collision with root package name */
    public static Map<String, String> f27628b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final Object f27629c = new Object();

    public static String a() {
        return "2A57086C86EF54970C1E6EB37BFC72B1";
    }

    public static byte[] a(String str, String str2, String str3, String str4) {
        if (Build.VERSION.SDK_INT >= 26) {
            return bc.a.e(str, str2, str3, str4, 32, true);
        }
        return bc.a.e(str, str2, str3, str4, 32, false);
    }

    public static byte[] b() {
        return a(d(), e(), c(), g());
    }

    public static void c(Context context) {
        synchronized (f27629c) {
            d(context.getApplicationContext());
            if (i()) {
                HMSLog.i(f27627a, "The local secret is already in separate file mode.");
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(p.c(context.getApplicationContext()));
            sb2.append("/shared_prefs/LocalAvengers.xml");
            File file = new File(sb2.toString());
            if (file.exists()) {
                fc.a.d(file);
                HMSLog.i(f27627a, "destroy C, delete file LocalAvengers.xml.");
            }
            byte[] c10 = bc.b.c(32);
            byte[] c11 = bc.b.c(32);
            byte[] c12 = bc.b.c(32);
            byte[] c13 = bc.b.c(32);
            String a10 = a.a(c10);
            String a11 = a.a(c11);
            String a12 = a.a(c12);
            String a13 = a.a(c13);
            a(a10, a11, a12, a13, bc.e.c(a.a(bc.b.c(32)), a(a10, a11, a12, a13)), context);
            HMSLog.i(f27627a, "generate D.");
        }
    }

    public static void d(Context context) {
        if (i()) {
            HMSLog.i(f27627a, "secretKeyCache not empty.");
            return;
        }
        f27628b.clear();
        String c10 = p.c(context);
        if (TextUtils.isEmpty(c10)) {
            return;
        }
        String a10 = s.a(c10 + "/files/math/m");
        String a11 = s.a(c10 + "/files/panda/p");
        String a12 = s.a(c10 + "/files/panda/d");
        String a13 = s.a(c10 + "/files/math/t");
        String a14 = s.a(c10 + "/files/s");
        if (t.a(a10, a11, a12, a13, a14)) {
            f27628b.put("m", a10);
            f27628b.put("p", a11);
            f27628b.put("d", a12);
            f27628b.put("t", a13);
            f27628b.put(NotifyType.SOUND, a14);
        }
    }

    public static synchronized String e(Context context) {
        synchronized (c.class) {
            String b10 = bc.e.b(f(), b());
            if (t.a(b10)) {
                HMSLog.i(f27627a, "keyS has been upgraded, no require operate again.");
                return b10;
            }
            String a10 = bc.e.a(f(), h());
            if (t.a(a10)) {
                HMSLog.i(f27627a, "keyS is encrypt by RootKeyUtil, upgrade encrypt mode.");
                a(bc.e.c(a10, b()), context);
                return a10;
            }
            String b11 = bc.e.b(f(), bc.a.e(d(), e(), c(), g(), 32, false));
            if (t.a(b11)) {
                HMSLog.i(f27627a, "keyS is encrypt by ExportRootKey with sha1, upgrade encrypt mode to sha256.");
                a(bc.e.c(b11, b()), context);
                return b11;
            }
            HMSLog.e(f27627a, "all mode unable to decrypt root key.");
            return "";
        }
    }

    public static String f() {
        return a(NotifyType.SOUND);
    }

    public static String g() {
        return a("t");
    }

    public static bc.d h() {
        return bc.d.d(d(), e(), c(), g());
    }

    public static boolean i() {
        return !TextUtils.isEmpty(f());
    }

    public static String b(Context context) {
        if (!i()) {
            HMSLog.i(f27627a, "work key is empty, execute init.");
            c(context);
        }
        String b10 = bc.e.b(f(), b());
        return t.a(b10) ? b10 : e(context);
    }

    public static byte[] a(Context context) {
        byte[] a10 = a.a(context.getString(R$string.push_cat_head));
        byte[] a11 = a.a(context.getString(R$string.push_cat_body));
        return a(a(a(a10, a11), a.a(a())));
    }

    public static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null || bArr.length == 0 || bArr2.length == 0) {
            return new byte[0];
        }
        int length = bArr.length;
        if (length != bArr2.length) {
            return new byte[0];
        }
        byte[] bArr3 = new byte[length];
        for (int i9 = 0; i9 < length; i9++) {
            bArr3[i9] = (byte) (bArr[i9] ^ bArr2[i9]);
        }
        return bArr3;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return new byte[0];
        }
        for (int i9 = 0; i9 < bArr.length; i9++) {
            bArr[i9] = (byte) (bArr[i9] >> 2);
        }
        return bArr;
    }

    public static void a(String str, String str2, String str3, String str4, String str5, Context context) {
        String c10 = p.c(context.getApplicationContext());
        if (TextUtils.isEmpty(c10)) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c10);
            sb2.append("/files/math/m");
            a("m", str, sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(c10);
            sb3.append("/files/panda/p");
            a("p", str2, sb3.toString());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(c10);
            sb4.append("/files/panda/d");
            a("d", str3, sb4.toString());
            StringBuilder sb5 = new StringBuilder();
            sb5.append(c10);
            sb5.append("/files/math/t");
            a("t", str4, sb5.toString());
            StringBuilder sb6 = new StringBuilder();
            sb6.append(c10);
            sb6.append("/files/s");
            a(NotifyType.SOUND, str5, sb6.toString());
        } catch (IOException unused) {
            HMSLog.e(f27627a, "save key IOException.");
        }
    }

    public static String e() {
        return a("p");
    }

    public static String d() {
        return a("m");
    }

    public static String c() {
        return a("d");
    }

    public static void a(String str, Context context) {
        String c10 = p.c(context.getApplicationContext());
        if (TextUtils.isEmpty(c10)) {
            return;
        }
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(c10);
            sb2.append("/files/s");
            a(NotifyType.SOUND, str, sb2.toString());
        } catch (IOException unused) {
            HMSLog.e(f27627a, "save keyS IOException.");
        }
    }

    public static void a(String str, String str2, String str3) throws IOException {
        OutputStreamWriter outputStreamWriter;
        HMSLog.i(f27627a, "save local secret key.");
        BufferedWriter bufferedWriter = null;
        try {
            File file = new File(str3);
            s.a(file);
            outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(outputStreamWriter);
                try {
                    bufferedWriter2.write(str2);
                    bufferedWriter2.flush();
                    f27628b.put(str, str2);
                    IOUtils.closeQuietly((Writer) outputStreamWriter);
                    IOUtils.closeQuietly((Writer) bufferedWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    bufferedWriter = bufferedWriter2;
                    IOUtils.closeQuietly((Writer) outputStreamWriter);
                    IOUtils.closeQuietly((Writer) bufferedWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            outputStreamWriter = null;
        }
    }

    public static String a(String str) {
        String str2 = f27628b.get(str);
        return TextUtils.isEmpty(str2) ? "" : str2;
    }
}
