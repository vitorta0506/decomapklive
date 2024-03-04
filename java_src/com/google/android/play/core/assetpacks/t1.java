package com.google.android.play.core.assetpacks;

import android.content.Context;
/* loaded from: classes2.dex */
public final class t1 {

    /* renamed from: a  reason: collision with root package name */
    private static c f10430a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized c a(Context context) {
        c cVar;
        synchronized (t1.class) {
            if (f10430a == null) {
                w0 w0Var = new w0(null);
                w0Var.b(new t3(com.google.android.play.core.internal.y0.a(context)));
                f10430a = w0Var.a();
            }
            cVar = f10430a;
        }
        return cVar;
    }
}
