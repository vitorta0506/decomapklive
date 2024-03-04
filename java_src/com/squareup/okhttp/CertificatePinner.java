package com.squareup.okhttp;

import com.facebook.internal.security.CertificateUtil;
import com.squareup.okhttp.internal.i;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final Map<String, Set<ByteString>> hostnameToPins;

    /* loaded from: classes4.dex */
    public static final class Builder {
        private final Map<String, Set<ByteString>> hostnameToPins = new LinkedHashMap();

        public Builder add(String str, String... strArr) {
            if (str != null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Set<ByteString> put = this.hostnameToPins.put(str, Collections.unmodifiableSet(linkedHashSet));
                if (put != null) {
                    linkedHashSet.addAll(put);
                }
                for (String str2 : strArr) {
                    if (str2.startsWith("sha1/")) {
                        ByteString decodeBase64 = ByteString.decodeBase64(str2.substring(5));
                        if (decodeBase64 != null) {
                            linkedHashSet.add(decodeBase64);
                        } else {
                            throw new IllegalArgumentException("pins must be base64: " + str2);
                        }
                    } else {
                        throw new IllegalArgumentException("pins must start with 'sha1/': " + str2);
                    }
                }
                return this;
            }
            throw new IllegalArgumentException("hostname == null");
        }

        public CertificatePinner build() {
            return new CertificatePinner(this);
        }
    }

    public static String pin(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return "sha1/" + sha1((X509Certificate) certificate).base64();
        }
        throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
    }

    private static ByteString sha1(X509Certificate x509Certificate) {
        return i.q(ByteString.of(x509Certificate.getPublicKey().getEncoded()));
    }

    public void check(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        Set<ByteString> findMatchingPins = findMatchingPins(str);
        if (findMatchingPins == null) {
            return;
        }
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            if (findMatchingPins.contains(sha1((X509Certificate) list.get(i9)))) {
                return;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Certificate pinning failure!");
        sb2.append("\n  Peer certificate chain:");
        int size2 = list.size();
        for (int i10 = 0; i10 < size2; i10++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i10);
            sb2.append("\n    ");
            sb2.append(pin(x509Certificate));
            sb2.append(": ");
            sb2.append(x509Certificate.getSubjectDN().getName());
        }
        sb2.append("\n  Pinned certificates for ");
        sb2.append(str);
        sb2.append(CertificateUtil.DELIMITER);
        for (ByteString byteString : findMatchingPins) {
            sb2.append("\n    sha1/");
            sb2.append(byteString.base64());
        }
        throw new SSLPeerUnverifiedException(sb2.toString());
    }

    Set<ByteString> findMatchingPins(String str) {
        int indexOf;
        Set<ByteString> set;
        Set<ByteString> set2 = this.hostnameToPins.get(str);
        if (str.indexOf(46) != str.lastIndexOf(46)) {
            set = this.hostnameToPins.get("*." + str.substring(indexOf + 1));
        } else {
            set = null;
        }
        if (set2 == null && set == null) {
            return null;
        }
        if (set2 == null || set == null) {
            return set2 != null ? set2 : set;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(set2);
        linkedHashSet.addAll(set);
        return linkedHashSet;
    }

    private CertificatePinner(Builder builder) {
        this.hostnameToPins = i.l(builder.hostnameToPins);
    }

    public void check(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        check(str, Arrays.asList(certificateArr));
    }
}
