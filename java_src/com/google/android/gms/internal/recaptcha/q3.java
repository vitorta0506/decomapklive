package com.google.android.gms.internal.recaptcha;

import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public interface q3 {
    File a(Uri uri) throws IOException;

    String b();

    InputStream c(Uri uri) throws IOException;

    boolean d(Uri uri) throws IOException;

    OutputStream e(Uri uri) throws IOException;

    void f(Uri uri) throws IOException;

    void g(Uri uri, Uri uri2) throws IOException;
}
