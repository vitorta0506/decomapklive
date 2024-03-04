package com.google.android.gms.internal.recaptcha;

import com.facebook.internal.ServerProtocol;
import com.tencent.bugly.Bugly;
/* loaded from: classes2.dex */
public final class f2 {
    public static boolean a(d2 d2Var) {
        return ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(g2.a(d2Var.a(), Bugly.SDK_IS_DEV));
    }
}
