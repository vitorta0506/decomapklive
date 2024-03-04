package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public final class b3 implements q3 {

    /* renamed from: a  reason: collision with root package name */
    private final e3 f8514a;

    public b3(e3 e3Var) {
        this.f8514a = e3Var;
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final File a(Uri uri) throws IOException {
        return a3.a(uri);
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final String b() {
        return ShareInternalUtility.STAGING_PARAM;
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final InputStream c(Uri uri) throws IOException {
        return g3.a(a3.a(uri));
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final boolean d(Uri uri) throws IOException {
        return a3.a(uri).exists();
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final OutputStream e(Uri uri) throws IOException {
        File a10 = a3.a(uri);
        sa.a(a10);
        return new h3(new FileOutputStream(a10), a10);
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final void f(Uri uri) throws IOException {
        File a10 = a3.a(uri);
        if (!a10.isDirectory()) {
            if (a10.delete()) {
                return;
            }
            if (!a10.exists()) {
                throw new FileNotFoundException(String.format("%s does not exist", uri));
            }
            throw new IOException(String.format("%s could not be deleted", uri));
        }
        throw new FileNotFoundException(String.format("%s is a directory", uri));
    }

    @Override // com.google.android.gms.internal.recaptcha.q3
    public final void g(Uri uri, Uri uri2) throws IOException {
        File a10 = a3.a(uri);
        File a11 = a3.a(uri2);
        sa.a(a11);
        if (!a10.renameTo(a11)) {
            throw new IOException(String.format("%s could not be renamed to %s", uri, uri2));
        }
    }
}
