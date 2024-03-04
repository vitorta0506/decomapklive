package org.bouncycastle.pqc.jcajce.provider;

import gj.d;
import java.io.IOException;
import java.security.AccessController;
import java.security.PrivateKey;
import java.security.PrivilegedAction;
import java.security.Provider;
import java.security.PublicKey;
import java.util.HashMap;
import java.util.Map;
import oj.v;
import org.bouncycastle.asn1.n;
/* loaded from: classes7.dex */
public class BouncyCastlePQCProvider extends Provider implements zj.a {
    private static final String ALGORITHM_PACKAGE = "org.bouncycastle.pqc.jcajce.provider.";
    public static final zj.b CONFIGURATION = null;
    public static String PROVIDER_NAME = "BCPQC";
    private static String info = "BouncyCastle Post-Quantum Security Provider v1.67";
    private static final Map keyInfoConverters = new HashMap();
    private static final String[] ALGORITHMS = {"Rainbow", "McEliece", "SPHINCS", "LMS", "NH", "XMSS", "QTESLA"};

    /* loaded from: classes7.dex */
    class a implements PrivilegedAction {
        a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            BouncyCastlePQCProvider.this.setup();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class b implements PrivilegedAction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56253a;

        b(String str) {
            this.f56253a = str;
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            try {
                return Class.forName(this.f56253a);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public BouncyCastlePQCProvider() {
        super(PROVIDER_NAME, 1.67d, info);
        AccessController.doPrivileged(new a());
    }

    private static ak.b getAsymmetricKeyInfoConverter(n nVar) {
        ak.b bVar;
        Map map = keyInfoConverters;
        synchronized (map) {
            bVar = (ak.b) map.get(nVar);
        }
        return bVar;
    }

    public static PrivateKey getPrivateKey(d dVar) throws IOException {
        ak.b asymmetricKeyInfoConverter = getAsymmetricKeyInfoConverter(dVar.B().x());
        if (asymmetricKeyInfoConverter == null) {
            return null;
        }
        return asymmetricKeyInfoConverter.a(dVar);
    }

    public static PublicKey getPublicKey(v vVar) throws IOException {
        ak.b asymmetricKeyInfoConverter = getAsymmetricKeyInfoConverter(vVar.x().x());
        if (asymmetricKeyInfoConverter == null) {
            return null;
        }
        return asymmetricKeyInfoConverter.b(vVar);
    }

    private void loadAlgorithms(String str, String[] strArr) {
        for (int i9 = 0; i9 != strArr.length; i9++) {
            Class loadClass = loadClass(BouncyCastlePQCProvider.class, str + strArr[i9] + "$Mappings");
            if (loadClass != null) {
                try {
                    ((ak.a) loadClass.newInstance()).a(this);
                } catch (Exception e10) {
                    throw new InternalError("cannot create instance of " + str + strArr[i9] + "$Mappings : " + e10);
                }
            }
        }
    }

    static Class loadClass(Class cls, String str) {
        try {
            ClassLoader classLoader = cls.getClassLoader();
            return classLoader != null ? classLoader.loadClass(str) : (Class) AccessController.doPrivileged(new b(str));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setup() {
        loadAlgorithms(ALGORITHM_PACKAGE, ALGORITHMS);
    }

    public void addAlgorithm(String str, String str2) {
        if (!containsKey(str)) {
            put(str, str2);
            return;
        }
        throw new IllegalStateException("duplicate provider key (" + str + ") found");
    }

    public void addAlgorithm(String str, n nVar, String str2) {
        if (!containsKey(str + "." + str2)) {
            throw new IllegalStateException("primary key (" + str + "." + str2 + ") not found");
        }
        addAlgorithm(str + "." + nVar, str2);
        addAlgorithm(str + ".OID." + nVar, str2);
    }

    public void addAttributes(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            String str3 = str + " " + str2;
            if (containsKey(str3)) {
                throw new IllegalStateException("duplicate provider attribute key (" + str3 + ") found");
            }
            put(str3, map.get(str2));
        }
    }

    public void addKeyInfoConverter(n nVar, ak.b bVar) {
        Map map = keyInfoConverters;
        synchronized (map) {
            map.put(nVar, bVar);
        }
    }

    public ak.b getKeyInfoConverter(n nVar) {
        return (ak.b) keyInfoConverters.get(nVar);
    }

    public boolean hasAlgorithm(String str, String str2) {
        if (!containsKey(str + "." + str2)) {
            if (!containsKey("Alg.Alias." + str + "." + str2)) {
                return false;
            }
        }
        return true;
    }

    public void setParameter(String str, Object obj) {
        synchronized (CONFIGURATION) {
        }
    }
}
