package com.google.android.gms.internal.measurement;

import android.os.Binder;
/* loaded from: classes2.dex */
public final /* synthetic */ class c6 {
    public static Object a(d6 d6Var) {
        try {
            return d6Var.zza();
        } catch (SecurityException unused) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                return d6Var.zza();
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }
}
