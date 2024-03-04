package se;

import androidx.webkit.ProxyConfig;
import com.meizu.cloud.pushsdk.notification.model.AdvanceSetting;
import io.jsonwebtoken.JwtParser;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
/* loaded from: classes4.dex */
public final class d implements HostnameVerifier {

    /* renamed from: a  reason: collision with root package name */
    public static final d f57882a = new d();

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f57883b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    private d() {
    }

    public static List<String> a(X509Certificate x509Certificate) {
        List<String> b10 = b(x509Certificate, 7);
        List<String> b11 = b(x509Certificate, 2);
        ArrayList arrayList = new ArrayList(b10.size() + b11.size());
        arrayList.addAll(b10);
        arrayList.addAll(b11);
        return arrayList;
    }

    private static List<String> b(X509Certificate x509Certificate, int i9) {
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

    static boolean d(String str) {
        return f57883b.matcher(str).matches();
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
            String substring = lowerCase.substring(1);
            if (str.endsWith(substring)) {
                int length = str.length() - substring.length();
                return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
            }
            return false;
        }
        return false;
    }

    private boolean f(String str, X509Certificate x509Certificate) {
        String b10;
        String lowerCase = str.toLowerCase(Locale.US);
        List<String> b11 = b(x509Certificate, 2);
        int size = b11.size();
        int i9 = 0;
        boolean z10 = false;
        while (i9 < size) {
            if (e(lowerCase, b11.get(i9))) {
                return true;
            }
            i9++;
            z10 = true;
        }
        if (z10 || (b10 = new c(x509Certificate.getSubjectX500Principal()).b(AdvanceSetting.CLEAR_NOTIFICATION)) == null) {
            return false;
        }
        return e(lowerCase, b10);
    }

    private boolean g(String str, X509Certificate x509Certificate) {
        List<String> b10 = b(x509Certificate, 7);
        int size = b10.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (str.equalsIgnoreCase(b10.get(i9))) {
                return true;
            }
        }
        return false;
    }

    public boolean c(String str, X509Certificate x509Certificate) {
        return d(str) ? g(str, x509Certificate) : f(str, x509Certificate);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return c(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException unused) {
            return false;
        }
    }
}
