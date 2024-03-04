package com.xiaomi.push.service;

import com.xiaomi.push.dt;
/* loaded from: classes5.dex */
public class r1 {

    /* renamed from: a  reason: collision with root package name */
    private static b f37348a;

    /* renamed from: b  reason: collision with root package name */
    private static a f37349b;

    /* loaded from: classes5.dex */
    public interface a {
        boolean a(dt dtVar);
    }

    /* loaded from: classes5.dex */
    public interface b {
    }

    public static void a(b bVar) {
        f37348a = bVar;
    }

    public static boolean b(dt dtVar) {
        String str;
        if (f37349b == null || dtVar == null) {
            str = "rc params is null, not cpra";
        } else if (sf.e.i(sf.j.b())) {
            return f37349b.a(dtVar);
        } else {
            str = "rc app not permission to cpra";
        }
        tf.c.l(str);
        return false;
    }
}
