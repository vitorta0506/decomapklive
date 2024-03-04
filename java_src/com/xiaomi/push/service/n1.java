package com.xiaomi.push.service;

import android.app.NotificationChannel;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import com.facebook.internal.security.CertificateUtil;
import com.huawei.hms.framework.common.ContainerUtils;
import com.xiaomi.push.q3;
import com.xiaomi.push.service.s;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class n1 {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f37310a = {1, 2, 4, 8, 16};

    /* renamed from: b  reason: collision with root package name */
    private static final SparseArray<s.a<String, String, String>> f37311b = new o1(5);

    /* renamed from: c  reason: collision with root package name */
    private static final SparseArray<Integer> f37312c = new p1(5);

    n1() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(String str, String str2) {
        int i9 = l(str, str2, 8) ? 8 : 0;
        if (l(str, str2, 16)) {
            i9 |= 16;
        }
        if (l(str, str2, 1)) {
            i9 |= 1;
        }
        if (l(str, str2, 2)) {
            i9 |= 2;
        }
        return l(str, str2, 4) ? i9 | 4 : i9;
    }

    private static SharedPreferences b(Context context) {
        return context.getSharedPreferences("ch_permission_cache_file", 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Context context, String str) {
        List<NotificationChannel> l10;
        if (!sf.e.i(context) || TextUtils.isEmpty(str) || (l10 = r.e(context, str).l()) == null) {
            return;
        }
        synchronized (n1.class) {
            SharedPreferences b10 = b(context);
            ArrayList arrayList = new ArrayList();
            for (NotificationChannel notificationChannel : l10) {
                String str2 = (String) q3.d(notificationChannel, "mId");
                if (!TextUtils.isEmpty(str2) && b10.contains(str2)) {
                    arrayList.add(str2);
                }
            }
            if (arrayList.size() > 0) {
                h(b10, arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(Context context, String str, String str2, int i9, String str3, boolean z10, int i10) {
        if (!sf.e.i(context) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
            if (sf.e.i(context)) {
                tf.c.l("ChannelPC: can`t setup permission with permissionCode:" + String.valueOf(str3) + " channelId:" + String.valueOf(str2) + " targetPkg:" + str);
                return;
            }
            return;
        }
        int a10 = sf.k.a(str3, 0);
        boolean k10 = k(i9, a10);
        if (z10) {
            i(str, str2, a10, i10);
            if (k10) {
                synchronized (n1.class) {
                    e(b(context), a10, str2);
                }
                return;
            }
            return;
        }
        synchronized (n1.class) {
            SharedPreferences b10 = b(context);
            if (k10 || b10.contains(str2)) {
                f(b10, a10, str, str2, i10);
                if (k10) {
                    e(b10, a10, str2);
                } else {
                    g(b10, str2);
                }
            }
        }
    }

    private static void e(SharedPreferences sharedPreferences, int i9, String str) {
        sharedPreferences.edit().putInt(str, i9).commit();
    }

    private static void f(SharedPreferences sharedPreferences, int i9, String str, String str2, int i10) {
        if (sharedPreferences.getInt(str2, 0) != i9) {
            i(str, str2, i9, i10);
        }
    }

    private static void g(SharedPreferences sharedPreferences, String str) {
        h(sharedPreferences, new q1(str));
    }

    private static void h(SharedPreferences sharedPreferences, List<String> list) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        for (String str : list) {
            edit.remove(str);
        }
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void i(String str, String str2, int i9, int i10) {
        int[] iArr;
        for (int i11 : f37310a) {
            if ((f37312c.get(i11).intValue() & i10) == 0) {
                j(str, str2, i11, (i9 & i11) > 0);
            } else {
                tf.c.l("ChannelPermissions.grantPermission:" + str + CertificateUtil.DELIMITER + str2 + ": <" + i11 + "> :stoped by userLock");
            }
        }
    }

    private static void j(String str, String str2, int i9, boolean z10) {
        boolean q10 = s.q(sf.j.b(), str, str2, f37311b.get(i9), z10);
        tf.c.l("ChannelPermissions.grantPermission:" + str + CertificateUtil.DELIMITER + str2 + ": <" + i9 + ContainerUtils.KEY_VALUE_DELIMITER + z10 + "> :" + q10);
    }

    private static boolean k(int i9, int i10) {
        return i9 >= 4 || (i10 & 2) > 0 || (i10 & 1) > 0 || (i10 & 8) > 0 || (i10 & 16) > 0;
    }

    private static boolean l(String str, String str2, int i9) {
        boolean z10 = s.c(sf.j.b(), str, str2, f37311b.get(i9)) == 1;
        tf.c.l("ChannelPermissions.checkPermission:" + str + CertificateUtil.DELIMITER + str2 + ": <" + i9 + ContainerUtils.KEY_VALUE_DELIMITER + z10 + ">");
        return z10;
    }
}
