package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class t5 {

    /* renamed from: f  reason: collision with root package name */
    static HashMap f8343f;

    /* renamed from: k  reason: collision with root package name */
    private static Object f8348k;

    /* renamed from: l  reason: collision with root package name */
    private static boolean f8349l;

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f8338a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b  reason: collision with root package name */
    public static final Uri f8339b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f8340c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f8341d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicBoolean f8342e = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    static final HashMap f8344g = new HashMap();

    /* renamed from: h  reason: collision with root package name */
    static final HashMap f8345h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    static final HashMap f8346i = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    static final HashMap f8347j = new HashMap();

    /* renamed from: m  reason: collision with root package name */
    static final String[] f8350m = new String[0];

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (t5.class) {
            if (f8343f == null) {
                f8342e.set(false);
                f8343f = new HashMap();
                f8348k = new Object();
                f8349l = false;
                contentResolver.registerContentObserver(f8338a, true, new s5(null));
            } else if (f8342e.getAndSet(false)) {
                f8343f.clear();
                f8344g.clear();
                f8345h.clear();
                f8346i.clear();
                f8347j.clear();
                f8348k = new Object();
                f8349l = false;
            }
            Object obj = f8348k;
            if (f8343f.containsKey(str)) {
                String str3 = (String) f8343f.get(str);
                if (str3 != null) {
                    r3 = str3;
                }
                return r3;
            }
            int length = f8350m.length;
            Cursor query = contentResolver.query(f8338a, null, null, new String[]{str}, null);
            if (query == null) {
                return null;
            }
            try {
                if (!query.moveToFirst()) {
                    c(obj, str, null);
                    return null;
                }
                String string = query.getString(1);
                if (string != null && string.equals(null)) {
                    string = null;
                }
                c(obj, str, string);
                return string != null ? string : null;
            } finally {
                query.close();
            }
        }
    }

    private static void c(Object obj, String str, String str2) {
        synchronized (t5.class) {
            if (obj == f8348k) {
                f8343f.put(str, str2);
            }
        }
    }
}
