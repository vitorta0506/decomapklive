package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
final class j3 {

    /* renamed from: b  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10308b = new com.google.android.play.core.internal.g("VerifySliceTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10309a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j3(e0 e0Var) {
        this.f10309a = e0Var;
    }

    private final void b(i3 i3Var, File file) {
        try {
            File B = this.f10309a.B(i3Var.f10148b, i3Var.f10290c, i3Var.f10291d, i3Var.f10292e);
            if (B.exists()) {
                try {
                    if (i2.a(h3.a(file, B)).equals(i3Var.f10293f)) {
                        f10308b.d("Verification of slice %s of pack %s successful.", i3Var.f10292e, i3Var.f10148b);
                        return;
                    }
                    throw new f1(String.format("Verification failed for slice %s.", i3Var.f10292e), i3Var.f10147a);
                } catch (IOException e10) {
                    throw new f1(String.format("Could not digest file during verification for slice %s.", i3Var.f10292e), e10, i3Var.f10147a);
                } catch (NoSuchAlgorithmException e11) {
                    throw new f1("SHA256 algorithm not supported.", e11, i3Var.f10147a);
                }
            }
            throw new f1(String.format("Cannot find metadata files for slice %s.", i3Var.f10292e), i3Var.f10147a);
        } catch (IOException e12) {
            throw new f1(String.format("Could not reconstruct slice archive during verification for slice %s.", i3Var.f10292e), e12, i3Var.f10147a);
        }
    }

    public final void a(i3 i3Var) {
        File C = this.f10309a.C(i3Var.f10148b, i3Var.f10290c, i3Var.f10291d, i3Var.f10292e);
        if (C.exists()) {
            b(i3Var, C);
            File D = this.f10309a.D(i3Var.f10148b, i3Var.f10290c, i3Var.f10291d, i3Var.f10292e);
            if (!D.exists()) {
                D.mkdirs();
            }
            if (!C.renameTo(D)) {
                throw new f1(String.format("Failed to move slice %s after verification.", i3Var.f10292e), i3Var.f10147a);
            }
            return;
        }
        throw new f1(String.format("Cannot find unverified files for slice %s.", i3Var.f10292e), i3Var.f10147a);
    }
}
