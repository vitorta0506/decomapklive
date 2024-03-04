package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.cz;
import com.xiaomi.push.dk;
import com.xiaomi.push.dl;
import com.xiaomi.push.dm;
import com.xiaomi.push.dp;
import com.xiaomi.push.dq;
import com.xiaomi.push.dt;
import com.xiaomi.push.dv;
import com.xiaomi.push.dw;
import com.xiaomi.push.dx;
import com.xiaomi.push.dz;
import com.xiaomi.push.eb;
import com.xiaomi.push.ed;
import com.xiaomi.push.ef;
import com.xiaomi.push.h2;
import java.nio.ByteBuffer;
/* loaded from: classes5.dex */
public class q {
    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends ef<T, ?>> dq a(Context context, T t10, cz czVar) {
        return b(context, t10, czVar, !czVar.equals(cz.Registration), context.getPackageName(), n.c(context).d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends ef<T, ?>> dq b(Context context, T t10, cz czVar, boolean z10, String str, String str2) {
        return c(context, t10, czVar, z10, str, str2, true);
    }

    protected static <T extends ef<T, ?>> dq c(Context context, T t10, cz czVar, boolean z10, String str, String str2, boolean z11) {
        String str3;
        byte[] d10 = h2.d(t10);
        if (d10 != null) {
            dq dqVar = new dq();
            if (z10) {
                String t11 = n.c(context).t();
                if (TextUtils.isEmpty(t11)) {
                    str3 = "regSecret is empty, return null";
                } else {
                    try {
                        d10 = sf.a.c(com.xiaomi.push.b.b(t11), d10);
                    } catch (Exception unused) {
                        tf.c.u("encryption error. ");
                    }
                }
            }
            dk dkVar = new dk();
            dkVar.f90a = 5L;
            dkVar.f91a = "fakeid";
            dqVar.a(dkVar);
            dqVar.a(ByteBuffer.wrap(d10));
            dqVar.a(czVar);
            dqVar.b(z11);
            dqVar.b(str);
            dqVar.a(z10);
            dqVar.a(str2);
            return dqVar;
        }
        str3 = "invoke convertThriftObjectToBytes method, return null.";
        tf.c.l(str3);
        return null;
    }

    public static ef d(Context context, dq dqVar) {
        byte[] m1461a;
        if (dqVar.m1463b()) {
            byte[] j10 = i0.j(context, dqVar, c.ASSEMBLE_PUSH_FCM);
            if (j10 == null) {
                j10 = com.xiaomi.push.b.b(n.c(context).t());
            }
            try {
                m1461a = sf.a.b(j10, dqVar.m1461a());
            } catch (Exception e10) {
                throw new o("the aes decrypt failed.", e10);
            }
        } else {
            m1461a = dqVar.m1461a();
        }
        ef e11 = e(dqVar.a(), dqVar.f168b);
        if (e11 != null) {
            h2.c(e11, m1461a);
        }
        return e11;
    }

    private static ef e(cz czVar, boolean z10) {
        switch (r.f36285a[czVar.ordinal()]) {
            case 1:
                return new dv();
            case 2:
                return new eb();
            case 3:
                return new dz();
            case 4:
                return new ed();
            case 5:
                return new dx();
            case 6:
                return new dl();
            case 7:
                return new dp();
            case 8:
                return new dw();
            case 9:
                if (z10) {
                    return new dt();
                }
                dm dmVar = new dm();
                dmVar.a(true);
                return dmVar;
            case 10:
                return new dp();
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static <T extends ef<T, ?>> dq f(Context context, T t10, cz czVar, boolean z10, String str, String str2) {
        return c(context, t10, czVar, z10, str, str2, false);
    }
}
