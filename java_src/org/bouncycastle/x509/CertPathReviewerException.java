package org.bouncycastle.x509;

import java.security.cert.CertPath;
import org.bouncycastle.i18n.LocalizedException;
import org.bouncycastle.i18n.a;
/* loaded from: classes7.dex */
public class CertPathReviewerException extends LocalizedException {
    private CertPath certPath;
    private int index;

    public CertPathReviewerException(a aVar) {
        super(aVar);
        this.index = -1;
        this.certPath = null;
    }

    public CertPathReviewerException(a aVar, Throwable th2) {
        super(aVar, th2);
        this.index = -1;
        this.certPath = null;
    }

    public CertPathReviewerException(a aVar, Throwable th2, CertPath certPath, int i9) {
        super(aVar, th2);
        this.index = -1;
        this.certPath = null;
        if (certPath == null || i9 == -1) {
            throw new IllegalArgumentException();
        }
        if (i9 < -1 || i9 >= certPath.getCertificates().size()) {
            throw new IndexOutOfBoundsException();
        }
        this.certPath = certPath;
        this.index = i9;
    }

    public CertPathReviewerException(a aVar, CertPath certPath, int i9) {
        super(aVar);
        this.index = -1;
        this.certPath = null;
        if (certPath == null || i9 == -1) {
            throw new IllegalArgumentException();
        }
        if (i9 < -1 || i9 >= certPath.getCertificates().size()) {
            throw new IndexOutOfBoundsException();
        }
        this.certPath = certPath;
        this.index = i9;
    }

    public CertPath getCertPath() {
        return this.certPath;
    }

    public int getIndex() {
        return this.index;
    }
}
