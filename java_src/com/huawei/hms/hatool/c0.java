package com.huawei.hms.hatool;

import java.io.File;
import java.io.IOException;
import org.light.utils.FileUtils;
/* loaded from: classes4.dex */
public class c0 {

    /* renamed from: a  reason: collision with root package name */
    public String f27440a = b.i().getFilesDir().getPath();

    public static boolean b(File file) {
        File[] listFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null || listFiles.length == 0) {
            return false;
        }
        for (File file2 : listFiles) {
            if (file2.isFile()) {
                if (!file2.delete()) {
                    y.c("hmsSdk", "delete file failed : " + file2.getName());
                }
            } else if (file2.isDirectory()) {
                b(file2);
            }
        }
        return file.delete();
    }

    public static boolean d() {
        return b(new File(b.i().getFilesDir().getPath() + FileUtils.RES_PREFIX_STORAGE + "hms"));
    }

    public String a() {
        String b10;
        String b11;
        String b12;
        String b13;
        String c10 = c();
        if (b()) {
            y.c("hmsSdk", "refresh components");
            b10 = bc.b.d(128);
            a("aprpap", b10);
            b11 = bc.b.d(128);
            a("febdoc", b11);
            b12 = bc.b.d(128);
            a("marfil", b12);
            b13 = bc.b.d(128);
            a("maywnj", b13);
            g0.b(b.i(), "Privacy_MY", "assemblyFlash", System.currentTimeMillis());
        } else {
            b10 = b("aprpap");
            b11 = b("febdoc");
            b12 = b("marfil");
            b13 = b("maywnj");
        }
        return bc.c.a(zb.a.b(a(b10, b11, b12, c10), bc.c.b(b13), 10000, 16));
    }

    public final String a(String str) {
        return this.f27440a + "/hms/component/".replace("component", str);
    }

    public final void a(String str, String str2) {
        File file = new File(a(str));
        String a10 = a(str);
        File file2 = new File(a10, "hianalytics_" + str);
        if (!file.exists() && file.mkdirs()) {
            y.c("hmsSdk", "file directory is mkdirs");
        }
        if (a(file2)) {
            t0.a(file2, str2);
        } else {
            y.f("hmsSdk", "refreshComponent():file is not found,and file is create failed");
        }
    }

    public final boolean a(File file) {
        if (file.exists()) {
            return true;
        }
        try {
            return file.createNewFile();
        } catch (IOException unused) {
            y.f("hmsSdk", "create new file error!");
            return false;
        }
    }

    public final char[] a(String str, String str2, String str3, String str4) {
        byte[] b10 = bc.c.b(str);
        byte[] b11 = bc.c.b(str2);
        byte[] b12 = bc.c.b(str3);
        byte[] b13 = bc.c.b(str4);
        int length = b10.length;
        if (length > b11.length) {
            length = b11.length;
        }
        if (length > b12.length) {
            length = b12.length;
        }
        if (length > b13.length) {
            length = b13.length;
        }
        char[] cArr = new char[length];
        for (int i9 = 0; i9 < length; i9++) {
            cArr[i9] = (char) (((b10[i9] ^ b11[i9]) ^ b12[i9]) ^ b13[i9]);
        }
        return cArr;
    }

    public final String b(String str) {
        String a10 = a(str);
        File file = new File(a10, "hianalytics_" + str);
        if (a(file)) {
            return t0.a(file);
        }
        String d10 = bc.b.d(128);
        t0.a(file, d10);
        return d10;
    }

    public final boolean b() {
        long a10 = g0.a(b.i(), "Privacy_MY", "assemblyFlash", -1L);
        if (-1 != a10) {
            return System.currentTimeMillis() - a10 > 31536000000L;
        }
        y.c("hmsSdk", "First init components");
        return true;
    }

    public final String c() {
        return "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc";
    }
}
