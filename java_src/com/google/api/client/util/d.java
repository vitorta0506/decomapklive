package com.google.api.client.util;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class d {
    public static boolean a(c0 c0Var, c cVar) throws InterruptedException, IOException {
        long a10 = cVar.a();
        if (a10 == -1) {
            return false;
        }
        c0Var.a(a10);
        return true;
    }
}
