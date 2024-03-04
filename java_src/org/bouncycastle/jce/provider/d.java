package org.bouncycastle.jce.provider;

import gj.g;
import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.PSSParameterSpec;
import org.bouncycastle.asn1.e;
import org.bouncycastle.asn1.l;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.s;
import org.bouncycastle.asn1.u0;
import pj.o;
/* loaded from: classes7.dex */
class d {

    /* renamed from: a  reason: collision with root package name */
    private static final l f56126a = u0.f55980a;

    private static String a(n nVar) {
        return gj.c.T0.F(nVar) ? "MD5" : fj.b.f39757i.F(nVar) ? "SHA1" : ej.b.f39455f.F(nVar) ? "SHA224" : ej.b.f39449c.F(nVar) ? "SHA256" : ej.b.f39451d.F(nVar) ? "SHA384" : ej.b.f39453e.F(nVar) ? "SHA512" : jj.b.f53277c.F(nVar) ? "RIPEMD128" : jj.b.f53276b.F(nVar) ? "RIPEMD160" : jj.b.f53278d.F(nVar) ? "RIPEMD256" : zi.a.f60551b.F(nVar) ? "GOST3411" : nVar.O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(oj.a aVar) {
        e B = aVar.B();
        if (B != null && !f56126a.B(B)) {
            if (aVar.x().F(gj.c.f40151u0)) {
                g y10 = g.y(B);
                return a(y10.x().x()) + "withRSAandMGF1";
            } else if (aVar.x().F(o.f56985w3)) {
                s K = s.K(B);
                return a(n.P(K.M(0))) + "withECDSA";
            }
        }
        return aVar.x().O();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Signature signature, e eVar) throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
        if (eVar == null || f56126a.B(eVar)) {
            return;
        }
        AlgorithmParameters algorithmParameters = AlgorithmParameters.getInstance(signature.getAlgorithm(), signature.getProvider());
        try {
            algorithmParameters.init(eVar.f().getEncoded());
            if (signature.getAlgorithm().endsWith("MGF1")) {
                try {
                    signature.setParameter(algorithmParameters.getParameterSpec(PSSParameterSpec.class));
                } catch (GeneralSecurityException e10) {
                    throw new SignatureException("Exception extracting parameters: " + e10.getMessage());
                }
            }
        } catch (IOException e11) {
            throw new SignatureException("IOException decoding parameters: " + e11.getMessage());
        }
    }
}
