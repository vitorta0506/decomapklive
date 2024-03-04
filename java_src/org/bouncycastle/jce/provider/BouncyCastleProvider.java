package org.bouncycastle.jce.provider;

import com.tencent.xmagic.license.RSAUtils;
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
import pk.e;
/* loaded from: classes7.dex */
public final class BouncyCastleProvider extends Provider implements zj.a {
    private static final String ASYMMETRIC_PACKAGE = "org.bouncycastle.jcajce.provider.asymmetric.";
    private static final String DIGEST_PACKAGE = "org.bouncycastle.jcajce.provider.digest.";
    private static final String KEYSTORE_PACKAGE = "org.bouncycastle.jcajce.provider.keystore.";
    private static final String SECURE_RANDOM_PACKAGE = "org.bouncycastle.jcajce.provider.drbg.";
    private static final String SYMMETRIC_PACKAGE = "org.bouncycastle.jcajce.provider.symmetric.";
    private static String info = "BouncyCastle Security Provider v1.67";
    public static final zj.b CONFIGURATION = new org.bouncycastle.jce.provider.a();
    private static final Map keyInfoConverters = new HashMap();
    private static final Class revChkClass = org.bouncycastle.jcajce.provider.symmetric.util.a.a(BouncyCastleProvider.class, "java.security.cert.PKIXRevocationChecker");
    private static final String[] SYMMETRIC_GENERIC = {"PBEPBKDF1", "PBEPBKDF2", "PBEPKCS12", "TLSKDF", "SCRYPT"};
    private static final String[] SYMMETRIC_MACS = {"SipHash", "SipHash128", "Poly1305"};
    private static final String[] SYMMETRIC_CIPHERS = {"AES", "ARC4", "ARIA", "Blowfish", "Camellia", "CAST5", "CAST6", "ChaCha", "DES", "DESede", "GOST28147", "Grainv1", "Grain128", "HC128", "HC256", "IDEA", "Noekeon", "RC2", "RC5", "RC6", "Rijndael", "Salsa20", "SEED", "Serpent", "Shacal2", "Skipjack", "SM4", "TEA", "Twofish", "Threefish", "VMPC", "VMPCKSA3", "XTEA", "XSalsa20", "OpenSSLPBKDF", "DSTU7624", "GOST3412_2015", "Zuc"};
    private static final String[] ASYMMETRIC_GENERIC = {"X509", "IES", "COMPOSITE"};
    private static final String[] ASYMMETRIC_CIPHERS = {"DSA", "DH", "EC", RSAUtils.RSA, "GOST", "ECGOST", "ElGamal", "DSTU4145", "GM", "EdEC"};
    private static final String[] DIGESTS = {"GOST3411", "Keccak", "MD2", "MD4", "MD5", "SHA1", "RIPEMD128", "RIPEMD160", "RIPEMD256", "RIPEMD320", "SHA224", "SHA256", "SHA384", "SHA512", "SHA3", "Skein", "SM3", "Tiger", "Whirlpool", "Blake2b", "Blake2s", "DSTU7564", "Haraka"};
    public static final String PROVIDER_NAME = "BC";
    private static final String[] KEYSTORES = {PROVIDER_NAME, "BCFKS", "PKCS12"};
    private static final String[] SECURE_RANDOMS = {"DRBG"};

    /* loaded from: classes7.dex */
    class a implements PrivilegedAction {
        a() {
        }

        @Override // java.security.PrivilegedAction
        public Object run() {
            BouncyCastleProvider.this.setup();
            return null;
        }
    }

    public BouncyCastleProvider() {
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

    public static PrivateKey getPrivateKey(gj.d dVar) throws IOException {
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
            Class a10 = org.bouncycastle.jcajce.provider.symmetric.util.a.a(BouncyCastleProvider.class, str + strArr[i9] + "$Mappings");
            if (a10 != null) {
                try {
                    ((ak.a) a10.newInstance()).a(this);
                } catch (Exception e10) {
                    throw new InternalError("cannot create instance of " + str + strArr[i9] + "$Mappings : " + e10);
                }
            }
        }
    }

