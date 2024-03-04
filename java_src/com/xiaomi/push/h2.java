package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.el;
import com.xiaomi.push.ev;
/* loaded from: classes5.dex */
public class h2 {
    public static short a(Context context, dq dqVar) {
        return b(context, dqVar.f167b);
    }

    public static short b(Context context, String str) {
        return (short) (com.xiaomi.channel.commonutils.android.a.f(context, str, false).a() + 0 + (e3.b(context) ? 4 : 0) + (e3.a(context) ? 8 : 0) + (com.xiaomi.push.service.r.t(context) ? 16 : 0));
    }

    public static <T extends ef<T, ?>> void c(T t10, byte[] bArr) {
        if (bArr == null) {
            throw new ej("the message byte is empty.");
        }
        new k2(new ev.a(true, true, bArr.length)).a(t10, bArr);
    }

    public static <T extends ef<T, ?>> byte[] d(T t10) {
        if (t10 == null) {
            return null;
        }
        try {
            return new l2(new el.a()).a(t10);
        } catch (ej e10) {
            tf.c.n("convertThriftObjectToBytes catch TException.", e10);
            return null;
        }
    }
}
