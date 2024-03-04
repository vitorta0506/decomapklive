package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.push.dq;
import java.util.Map;
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static a f37210a;

    /* renamed from: b  reason: collision with root package name */
    private static b f37211b;

    /* loaded from: classes5.dex */
    public interface a {
        Map<String, String> a(Context context, dq dqVar);

        /* renamed from: a  reason: collision with other method in class */
        void m1544a(Context context, dq dqVar);

        boolean b(Context context, dq dqVar, boolean z10);
    }

    /* loaded from: classes5.dex */
    public interface b {
        void a(dq dqVar);

        void a(String str);

        /* renamed from: a  reason: collision with other method in class */
        boolean m1545a(dq dqVar);
    }

    public static Map<String, String> a(Context context, dq dqVar) {
        a aVar = f37210a;
        if (aVar == null || dqVar == null) {
            tf.c.l("pepa listener or container is null");
            return null;
        }
        return aVar.a(context, dqVar);
    }

    public static void b(Context context, dq dqVar) {
        a aVar = f37210a;
        if (aVar == null || dqVar == null) {
            tf.c.l("handle msg wrong");
        } else {
            aVar.m1544a(context, dqVar);
        }
    }

    public static void c(dq dqVar) {
        b bVar = f37211b;
        if (bVar == null || dqVar == null) {
            tf.c.l("pepa clearMessage is null");
        } else {
            bVar.a(dqVar);
        }
    }

    public static void d(String str) {
        b bVar = f37211b;
        if (bVar == null || str == null) {
            tf.c.l("pepa clearMessage is null");
        } else {
            bVar.a(str);
        }
    }

    public static boolean e(Context context, dq dqVar, boolean z10) {
        a aVar = f37210a;
        if (aVar == null || dqVar == null) {
            tf.c.l("pepa judement listener or container is null");
            return false;
        }
        return aVar.b(context, dqVar, z10);
    }

    public static boolean f(dq dqVar) {
        b bVar = f37211b;
        if (bVar == null || dqVar == null) {
            tf.c.l("pepa handleReceiveMessage is null");
            return false;
        }
        return bVar.m1545a(dqVar);
    }
}