    private void loadPQCKeys() {
        addKeyInfoConverter(e.f57030r, new org.bouncycastle.pqc.jcajce.provider.sphincs.a());
        addKeyInfoConverter(e.f57034v, new org.bouncycastle.pqc.jcajce.provider.newhope.a());
        addKeyInfoConverter(e.f57035w, new org.bouncycastle.pqc.jcajce.provider.xmss.b());
        addKeyInfoConverter(cj.a.f1750a, new org.bouncycastle.pqc.jcajce.provider.xmss.b());
        addKeyInfoConverter(e.F, new org.bouncycastle.pqc.jcajce.provider.xmss.c());
        addKeyInfoConverter(cj.a.f1751b, new org.bouncycastle.pqc.jcajce.provider.xmss.c());
        addKeyInfoConverter(e.f57025m, new org.bouncycastle.pqc.jcajce.provider.mceliece.b());
        addKeyInfoConverter(e.f57026n, new org.bouncycastle.pqc.jcajce.provider.mceliece.a());
        addKeyInfoConverter(e.f57013a, new zk.a());
        addKeyInfoConverter(e.X, new org.bouncycastle.pqc.jcajce.provider.qtesla.a());
        addKeyInfoConverter(e.Y, new org.bouncycastle.pqc.jcajce.provider.qtesla.a());
        addKeyInfoConverter(gj.c.Q1, new org.bouncycastle.pqc.jcajce.provider.lms.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setup() {
        String str;
        String str2;
        loadAlgorithms(DIGEST_PACKAGE, DIGESTS);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_GENERIC);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_MACS);
        loadAlgorithms(SYMMETRIC_PACKAGE, SYMMETRIC_CIPHERS);
        loadAlgorithms(ASYMMETRIC_PACKAGE, ASYMMETRIC_GENERIC);
        loadAlgorithms(ASYMMETRIC_PACKAGE, ASYMMETRIC_CIPHERS);
        loadAlgorithms(KEYSTORE_PACKAGE, KEYSTORES);
        loadAlgorithms(SECURE_RANDOM_PACKAGE, SECURE_RANDOMS);
        loadPQCKeys();
        put("X509Store.CERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertCollection");
        put("X509Store.ATTRIBUTECERTIFICATE/COLLECTION", "org.bouncycastle.jce.provider.X509StoreAttrCertCollection");
        put("X509Store.CRL/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCRLCollection");
        put("X509Store.CERTIFICATEPAIR/COLLECTION", "org.bouncycastle.jce.provider.X509StoreCertPairCollection");
        put("X509Store.CERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCerts");
        put("X509Store.CRL/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCRLs");
        put("X509Store.ATTRIBUTECERTIFICATE/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts");
        put("X509Store.CERTIFICATEPAIR/LDAP", "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs");
        put("X509StreamParser.CERTIFICATE", "org.bouncycastle.jce.provider.X509CertParser");
        put("X509StreamParser.ATTRIBUTECERTIFICATE", "org.bouncycastle.jce.provider.X509AttrCertParser");
        put("X509StreamParser.CRL", "org.bouncycastle.jce.provider.X509CRLParser");
        put("X509StreamParser.CERTIFICATEPAIR", "org.bouncycastle.jce.provider.X509CertPairParser");
        put("Cipher.BROKENPBEWITHMD5ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES");
        put("Cipher.BROKENPBEWITHSHA1ANDDES", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES");
        put("Cipher.OLDPBEWITHSHAANDTWOFISH-CBC", "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish");
        Class cls = revChkClass;
        put("CertPathValidator.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi");
        put("CertPathBuilder.RFC3281", "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi");
        if (cls != null) {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8";
        } else {
            str = "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi";
            put("CertPathValidator.RFC3280", "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi");
            str2 = "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi";
        }
        put("CertPathBuilder.RFC3280", str2);
        put("CertPathValidator.PKIX", str);
        put("CertPathBuilder.PKIX", str2);
        put("CertStore.Collection", "org.bouncycastle.jce.provider.CertStoreCollectionSpi");
        put("CertStore.LDAP", "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi");
        put("CertStore.Multi", "org.bouncycastle.jce.provider.MultiCertStoreSpi");
        put("Alg.Alias.CertStore.X509LDAP", "LDAP");
    }

    public void addAlgorithm(String str, String str2) {
        if (!containsKey(str)) {
            put(str, str2);
            return;
        }
        throw new IllegalStateException("duplicate provider key (" + str + ") found");
    }

    public void addAlgorithm(String str, n nVar, String str2) {
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
        zj.b bVar = CONFIGURATION;
        synchronized (bVar) {
            ((org.bouncycastle.jce.provider.a) bVar).d(str, obj);
        }
    }
}
