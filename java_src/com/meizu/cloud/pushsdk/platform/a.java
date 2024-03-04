package com.meizu.cloud.pushsdk.platform;

import android.text.TextUtils;
import com.meizu.cloud.pushinternal.DebugLogger;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, String> f28756a = a();

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f28757b = new ArrayList(f28756a.keySet());

    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            if (str.length() > 3) {
                String substring = str.substring(0, 3);
                if (f28756a.containsKey(substring)) {
                    String str3 = f28756a.get(substring);
                    str2 = str.substring(3);
                    try {
                        char[] cArr = new char[str2.length() / 2];
                        int i9 = 0;
                        int i10 = 0;
                        while (i9 < str2.length() / 2) {
                            if (i10 == str3.length()) {
                                i10 = 0;
                            }
                            int i11 = i9 * 2;
                            cArr[i9] = (char) (((char) Integer.valueOf(str2.substring(i11, i11 + 2), 16).intValue()) ^ str3.charAt(i10));
                            i9++;
                            i10++;
                        }
                        return new String(String.valueOf(cArr).getBytes("iso-8859-1"), "UTF-8");
                    } catch (Exception unused) {
                        DebugLogger.e("PushIdEncryptUtils", "invalid pushId encryption " + str2);
                        return str;
                    }
                }
                return str;
            }
            return str;
        } catch (Exception unused2) {
            str2 = str;
        }
    }

    private static Map<String, String> a() {
        if (a(f28756a)) {
            synchronized (a.class) {
                if (a(f28756a)) {
                    TreeMap treeMap = new TreeMap();
                    f28756a = treeMap;
                    treeMap.put("UCI", "v9tC0Myz1MGwXRFy");
                    f28756a.put("G3G", "XAsFqhhaf4gKpmAi");
                    f28756a.put("V5R", "cOqH18NXwBtZVkvz");
                    f28756a.put("0XC", "IgSEKZ3Ea6Pm4woS");
                    f28756a.put("Z9K", "pH6J9DMPNgqQp8m8");
                    f28756a.put("EIM", "K11Rs9HAKRXeNwq8");
                    f28756a.put("SO7", "T8LquL1DvwVcogiU");
                    f28756a.put("DDI", "d02F6ttOtV05MYCQ");
                    f28756a.put("ULY", "ToZZIhAywnUfHShN");
                    f28756a.put("0EV", "r5D5RRwQhfV0AYLb");
                    f28756a.put("N6A", "QAtSBFcXnQoUgHO2");
                    f28756a.put("S5Q", "sDWLrZINnum227am");
                    f28756a.put("RA5", "4Uq3Ruxo1FTBdHQE");
                    f28756a.put("J04", "N5hViUTdLCpN59H0");
                    f28756a.put("B68", "EY3sH1KKtalg5ZaT");
                    f28756a.put("9IW", "q1u0MiuFyim4pCYY");
                    f28756a.put("UU3", "syLnkkd8AqNykVV7");
                    f28756a.put("Z49", "V00FiWu124yE91sH");
                    f28756a.put("BNA", "rPP7AK1VWpKEry3p");
                    f28756a.put("WXG", "om8w5ahkJJgpAH9v");
                }
            }
        }
        return f28756a;
    }

    public static <K, V> boolean a(Map<K, V> map) {
        return map == null || map.isEmpty();
    }
}
