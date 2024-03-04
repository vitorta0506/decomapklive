package org.bouncycastle.jcajce.util;

import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
/* loaded from: classes7.dex */
public interface b {
    CertificateFactory a(String str) throws NoSuchProviderException, CertificateException;
}
