package org.apache.http.conn.ssl;

import androidx.webkit.ProxyConfig;
import com.tencent.liteav.txcplayer.ext.host.EngineConst;
import java.io.IOException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
@Deprecated
/* loaded from: classes7.dex */
public abstract class a implements X509HostnameVerifier {
    static final String[] BAD_COUNTRY_2LDS;
    private final org.apache.commons.logging.a log = org.apache.commons.logging.h.m(getClass());

    static {
        String[] strArr = {"ac", "co", "com", "ed", "edu", "go", "gouv", "gov", "info", "lg", "ne", "net", "or", "org"};
        BAD_COUNTRY_2LDS = strArr;
        Arrays.sort(strArr);
    }

    public static boolean acceptableCountryWildcard(String str) {
        return validCountryWildcard(str.split("\\."));
    }

    public static int countDots(String str) {
        int i9 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            if (str.charAt(i10) == '.') {
                i9++;
            }
        }
        return i9;
    }

    public static String[] getCNs(X509Certificate x509Certificate) {
        try {
            String a10 = c.a(x509Certificate.getSubjectX500Principal().toString());
            if (a10 != null) {
                return new String[]{a10};
            }
            return null;
        } catch (SSLException unused) {
            return null;
        }
    }

    public static String[] getDNSSubjectAlts(X509Certificate x509Certificate) {
        List<h> b10 = c.b(x509Certificate);
        if (b10 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (h hVar : b10) {
            if (hVar.a() == 2) {
                arrayList.add(hVar.b());
            }
        }
        if (arrayList.isEmpty()) {
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }
        return null;
    }

    private static boolean matchIdentity(String str, String str2, boolean z10) {
        boolean endsWith;
        if (str == null) {
            return false;
        }
        Locale locale = Locale.ROOT;
        String lowerCase = str.toLowerCase(locale);
        String lowerCase2 = str2.toLowerCase(locale);
        String[] split = lowerCase2.split("\\.");
        if (split.length >= 3 && split[0].endsWith(ProxyConfig.MATCH_ALL_SCHEMES) && (!z10 || validCountryWildcard(split))) {
            String str3 = split[0];
            if (str3.length() > 1) {
                String substring = str3.substring(0, str3.length() - 1);
                endsWith = lowerCase.startsWith(substring) && lowerCase.substring(substring.length()).endsWith(lowerCase2.substring(str3.length()));
            } else {
                endsWith = lowerCase.endsWith(lowerCase2.substring(1));
            }
            if (endsWith) {
                return !z10 || countDots(lowerCase) == countDots(lowerCase2);
            }
            return false;
        }
        return lowerCase.equals(lowerCase2);
    }

    private static boolean validCountryWildcard(String[] strArr) {
        return (strArr.length == 3 && strArr[2].length() == 2 && Arrays.binarySearch(BAD_COUNTRY_2LDS, strArr[1]) >= 0) ? false : true;
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, SSLSocket sSLSocket) throws IOException {
        vi.a.g(str, EngineConst.PluginName.HOST_NAME);
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            sSLSocket.getInputStream().available();
            session = sSLSocket.getSession();
            if (session == null) {
                sSLSocket.startHandshake();
                session = sSLSocket.getSession();
            }
        }
        verify(str, (X509Certificate) session.getPeerCertificates()[0]);
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e10) {
            if (this.log.isDebugEnabled()) {
                this.log.debug(e10.getMessage(), e10);
            }
            return false;
        }
    }

    @Override // org.apache.http.conn.ssl.X509HostnameVerifier
    public final void verify(String str, X509Certificate x509Certificate) throws SSLException {
        List<h> b10 = c.b(x509Certificate);
        ArrayList arrayList = new ArrayList();
        if (!qi.a.a(str) && !qi.a.b(str)) {
            for (h hVar : b10) {
                if (hVar.a() == 2) {
                    arrayList.add(hVar.b());
                }
            }
        } else {
            for (h hVar2 : b10) {
                if (hVar2.a() == 7) {
                    arrayList.add(hVar2.b());
                }
            }
        }
        String a10 = c.a(x509Certificate.getSubjectX500Principal().getName("RFC2253"));
        verify(str, a10 != null ? new String[]{a10} : null, arrayList.isEmpty() ? null : (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final void verify(String str, String[] strArr, String[] strArr2, boolean z10) throws SSLException {
        List<String> list = null;
        String str2 = (strArr == null || strArr.length <= 0) ? null : strArr[0];
        if (strArr2 != null && strArr2.length > 0) {
            list = Arrays.asList(strArr2);
        }
        String c10 = qi.a.b(str) ? c.c(str.toLowerCase(Locale.ROOT)) : str;
        if (list == null) {
            if (str2 != null) {
                if (matchIdentity(c10, qi.a.b(str2) ? c.c(str2) : str2, z10)) {
                    return;
                }
                throw new SSLException("Certificate for <" + str + "> doesn't match common name of the certificate subject: " + str2);
            } else {
                throw new SSLException("Certificate subject for <" + str + "> doesn't contain a common name and does not have alternative names");
            }
        }
        for (String str3 : list) {
            if (qi.a.b(str3)) {
                str3 = c.c(str3);
            }
            if (matchIdentity(c10, str3, z10)) {
                return;
            }
        }
        throw new SSLException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
    }
}
