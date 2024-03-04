package org.conscrypt;

import java.security.PublicKey;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
/* loaded from: classes7.dex */
public final class e0 {

    /* renamed from: a  reason: collision with root package name */
    private final Map<X500Principal, List<TrustAnchor>> f56349a = new HashMap();

    public e0() {
    }

    private static TrustAnchor c(X509Certificate x509Certificate, Collection<TrustAnchor> collection) {
        PublicKey cAPublicKey;
        PublicKey publicKey = x509Certificate.getPublicKey();
        for (TrustAnchor trustAnchor : collection) {
            try {
                X509Certificate trustedCert = trustAnchor.getTrustedCert();
                if (trustedCert != null) {
                    cAPublicKey = trustedCert.getPublicKey();
                } else {
                    cAPublicKey = trustAnchor.getCAPublicKey();
                }
            } catch (Exception unused) {
            }
            if (cAPublicKey.equals(publicKey)) {
                return trustAnchor;
            }
            if ("X.509".equals(cAPublicKey.getFormat()) && "X.509".equals(publicKey.getFormat())) {
                byte[] encoded = cAPublicKey.getEncoded();
                byte[] encoded2 = publicKey.getEncoded();
                if (encoded2 != null && encoded != null && Arrays.equals(encoded, encoded2)) {
                    return trustAnchor;
                }
            }
        }
        return null;
    }

    private void f(Set<TrustAnchor> set) {
        for (TrustAnchor trustAnchor : set) {
            e(trustAnchor);
        }
    }

    public Set<TrustAnchor> a(X509Certificate x509Certificate) {
        PublicKey cAPublicKey;
        X500Principal issuerX500Principal = x509Certificate.getIssuerX500Principal();
        synchronized (this.f56349a) {
            List<TrustAnchor> list = this.f56349a.get(issuerX500Principal);
            if (list == null) {
                return Collections.emptySet();
            }
            HashSet hashSet = new HashSet();
            for (TrustAnchor trustAnchor : list) {
                try {
                    X509Certificate trustedCert = trustAnchor.getTrustedCert();
                    if (trustedCert != null) {
                        cAPublicKey = trustedCert.getPublicKey();
                    } else {
                        cAPublicKey = trustAnchor.getCAPublicKey();
                    }
                    if (cAPublicKey != null) {
                        x509Certificate.verify(cAPublicKey);
                        hashSet.add(trustAnchor);
                    }
                } catch (Exception unused) {
                }
            }
            return hashSet;
        }
    }

    public TrustAnchor b(X509Certificate x509Certificate) {
        X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
        synchronized (this.f56349a) {
            List<TrustAnchor> list = this.f56349a.get(subjectX500Principal);
            if (list == null) {
                return null;
            }
            return c(x509Certificate, list);
        }
    }

    public TrustAnchor d(X509Certificate x509Certificate) {
        TrustAnchor trustAnchor = new TrustAnchor(x509Certificate, null);
        e(trustAnchor);
        return trustAnchor;
    }

    public void e(TrustAnchor trustAnchor) {
        X500Principal ca2;
        X509Certificate trustedCert = trustAnchor.getTrustedCert();
        if (trustedCert != null) {
            ca2 = trustedCert.getSubjectX500Principal();
        } else {
            ca2 = trustAnchor.getCA();
        }
        synchronized (this.f56349a) {
            List<TrustAnchor> list = this.f56349a.get(ca2);
            if (list == null) {
                list = new ArrayList<>(1);
                this.f56349a.put(ca2, list);
            } else if (trustedCert != null) {
                for (TrustAnchor trustAnchor2 : list) {
                    if (trustedCert.equals(trustAnchor2.getTrustedCert())) {
                        return;
                    }
                }
            }
            list.add(trustAnchor);
        }
    }

    public e0(Set<TrustAnchor> set) {
        f(set);
    }
}
