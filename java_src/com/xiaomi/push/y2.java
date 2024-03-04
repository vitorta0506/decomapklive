package com.xiaomi.push;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
/* loaded from: classes5.dex */
public class y2 {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f37569a = {"jpg", "png", "bmp", "gif", "webp"};

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0062: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:22:0x0062 */
    public static String a(File file) {
        InputStreamReader inputStreamReader;
        Closeable closeable;
        StringWriter stringWriter = new StringWriter();
        Closeable closeable2 = null;
        try {
            try {
                inputStreamReader = new InputStreamReader(new BufferedInputStream(new FileInputStream(file)));
                try {
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read == -1) {
                            String stringWriter2 = stringWriter.toString();
                            b(inputStreamReader);
                            b(stringWriter);
                            return stringWriter2;
                        }
                        stringWriter.write(cArr, 0, read);
                    }
                } catch (IOException e10) {
                    e = e10;
                    tf.c.t("read file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
                    b(inputStreamReader);
                    b(stringWriter);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                closeable2 = closeable;
                b(closeable2);
                b(stringWriter);
                throw th;
            }
        } catch (IOException e11) {
            e = e11;
            inputStreamReader = null;
        } catch (Throwable th3) {
            th = th3;
            b(closeable2);
            b(stringWriter);
            throw th;
        }
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void c(File file, String str) {
        BufferedWriter bufferedWriter;
        if (!file.exists()) {
            tf.c.t("mkdir " + file.getAbsolutePath());
            file.getParentFile().mkdirs();
        }
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file)));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException e10) {
            e = e10;
        }
        try {
            bufferedWriter.write(str);
            b(bufferedWriter);
        } catch (IOException e11) {
            e = e11;
            bufferedWriter2 = bufferedWriter;
            tf.c.t("write file :" + file.getAbsolutePath() + " failure :" + e.getMessage());
            b(bufferedWriter2);
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            b(bufferedWriter2);
            throw th;
        }
    }

    public static boolean d(File file) {
        try {
            if (file.isDirectory()) {
                return false;
            }
            if (file.exists()) {
                return true;
            }
            File parentFile = file.getParentFile();
            if (parentFile.exists() || parentFile.mkdirs()) {
                return file.createNewFile();
            }
            return false;
        } catch (Throwable th2) {
            th2.printStackTrace();
            return false;
        }
    }
}
