package cn.jpush.android.w;

import android.content.Context;
import android.text.TextUtils;
import cn.jpush.android.helper.Logger;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static List<cn.jpush.android.d.d> f3447a = null;

    /* renamed from: b  reason: collision with root package name */
    private static int f3448b = 10;

    public static synchronized int a(Context context) {
        int size;
        synchronized (e.class) {
            if (f3447a == null) {
                f3447a = new LinkedList();
                ArrayList<cn.jpush.android.d.d> b10 = b(context, "notify_inapp_data");
                if (b10 != null && !b10.isEmpty()) {
                    f3447a.addAll(b10);
                }
            }
            size = f3447a.size();
        }
        return size;
    }

    public static synchronized void a(Context context, cn.jpush.android.d.d dVar) {
        ArrayList<cn.jpush.android.d.d> arrayList;
        boolean z10;
        synchronized (e.class) {
            try {
            } finally {
            }
            if (dVar == null) {
                Logger.ww("NotifyInAppListUtils", "#unexcepted -  message is null");
                return;
            }
            int i9 = dVar.au;
            if (i9 <= 0) {
                i9 = 10;
            }
            f3448b = i9;
            if (f3447a == null) {
                f3447a = new LinkedList();
                z10 = true;
                arrayList = b(context, "notify_inapp_data");
                if (arrayList != null && !arrayList.isEmpty()) {
                    f3447a.addAll(arrayList);
                }
            } else {
                arrayList = null;
                z10 = false;
            }
            if (a(dVar)) {
                Logger.d("NotifyInAppListUtils", "the notify message cache already, messageId: " + dVar.f3017c);
                return;
            }
            if (f3447a.size() >= f3448b) {
                for (List<cn.jpush.android.d.d> list = f3447a; list.size() >= f3448b; list = f3447a) {
                    f3447a.remove(0);
                }
            }
            f3447a.add(dVar);
            Logger.d("NotifyInAppListUtils", "notify in app cache, current size is " + f3447a.size() + ", cache max size: " + f3448b);
            if (!z10) {
                arrayList = b(context, "notify_inapp_data");
            }
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (arrayList.size() >= f3448b) {
                arrayList.remove(0);
            }
            arrayList.add(dVar);
            a(context, "notify_inapp_data", arrayList);
        }
    }

    private static void a(Context context, String str, ArrayList<cn.jpush.android.d.d> arrayList) {
        String str2;
        Logger.v("NotifyInAppListUtils", "Action - saveObjects");
        if (context == null) {
            str2 = "unexcepted , context is null";
        } else if (arrayList != null && arrayList.size() > 0) {
            try {
                File a10 = cn.jpush.android.af.c.a(context, str);
                if (a10 == null) {
                    Logger.w("NotifyInAppListUtils", "file is null");
                    return;
                }
                new JSONArray();
                ArrayList arrayList2 = new ArrayList();
                int size = arrayList.size() - 1;
                while (true) {
                    if (size < 0) {
                        break;
                    }
                    cn.jpush.android.d.d dVar = arrayList.get(size);
                    if (dVar != null) {
                        if (TextUtils.isEmpty(dVar.at) || cn.jpush.android.af.b.b(dVar.at) > System.currentTimeMillis()) {
                            arrayList2.add(0, dVar.c());
                            if (arrayList2.size() == f3448b) {
                                Logger.d("NotifyInAppListUtils", "[saveObjects] reach max cache message count: " + f3448b + ", drop message count: " + (arrayList.size() - f3448b));
                                break;
                            }
                        } else {
                            Logger.dd("NotifyInAppListUtils", "message out of date, endTime: " + dVar.at);
                            cn.jpush.android.helper.c.a(dVar.f3017c, 1603, context);
                        }
                    }
                    size--;
                }
                JSONArray jSONArray = new JSONArray((Collection) arrayList2);
                Logger.d("NotifyInAppListUtils", "save object to file, size: " + jSONArray.length());
                cn.jpush.android.af.c.a(a10.getAbsolutePath(), jSONArray.toString());
                return;
            } catch (Throwable th2) {
                Logger.ww("NotifyInAppListUtils", "save Objects  error:" + th2.getMessage());
                return;
            }
        } else {
            str2 = "mObjectList is null or size is 0";
        }
        Logger.w("NotifyInAppListUtils", str2);
    }

    public static synchronized boolean a(Context context, String str) {
        boolean z10;
        String str2;
        synchronized (e.class) {
            ArrayList<cn.jpush.android.d.d> arrayList = null;
            try {
                if (f3447a == null) {
                    f3447a = new LinkedList();
                    arrayList = b(context, "notify_inapp_data");
                    if (arrayList != null && !arrayList.isEmpty()) {
                        f3447a.addAll(arrayList);
                    }
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (f3447a.size() <= 0) {
                    return false;
                }
                int i9 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= f3447a.size()) {
                        break;
                    }
                    cn.jpush.android.d.d dVar = f3447a.get(i10);
                    if (dVar != null && dVar.f3017c.equals(str)) {
                        f3447a.remove(i10);
                        Logger.d("NotifyInAppListUtils", "cancel notify in app, delete from cache msgId: " + str);
                        i9 = i10;
                        break;
                    }
                    i10++;
                }
                if (i9 < 0) {
                    return false;
                }
                if (f3447a.size() != 0) {
                    if (!z10) {
                        arrayList = b(context, "notify_inapp_data");
                    }
                    if (arrayList != null && arrayList.size() >= i9 + 1) {
                        arrayList.remove(i9);
                        if (arrayList.size() > 0) {
                            a(context, "notify_inapp_data", arrayList);
                        } else {
                            str2 = "notify_inapp_data";
                        }
                    }
                    return true;
                }
                str2 = "notify_inapp_data";
                c(context, str2);
                return true;
            } catch (Throwable th2) {
                Logger.w("NotifyInAppListUtils", "get notify inapp message failed, " + th2.getMessage());
                return false;
            }
        }
    }

    private static boolean a(cn.jpush.android.d.d dVar) {
        if (f3447a.size() <= 0) {
            return false;
        }
        if (dVar == null) {
            return true;
        }
        for (cn.jpush.android.d.d dVar2 : f3447a) {
            if (dVar2.f3017c.equals(dVar.f3017c)) {
                return true;
            }
        }
        return false;
    }

    public static synchronized cn.jpush.android.d.d b(Context context) {
        ArrayList<cn.jpush.android.d.d> arrayList;
        int size;
        String str;
        synchronized (e.class) {
            boolean z10 = false;
            cn.jpush.android.d.d dVar = null;
            try {
                if (f3447a == null) {
                    f3447a = new LinkedList();
                    ArrayList<cn.jpush.android.d.d> b10 = b(context, "notify_inapp_data");
                    if (b10 != null && !b10.isEmpty()) {
                        f3447a.addAll(b10);
                    }
                    arrayList = b10;
                    z10 = true;
                } else {
                    arrayList = null;
                }
                size = f3447a.size();
            } catch (Throwable th2) {
                th = th2;
            }
            if (size <= 0) {
                return null;
            }
            int i9 = size - 1;
            cn.jpush.android.d.d dVar2 = f3447a.get(i9);
            try {
                f3447a.remove(i9);
            } catch (Throwable th3) {
                th = th3;
                dVar = dVar2;
                Logger.w("NotifyInAppListUtils", "get notify inapp message failed, " + th.getMessage());
                dVar2 = dVar;
                Logger.d("NotifyInAppListUtils", "get notify in app, current size is " + f3447a.size());
                return dVar2;
            }
            if (f3447a.size() != 0) {
                if (!z10) {
                    arrayList = b(context, "notify_inapp_data");
                }
                if (arrayList != null && arrayList.size() > 0) {
                    arrayList.remove(arrayList.size() - 1);
                    if (arrayList.size() > 0) {
                        a(context, "notify_inapp_data", arrayList);
                    } else {
                        str = "notify_inapp_data";
                    }
                }
                Logger.d("NotifyInAppListUtils", "get notify in app, current size is " + f3447a.size());
                return dVar2;
            }
            str = "notify_inapp_data";
            c(context, str);
            Logger.d("NotifyInAppListUtils", "get notify in app, current size is " + f3447a.size());
            return dVar2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0084, code lost:
        cn.jpush.android.helper.Logger.d("NotifyInAppListUtils", "[loadObjects] reach max cache message count: " + cn.jpush.android.w.e.f3448b + ", drop message count: " + (r3.length() - cn.jpush.android.w.e.f3448b));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<cn.jpush.android.d.d> b(android.content.Context r11, java.lang.String r12) {
        /*
            r0 = 0
            java.lang.String r1 = "NotifyInAppListUtils"
            if (r11 != 0) goto Lb
            java.lang.String r11 = "unexcepted , context is null"
            cn.jpush.android.helper.Logger.w(r1, r11)
            return r0
        Lb:
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.io.File r3 = cn.jpush.android.af.c.a(r11, r12)     // Catch: java.lang.Throwable -> Lb5
            if (r3 == 0) goto Lb1
            boolean r4 = r3.exists()     // Catch: java.lang.Throwable -> Lb5
            if (r4 == 0) goto Lb1
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> Lb5
            r4.<init>(r3)     // Catch: java.lang.Throwable -> Lb5
            byte[] r0 = cn.jpush.android.af.j.a(r4)     // Catch: java.lang.Throwable -> Laf
            org.json.JSONArray r3 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Laf
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> Laf
            r5.<init>(r0)     // Catch: java.lang.Throwable -> Laf
            r3.<init>(r5)     // Catch: java.lang.Throwable -> Laf
            int r0 = r3.length()     // Catch: java.lang.Throwable -> Laf
            int r0 = r0 + (-1)
        L35:
            if (r0 < 0) goto Lad
            java.lang.Object r5 = r3.get(r0)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> Laf
            cn.jpush.android.d.d r5 = cn.jpush.android.d.d.a(r5)     // Catch: java.lang.Throwable -> Laf
            if (r5 != 0) goto L46
            goto Laa
        L46:
            java.lang.String r6 = r5.at     // Catch: java.lang.Throwable -> Laf
            boolean r6 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> Laf
            if (r6 != 0) goto L78
            java.lang.String r6 = r5.at     // Catch: java.lang.Throwable -> Laf
            long r6 = cn.jpush.android.af.b.b(r6)     // Catch: java.lang.Throwable -> Laf
            long r8 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Laf
            int r10 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r10 > 0) goto L78
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Laf
            r8.<init>()     // Catch: java.lang.Throwable -> Laf
            java.lang.String r9 = "message out of date, endTime: "
            r8.append(r9)     // Catch: java.lang.Throwable -> Laf
            r8.append(r6)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r6 = r8.toString()     // Catch: java.lang.Throwable -> Laf
            cn.jpush.android.helper.Logger.dd(r1, r6)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r5 = r5.f3017c     // Catch: java.lang.Throwable -> Laf
            r6 = 1603(0x643, float:2.246E-42)
            cn.jpush.android.helper.c.a(r5, r6, r11)     // Catch: java.lang.Throwable -> Laf
            goto Laa
        L78:
            r6 = 0
            r2.add(r6, r5)     // Catch: java.lang.Throwable -> Laf
            int r5 = r2.size()     // Catch: java.lang.Throwable -> Laf
            int r6 = cn.jpush.android.w.e.f3448b     // Catch: java.lang.Throwable -> Laf
            if (r5 != r6) goto Laa
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Laf
            r0.<init>()     // Catch: java.lang.Throwable -> Laf
            java.lang.String r5 = "[loadObjects] reach max cache message count: "
            r0.append(r5)     // Catch: java.lang.Throwable -> Laf
            int r5 = cn.jpush.android.w.e.f3448b     // Catch: java.lang.Throwable -> Laf
            r0.append(r5)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r5 = ", drop message count: "
            r0.append(r5)     // Catch: java.lang.Throwable -> Laf
            int r3 = r3.length()     // Catch: java.lang.Throwable -> Laf
            int r5 = cn.jpush.android.w.e.f3448b     // Catch: java.lang.Throwable -> Laf
            int r3 = r3 - r5
            r0.append(r3)     // Catch: java.lang.Throwable -> Laf
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> Laf
            cn.jpush.android.helper.Logger.d(r1, r0)     // Catch: java.lang.Throwable -> Laf
            goto Lad
        Laa:
            int r0 = r0 + (-1)
            goto L35
        Lad:
            r0 = r4
            goto Lb1
        Laf:
            r0 = move-exception
            goto Lb8
        Lb1:
            cn.jpush.android.af.j.a(r0)
            goto Ld6
        Lb5:
            r3 = move-exception
            r4 = r0
            r0 = r3
        Lb8:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lef
            r3.<init>()     // Catch: java.lang.Throwable -> Lef
            java.lang.String r5 = "load objects error:"
            r3.append(r5)     // Catch: java.lang.Throwable -> Lef
            java.lang.String r0 = r0.getMessage()     // Catch: java.lang.Throwable -> Lef
            r3.append(r0)     // Catch: java.lang.Throwable -> Lef
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> Lef
            cn.jpush.android.helper.Logger.w(r1, r0)     // Catch: java.lang.Throwable -> Lef
            c(r11, r12)     // Catch: java.lang.Throwable -> Lef
            cn.jpush.android.af.j.a(r4)
        Ld6:
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "load object size: "
            r11.append(r12)
            int r12 = r2.size()
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            cn.jpush.android.helper.Logger.i(r1, r11)
            return r2
        Lef:
            r11 = move-exception
            cn.jpush.android.af.j.a(r4)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.jpush.android.w.e.b(android.content.Context, java.lang.String):java.util.ArrayList");
    }

    private static void c(Context context, String str) {
        String str2;
        if (context == null) {
            str2 = "unexcepted , context is null";
        } else {
            File a10 = cn.jpush.android.af.c.a(context, str);
            if (a10 != null) {
                if (a10.exists()) {
                    a10.delete();
                    return;
                }
                return;
            }
            str2 = "can't get files dir";
        }
        Logger.w("NotifyInAppListUtils", str2);
    }
}
