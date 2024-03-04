package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
/* loaded from: classes2.dex */
final class y2 {

    /* renamed from: c  reason: collision with root package name */
    private static final com.google.android.play.core.internal.g f10532c = new com.google.android.play.core.internal.g("PatchSliceTaskHandler");

    /* renamed from: a  reason: collision with root package name */
    private final e0 f10533a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.internal.g1 f10534b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y2(e0 e0Var, com.google.android.play.core.internal.g1 g1Var) {
        this.f10533a = e0Var;
        this.f10534b = g1Var;
    }

    public final void a(x2 x2Var) {
        File u10 = this.f10533a.u(x2Var.f10148b, x2Var.f10479c, x2Var.f10480d);
        File file = new File(this.f10533a.v(x2Var.f10148b, x2Var.f10479c, x2Var.f10480d), x2Var.f10484h);
        try {
            InputStream inputStream = x2Var.f10486j;
            if (x2Var.f10483g == 2) {
                inputStream = new GZIPInputStream(inputStream, 8192);
            }
            h0 h0Var = new h0(u10, file);
            File C = this.f10533a.C(x2Var.f10148b, x2Var.f10481e, x2Var.f10482f, x2Var.f10484h);
            if (!C.exists()) {
                C.mkdirs();
            }
            f3 f3Var = new f3(this.f10533a, x2Var.f10148b, x2Var.f10481e, x2Var.f10482f, x2Var.f10484h);
            com.google.android.play.core.internal.d1.a(h0Var, inputStream, new i1(C, f3Var), x2Var.f10485i);
            f3Var.i(0);
            inputStream.close();
            f10532c.d("Patching and extraction finished for slice %s of pack %s.", x2Var.f10484h, x2Var.f10148b);
            ((c4) this.f10534b.zza()).f(x2Var.f10147a, x2Var.f10148b, x2Var.f10484h, 0);
            try {
                x2Var.f10486j.close();
            } catch (IOException unused) {
                f10532c.e("Could not close file for slice %s of pack %s.", x2Var.f10484h, x2Var.f10148b);
            }
        } catch (IOException e10) {
            f10532c.b("IOException during patching %s.", e10.getMessage());
            throw new f1(String.format("Error patching slice %s of pack %s.", x2Var.f10484h, x2Var.f10148b), e10, x2Var.f10147a);
        }
    }
}
