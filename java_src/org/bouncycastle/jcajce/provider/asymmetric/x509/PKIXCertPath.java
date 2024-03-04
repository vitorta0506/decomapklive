package org.bouncycastle.jcajce.provider.asymmetric.x509;

import el.d;
import gj.c;
import gj.h;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.security.NoSuchProviderException;
import java.security.cert.CertPath;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import javax.security.auth.x500.X500Principal;
import org.bouncycastle.asn1.a1;
import org.bouncycastle.asn1.b1;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.f;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.k;
import org.bouncycastle.asn1.r;
import org.bouncycastle.asn1.s;
import org.bouncycastle.jcajce.util.a;
import org.bouncycastle.jcajce.util.b;
/* loaded from: classes7.dex */
public class PKIXCertPath extends CertPath {
    static final List certPathEncodings;
    private List certificates;
    private final b helper;

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add("PkiPath");
        arrayList.add("PEM");
        arrayList.add("PKCS7");
        certPathEncodings = Collections.unmodifiableList(arrayList);
    }

    PKIXCertPath(InputStream inputStream, String str) throws CertificateException {
        super("X.509");
        a aVar = new a();
        this.helper = aVar;
        try {
            if (!str.equalsIgnoreCase("PkiPath")) {
                if (!str.equalsIgnoreCase("PKCS7") && !str.equalsIgnoreCase("PEM")) {
                    throw new CertificateException("unsupported encoding: " + str);
                }
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
                this.certificates = new ArrayList();
                CertificateFactory a10 = aVar.a("X.509");
                while (true) {
                    Certificate generateCertificate = a10.generateCertificate(bufferedInputStream);
                    if (generateCertificate == null) {
                        break;
                    }
                    this.certificates.add(generateCertificate);
                }
            } else {
                r o10 = new j(inputStream).o();
                if (!(o10 instanceof s)) {
                    throw new CertificateException("input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath");
                }
                Enumeration N = ((s) o10).N();
                this.certificates = new ArrayList();
                CertificateFactory a11 = aVar.a("X.509");
                while (N.hasMoreElements()) {
                    this.certificates.add(0, a11.generateCertificate(new ByteArrayInputStream(((e) N.nextElement()).f().u("DER"))));
                }
            }
            this.certificates = sortCerts(this.certificates);
        } catch (IOException e10) {
            throw new CertificateException("IOException throw while decoding CertPath:\n" + e10.toString());
        } catch (NoSuchProviderException e11) {
            throw new CertificateException("BouncyCastle provider not found while trying to get a CertificateFactory:\n" + e11.toString());
        }
    }

    PKIXCertPath(List list) {
        super("X.509");
        this.helper = new a();
        this.certificates = sortCerts(new ArrayList(list));
    }

    private List sortCerts(List list) {
        boolean z10;
        boolean z11;
        if (list.size() < 2) {
            return list;
        }
        X500Principal issuerX500Principal = ((X509Certificate) list.get(0)).getIssuerX500Principal();
        int i9 = 1;
        while (true) {
            if (i9 == list.size()) {
                z10 = true;
                break;
            } else if (!issuerX500Principal.equals(((X509Certificate) list.get(i9)).getSubjectX500Principal())) {
                z10 = false;
                break;
            } else {
                issuerX500Principal = ((X509Certificate) list.get(i9)).getIssuerX500Principal();
                i9++;
            }
        }
        if (z10) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list);
        for (int i10 = 0; i10 < list.size(); i10++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i10);
            X500Principal subjectX500Principal = x509Certificate.getSubjectX500Principal();
            int i11 = 0;
            while (true) {
                if (i11 == list.size()) {
                    z11 = false;
                    break;
                } else if (((X509Certificate) list.get(i11)).getIssuerX500Principal().equals(subjectX500Principal)) {
                    z11 = true;
                    break;
                } else {
                    i11++;
                }
            }
            if (!z11) {
                arrayList.add(x509Certificate);
                list.remove(i10);
            }
        }
        if (arrayList.size() > 1) {
            return arrayList2;
        }
        for (int i12 = 0; i12 != arrayList.size(); i12++) {
            X500Principal issuerX500Principal2 = ((X509Certificate) arrayList.get(i12)).getIssuerX500Principal();
            int i13 = 0;
            while (true) {
                if (i13 < list.size()) {
                    X509Certificate x509Certificate2 = (X509Certificate) list.get(i13);
                    if (issuerX500Principal2.equals(x509Certificate2.getSubjectX500Principal())) {
                        arrayList.add(x509Certificate2);
                        list.remove(i13);
                        break;
                    }
                    i13++;
                }
            }
        }
        return list.size() > 0 ? arrayList2 : arrayList;
    }

    private r toASN1Object(X509Certificate x509Certificate) throws CertificateEncodingException {
        try {
            return new j(x509Certificate.getEncoded()).o();
        } catch (Exception e10) {
            throw new CertificateEncodingException("Exception while encoding certificate: " + e10.toString());
        }
    }

    private byte[] toDEREncoded(e eVar) throws CertificateEncodingException {
        try {
            return eVar.f().u("DER");
        } catch (IOException e10) {
            throw new CertificateEncodingException("Exception thrown: " + e10);
        }
    }

    @Override // java.security.cert.CertPath
    public List getCertificates() {
        return Collections.unmodifiableList(new ArrayList(this.certificates));
    }

    @Override // java.security.cert.CertPath
    public byte[] getEncoded() throws CertificateEncodingException {
        Iterator encodings = getEncodings();
        if (encodings.hasNext()) {
            Object next = encodings.next();
            if (next instanceof String) {
                return getEncoded((String) next);
            }
            return null;
        }
        return null;
    }

    @Override // java.security.cert.CertPath
    public byte[] getEncoded(String str) throws CertificateEncodingException {
        if (str.equalsIgnoreCase("PkiPath")) {
            f fVar = new f();
            List list = this.certificates;
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                fVar.a(toASN1Object((X509Certificate) listIterator.previous()));
            }
            return toDEREncoded(new a1(fVar));
        }
        int i9 = 0;
        if (str.equalsIgnoreCase("PKCS7")) {
            gj.a aVar = new gj.a(c.f40097b1, null);
            f fVar2 = new f();
            while (i9 != this.certificates.size()) {
                fVar2.a(toASN1Object((X509Certificate) this.certificates.get(i9)));
                i9++;
            }
            return toDEREncoded(new gj.a(c.f40100c1, new h(new k(1L), new b1(), aVar, new b1(fVar2), null, new b1())));
        } else if (!str.equalsIgnoreCase("PEM")) {
            throw new CertificateEncodingException("unsupported encoding: " + str);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            d dVar = new d(new OutputStreamWriter(byteArrayOutputStream));
            while (i9 != this.certificates.size()) {
                try {
                    dVar.b(new el.b("CERTIFICATE", ((X509Certificate) this.certificates.get(i9)).getEncoded()));
                    i9++;
                } catch (Exception unused) {
                    throw new CertificateEncodingException("can't encode certificate for PEM encoded path");
                }
            }
            dVar.close();
            return byteArrayOutputStream.toByteArray();
        }
    }

    @Override // java.security.cert.CertPath
    public Iterator getEncodings() {
        return certPathEncodings.iterator();
    }
}
