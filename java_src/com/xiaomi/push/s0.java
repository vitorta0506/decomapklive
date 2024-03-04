package com.xiaomi.push;

import android.util.Log;
import com.xiaomi.push.v0;
/* loaded from: classes5.dex */
class s0 {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f37084a = Log.isLoggable("BCompressed", 3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(r0 r0Var, byte[] bArr) {
        try {
            byte[] a10 = v0.a.a(bArr);
            if (f37084a) {
                tf.c.m("BCompressed", "decompress " + bArr.length + " to " + a10.length + " for " + r0Var);
                if (r0Var.f37065e == 1) {
                    tf.c.m("BCompressed", "decompress not support upStream");
                }
            }
            return a10;
        } catch (Exception e10) {
            tf.c.m("BCompressed", "decompress error " + e10);
            return bArr;
        }
    }
}
