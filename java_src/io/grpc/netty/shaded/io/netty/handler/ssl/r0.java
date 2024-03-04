package io.grpc.netty.shaded.io.netty.handler.ssl;

import com.tencent.xmagic.license.RSAUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.X509ExtendedKeyManager;
import javax.net.ssl.X509KeyManager;
import javax.security.auth.x500.X500Principal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class r0 {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, String> f44742b;

    /* renamed from: a  reason: collision with root package name */
    private final s0 f44743a;

    static {
        HashMap hashMap = new HashMap();
        f44742b = hashMap;
        hashMap.put(RSAUtils.RSA, RSAUtils.RSA);
        hashMap.put("DHE_RSA", RSAUtils.RSA);
        hashMap.put("ECDHE_RSA", RSAUtils.RSA);
        hashMap.put("ECDHE_ECDSA", "EC");
        hashMap.put("ECDH_RSA", "EC_RSA");
        hashMap.put("ECDH_ECDSA", "EC_EC");
        hashMap.put("DH_RSA", "DH_RSA");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public r0(s0 s0Var) {
        this.f44743a = s0Var;
    }

    private String a(k1 k1Var, String[] strArr, X500Principal[] x500PrincipalArr) {
        X509KeyManager c10 = this.f44743a.c();
        if (c10 instanceof X509ExtendedKeyManager) {
            return ((X509ExtendedKeyManager) c10).chooseEngineClientAlias(strArr, x500PrincipalArr, k1Var);
        }
        return c10.chooseClientAlias(strArr, x500PrincipalArr, null);
    }

    private String b(k1 k1Var, String str) {
        X509KeyManager c10 = this.f44743a.c();
        if (c10 instanceof X509ExtendedKeyManager) {
            return ((X509ExtendedKeyManager) c10).chooseEngineServerAlias(str, null, k1Var);
        }
        return c10.chooseServerAlias(str, null, null);
    }

    private void c(k1 k1Var, String str) throws SSLException {
        io.grpc.netty.shaded.io.netty.util.s sVar = null;
        try {
            try {
                q0 a10 = this.f44743a.a(k1Var.f44655v, str);
                if (a10 != null) {
                    k1Var.h0(a10);
                    a10.release();
                } else if (a10 != null) {
                    a10.release();
                }
            } catch (SSLException e10) {
                throw e10;
            } catch (Exception e11) {
                throw new SSLException(e11);
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                sVar.release();
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(k1 k1Var, String[] strArr, X500Principal[] x500PrincipalArr) throws SSLException {
        String a10 = a(k1Var, strArr, x500PrincipalArr);
        if (a10 != null) {
            c(k1Var, a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(k1 k1Var) throws SSLException {
        String b10;
        String[] v10 = k1Var.v();
        if (v10.length != 0) {
            HashSet hashSet = new HashSet(f44742b.size());
            for (String str : v10) {
                String str2 = f44742b.get(str);
                if (str2 != null && hashSet.add(str2) && (b10 = b(k1Var, str2)) != null) {
                    c(k1Var, b10);
                    return;
                }
            }
            throw new SSLHandshakeException("Unable to find key material for auth method(s): " + Arrays.toString(v10));
        }
        throw new SSLHandshakeException("Unable to find key material");
    }
}
