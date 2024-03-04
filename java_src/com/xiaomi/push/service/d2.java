package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.util.Pair;
import com.xiaomi.push.cd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes5.dex */
public class d2 {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, byte[]> f37208a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static ArrayList<Pair<String, byte[]>> f37209b = new ArrayList<>();

    public static void a(Context context, int i9, String str) {
        Map<String, byte[]> map = f37208a;
        synchronized (map) {
            for (String str2 : map.keySet()) {
                tf.c.l("notify registration error. " + str2);
                b(context, str2, f37208a.get(str2), i9, str);
            }
            f37208a.clear();
        }
    }

    public static void b(Context context, String str, byte[] bArr, int i9, String str2) {
        Intent intent = new Intent("com.xiaomi.mipush.ERROR");
        intent.setPackage(str);
        intent.putExtra("mipush_payload", bArr);
        intent.putExtra("mipush_error_code", i9);
        intent.putExtra("mipush_error_msg", str2);
        context.sendBroadcast(intent, f.g(str));
    }

    public static void c(XMPushService xMPushService) {
        try {
            Map<String, byte[]> map = f37208a;
            synchronized (map) {
                for (String str : map.keySet()) {
                    tf.c.l("processing pending registration request. " + str);
                    f.k(xMPushService, str, f37208a.get(str));
                }
                f37208a.clear();
            }
        } catch (cd e10) {
            tf.c.u("fail to deal with pending register request. " + e10);
            xMPushService.a(10, e10);
        }
    }

    public static void d(String str, byte[] bArr) {
        Map<String, byte[]> map = f37208a;
        synchronized (map) {
            tf.c.l("pending registration request. " + str);
            map.put(str, bArr);
        }
    }

    public static void e(XMPushService xMPushService) {
        ArrayList<Pair<String, byte[]>> arrayList;
        try {
            synchronized (f37209b) {
                arrayList = f37209b;
                f37209b = new ArrayList<>();
            }
            boolean z10 = Thread.currentThread() == Looper.getMainLooper().getThread();
            Iterator<Pair<String, byte[]>> it = arrayList.iterator();
            while (it.hasNext()) {
                Pair<String, byte[]> next = it.next();
                f.k(xMPushService, (String) next.first, (byte[]) next.second);
                if (!z10) {
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        } catch (cd e10) {
            tf.c.u("meet error when process pending message. " + e10);
            xMPushService.a(10, e10);
        }
    }

    public static void f(String str, byte[] bArr) {
        synchronized (f37209b) {
            f37209b.add(new Pair<>(str, bArr));
            if (f37209b.size() > 50) {
                f37209b.remove(0);
            }
        }
    }
}
