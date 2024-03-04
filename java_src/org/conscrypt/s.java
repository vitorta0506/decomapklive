package org.conscrypt;

import androidx.webkit.ProxyConfig;
import io.jsonwebtoken.JwtParser;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* loaded from: classes7.dex */
public final class s implements k {

    /* renamed from: b  reason: collision with root package name */
    public static final s f56411b = new s(false);

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f56412c = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    /* renamed from: a  reason: collision with root package name */
    private final boolean f56413a;

    private s(boolean z10) {
        this.f56413a = z10;
    }

    private static List<String> a(X509Certificate x509Certificate, int i9) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i9 && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.emptyList();
        }
    }

    public static s b() {
        return new s(true);
    }

    static boolean d(String str) {
        return f56412c.matcher(str).matches();
    }

    private boolean e(String str, String str2) {
        if (str != null && str.length() != 0 && !str.startsWith(".") && !str.endsWith("..") && str2 != null && str2.length() != 0 && !str2.startsWith(".") && !str2.endsWith("..")) {
            if (!str.endsWith(".")) {
                str = str + JwtParser.SEPARATOR_CHAR;
            }
            if (!str2.endsWith(".")) {
                str2 = str2 + JwtParser.SEPARATOR_CHAR;
            }
            String lowerCase = str2.toLowerCase(Locale.US);
            if (!lowerCase.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
                return str.equals(lowerCase);
            }
            if (!lowerCase.startsWith("*.") || lowerCase.indexOf(42, 1) != -1 || str.length() < lowerCase.length() || "*.".equals(lowerCase)) {
                return false;
            }
            if (!this.f56413a || lowerCase.substring(2, lowerCase.length() - 1).indexOf(46) >= 0) {
                String substring = lowerCase.substring(1);
                if (str.endsWith(substring)) {
                    int length = str.length() - substring.length();
                    return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    private boolean f(String str, X509Certificate x509Certificate) {
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> a10 = a(x509Certificate, 2);
        int size = a10.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (e(lowerCase, a10.get(i9))) {
                return true;
            }
        }
        return false;
    }

    private boolean g(String str, X509Certificate x509Certificate) {
        List<String> a10 = a(x509Certificate, 7);
        int size = a10.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (str.equalsIgnoreCase(a10.get(i9))) {
                return true;
            }
        }
        return false;
    }

    public boolean c(String str, X509Certificate x509Certificate) {
        if (d(str)) {
            return g(str, x509Certificate);
        }
        return f(str, x509Certificate);
    }

    @Override // org.conscrypt.k
    public boolean verify(X509Certificate[] x509CertificateArr, String str, SSLSession sSLSession) {
        if (x509CertificateArr.length > 0) {
            return c(str, x509CertificateArr[0]);
        }
        try {
            return c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
