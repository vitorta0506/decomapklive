package cc;

import android.content.Context;
import android.os.AsyncTask;
import ec.f;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Objects;
/* loaded from: classes4.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f1706a = "SecureX509SingleInstance";

    /* renamed from: b  reason: collision with root package name */
    private static volatile e f1707b;

    private d() {
    }

    public static e a(Context context) throws CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException {
        long currentTimeMillis = System.currentTimeMillis();
        Objects.requireNonNull(context, "context is null");
        ec.c.b(context);
        if (f1707b == null) {
            synchronized (d.class) {
                if (f1707b == null) {
                    InputStream n9 = ec.a.n(context);
                    if (n9 == null) {
                        f.e(f1706a, "get assets bks");
                        n9 = context.getAssets().open("hmsrootcas.bks");
                    } else {
                        f.e(f1706a, "get files bks");
                    }
                    f1707b = new e(n9, "");
                    new ec.d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context);
                }
            }
        }
        String str = f1706a;
        f.b(str, "SecureX509TrustManager getInstance: cost : " + (System.currentTimeMillis() - currentTimeMillis) + " ms");
        return f1707b;
    }
}
