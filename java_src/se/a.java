package se;

import com.squareup.okhttp.internal.tls.TrustRootIndex;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes4.dex */
public final class a implements TrustRootIndex {

    /* renamed from: a  reason: collision with root package name */
    private final X509TrustManager f57872a;

    /* renamed from: b  reason: collision with root package name */
    private final Method f57873b;

    public a(X509TrustManager x509TrustManager, Method method) {
        this.f57873b = method;
        this.f57872a = x509TrustManager;
    }

    public static TrustRootIndex a(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new a(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // com.squareup.okhttp.internal.tls.TrustRootIndex
    public X509Certificate findByIssuerAndSignature(X509Certificate x509Certificate) {
        try {
            return ((TrustAnchor) this.f57873b.invoke(this.f57872a, x509Certificate)).getTrustedCert();
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        } catch (InvocationTargetException unused2) {
            return null;
        }
    }
}
