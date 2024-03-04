package org.bouncycastle.jcajce.util;

import java.security.Provider;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
/* loaded from: classes7.dex */
public class c implements b {

    /* renamed from: a  reason: collision with root package name */
    protected final Provider f56086a;

    public c(Provider provider) {
        this.f56086a = provider;
    }

    @Override // org.bouncycastle.jcajce.util.b
    public CertificateFactory a(String str) throws CertificateException {
        return CertificateFactory.getInstance(str, this.f56086a);
    }
}
