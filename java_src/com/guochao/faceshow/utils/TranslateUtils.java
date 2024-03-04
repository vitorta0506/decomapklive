package com.guochao.faceshow.utils;

import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.os.ConfigurationCompat;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;
import java.util.Objects;
/* loaded from: classes4.dex */
public class TranslateUtils {
    public static void createTranslateFile(String str, String str2, String str3) {
        FileOutputStream fileOutputStream;
        File file = new File(str);
        File file2 = new File(str, str2);
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                if (!file.exists()) {
                    file2.mkdirs();
                }
                if (!file2.exists()) {
                    file2.createNewFile();
                }
                fileOutputStream = new FileOutputStream(file2);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            fileOutputStream.write(str3.getBytes());
            fileOutputStream.close();
            ma.c.a(fileOutputStream);
        } catch (Exception e11) {
            e = e11;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            ma.c.a(fileOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            ma.c.a(fileOutputStream2);
            throw th;
        }
    }

    public static String getFaceCastAppLanguage() {
        return q7.a.e().c();
    }

    public static String getPhoneLanguage() {
        if (Build.VERSION.SDK_INT >= 24) {
            return ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0).getLanguage();
        }
        return Locale.getDefault().getLanguage();
    }

    public static String getTranslateContent(String str, String str2) {
        File file = new File(str, str2);
        StringBuilder sb2 = new StringBuilder();
        if (getTranslateFile(str, str2)) {
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(file));
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb2.append(readLine);
                }
                inputStreamReader.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
            return sb2.toString();
        }
        return null;
    }

    public static boolean getTranslateFile(String str, String str2) {
        try {
            return new File(str, str2).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean shouldTranslate(String str) {
        return (TextUtils.isEmpty(str) || Objects.equals(str, q7.a.e().g())) ? false : true;
    }
}
