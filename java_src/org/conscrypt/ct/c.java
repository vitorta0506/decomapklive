package org.conscrypt.ct;

import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.conscrypt.NativeCrypto;
import org.conscrypt.OpenSSLX509Certificate;
import org.conscrypt.ct.SignedCertificateTimestamp;
import org.conscrypt.ct.VerifiedSCT;
/* loaded from: classes7.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final gl.a f56328a;

    public c(gl.a aVar) {
        this.f56328a = aVar;
    }

    private List<SignedCertificateTimestamp> a(byte[] bArr, OpenSSLX509Certificate[] openSSLX509CertificateArr) {
        if (bArr != null && openSSLX509CertificateArr.length >= 2) {
            byte[] bArr2 = NativeCrypto.get_ocsp_single_extension(bArr, "1.3.6.1.4.1.11129.2.4.5", openSSLX509CertificateArr[0].getContext(), openSSLX509CertificateArr[0], openSSLX509CertificateArr[1].getContext(), openSSLX509CertificateArr[1]);
            if (bArr2 == null) {
                return Collections.emptyList();
            }
            try {
                return b(gl.c.c(gl.c.c(bArr2)), SignedCertificateTimestamp.Origin.OCSP_RESPONSE);
            } catch (SerializationException unused) {
                return Collections.emptyList();
            }
        }
        return Collections.emptyList();
    }

    private static List<SignedCertificateTimestamp> b(byte[] bArr, SignedCertificateTimestamp.Origin origin) {
        if (bArr == null) {
            return Collections.emptyList();
        }
        try {
            byte[][] f10 = gl.c.f(bArr, 2, 2);
            ArrayList arrayList = new ArrayList();
            for (byte[] bArr2 : f10) {
                try {
                    arrayList.add(SignedCertificateTimestamp.b(bArr2, origin));
                } catch (SerializationException unused) {
                }
            }
            return arrayList;
        } catch (SerializationException unused2) {
            return Collections.emptyList();
        }
    }

    private List<SignedCertificateTimestamp> c(byte[] bArr) {
        return b(bArr, SignedCertificateTimestamp.Origin.TLS_EXTENSION);
    }

    private List<SignedCertificateTimestamp> d(OpenSSLX509Certificate openSSLX509Certificate) {
        byte[] extensionValue = openSSLX509Certificate.getExtensionValue("1.3.6.1.4.1.11129.2.4.2");
        if (extensionValue == null) {
            return Collections.emptyList();
        }
        try {
            return b(gl.c.c(gl.c.c(extensionValue)), SignedCertificateTimestamp.Origin.EMBEDDED);
        } catch (SerializationException unused) {
            return Collections.emptyList();
        }
    }

    private void e(List<SignedCertificateTimestamp> list, b bVar) {
        for (SignedCertificateTimestamp signedCertificateTimestamp : list) {
            bVar.a(new VerifiedSCT(signedCertificateTimestamp, VerifiedSCT.Status.INVALID_SCT));
        }
    }

    private void f(List<SignedCertificateTimestamp> list, OpenSSLX509Certificate[] openSSLX509CertificateArr, b bVar) {
        if (list.isEmpty()) {
            return;
        }
        CertificateEntry certificateEntry = null;
        if (openSSLX509CertificateArr.length >= 2) {
            try {
                certificateEntry = CertificateEntry.a(openSSLX509CertificateArr[0], openSSLX509CertificateArr[1]);
            } catch (CertificateException unused) {
            }
        }
        if (certificateEntry == null) {
            e(list, bVar);
            return;
        }
        for (SignedCertificateTimestamp signedCertificateTimestamp : list) {
            bVar.a(new VerifiedSCT(signedCertificateTimestamp, j(signedCertificateTimestamp, certificateEntry)));
        }
    }

    private void g(List<SignedCertificateTimestamp> list, OpenSSLX509Certificate openSSLX509Certificate, b bVar) {
        if (list.isEmpty()) {
            return;
        }
        try {
            CertificateEntry c10 = CertificateEntry.c(openSSLX509Certificate);
            for (SignedCertificateTimestamp signedCertificateTimestamp : list) {
                bVar.a(new VerifiedSCT(signedCertificateTimestamp, j(signedCertificateTimestamp, c10)));
            }
        } catch (CertificateException unused) {
            e(list, bVar);
        }
    }

    private VerifiedSCT.Status j(SignedCertificateTimestamp signedCertificateTimestamp, CertificateEntry certificateEntry) {
        this.f56328a.a(signedCertificateTimestamp.c());
        return VerifiedSCT.Status.UNKNOWN_LOG;
    }

    public b h(List<X509Certificate> list, byte[] bArr, byte[] bArr2) throws CertificateEncodingException {
        OpenSSLX509Certificate[] openSSLX509CertificateArr = new OpenSSLX509Certificate[list.size()];
        int i9 = 0;
        for (X509Certificate x509Certificate : list) {
            openSSLX509CertificateArr[i9] = OpenSSLX509Certificate.fromCertificate(x509Certificate);
            i9++;
        }
        return i(openSSLX509CertificateArr, bArr, bArr2);
    }

    public b i(OpenSSLX509Certificate[] openSSLX509CertificateArr, byte[] bArr, byte[] bArr2) throws CertificateEncodingException {
        if (openSSLX509CertificateArr.length != 0) {
            OpenSSLX509Certificate openSSLX509Certificate = openSSLX509CertificateArr[0];
            b bVar = new b();
            g(c(bArr), openSSLX509Certificate, bVar);
            g(a(bArr2, openSSLX509CertificateArr), openSSLX509Certificate, bVar);
            f(d(openSSLX509CertificateArr[0]), openSSLX509CertificateArr, bVar);
            return bVar;
        }
        throw new IllegalArgumentException("Chain of certificates mustn't be empty.");
    }
}
