package com.xiaomi.push;

import java.io.File;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class x2 {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, String> f37554a;

    static {
        HashMap<String, String> hashMap = new HashMap<>();
        f37554a = hashMap;
        hashMap.put("FFD8FF", "jpg");
        hashMap.put("89504E47", "png");
        hashMap.put("47494638", "gif");
        hashMap.put("474946", "gif");
        hashMap.put("424D", "bmp");
    }

    public static long a(File file) {
        long j10 = 0;
        try {
            File[] listFiles = file.listFiles();
            for (int i9 = 0; i9 < listFiles.length; i9++) {
                j10 += listFiles[i9].isDirectory() ? a(listFiles[i9]) : listFiles[i9].length();
            }
        } catch (Exception e10) {
            tf.c.o(e10);
        }
        return j10;
    }
}
