package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.w1;
import com.google.android.gms.common.internal.x1;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class n extends w1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f7811a;

    /* JADX INFO: Access modifiers changed from: protected */
    public n(byte[] bArr) {
        com.google.android.gms.common.internal.p.a(bArr.length == 25);
        this.f7811a = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] D0(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.google.android.gms.common.internal.x1
    public final int E() {
        return this.f7811a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] E0();

    @Override // com.google.android.gms.common.internal.x1
    public final h4.a c() {
        return h4.b.E0(E0());
    }

    public final boolean equals(@Nullable Object obj) {
        h4.a c10;
        if (obj != null && (obj instanceof x1)) {
            try {
                x1 x1Var = (x1) obj;
                if (x1Var.E() == this.f7811a && (c10 = x1Var.c()) != null) {
                    return Arrays.equals(E0(), (byte[]) h4.b.D0(c10));
                }
                return false;
            } catch (RemoteException e10) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e10);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f7811a;
    }
}
