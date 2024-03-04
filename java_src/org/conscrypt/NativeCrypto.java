package org.conscrypt;

import java.io.OutputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateParsingException;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;
import javax.crypto.BadPaddingException;
import org.conscrypt.NativeRef;
/* loaded from: classes7.dex */
public final class NativeCrypto {

    /* renamed from: a  reason: collision with root package name */
    private static final UnsatisfiedLinkError f56283a;

    /* renamed from: b  reason: collision with root package name */
    static final String[] f56284b;

    /* renamed from: c  reason: collision with root package name */
    static final Set<String> f56285c;

    /* renamed from: d  reason: collision with root package name */
    private static final Set<String> f56286d;

    /* renamed from: e  reason: collision with root package name */
    static final Set<String> f56287e;

    /* renamed from: f  reason: collision with root package name */
    private static final boolean f56288f;

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f56289g;

    /* renamed from: h  reason: collision with root package name */
    static final String[] f56290h;

    /* renamed from: i  reason: collision with root package name */
    static final String[] f56291i;

    /* renamed from: j  reason: collision with root package name */
    static final String[] f56292j;

    /* renamed from: k  reason: collision with root package name */
    static final String[] f56293k;

    /* renamed from: l  reason: collision with root package name */
    static final String[] f56294l;

    /* renamed from: m  reason: collision with root package name */
    static final String[] f56295m;

    /* renamed from: n  reason: collision with root package name */
    static final String[] f56296n;

    /* renamed from: o  reason: collision with root package name */
    private static final String[] f56297o;

    static {
        String[] strArr;
        try {
            o.c();
            clinit();
            e = null;
        } catch (UnsatisfiedLinkError e10) {
            e = e10;
        }
        f56283a = e;
        String[] strArr2 = {"TLS_AES_128_GCM_SHA256", "TLS_AES_256_GCM_SHA384", "TLS_CHACHA20_POLY1305_SHA256"};
        f56284b = strArr2;
        f56285c = new HashSet();
        f56286d = new HashSet();
        f56287e = new HashSet(Arrays.asList(strArr2));
        if (e == null) {
            String[] strArr3 = get_cipher_names("ALL:!DHE");
            int length = strArr3.length;
            if (length % 2 == 0) {
                int i9 = length / 2;
                f56289g = new String[i9 + 2];
                for (int i10 = 0; i10 < length; i10 += 2) {
                    String b10 = b(strArr3[i10]);
                    f56289g[i10 / 2] = b10;
                    f56285c.add(b10);
                    f56286d.add(strArr3[i10 + 1]);
                }
                String[] strArr4 = f56289g;
                strArr4[i9] = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV";
                strArr4[i9 + 1] = "TLS_FALLBACK_SCSV";
                f56288f = EVP_has_aes_hardware() == 1;
            } else {
                throw new IllegalArgumentException("Invalid cipher list returned by get_cipher_names");
            }
        } else {
            f56288f = false;
            f56289g = new String[0];
        }
        if (f56288f) {
            strArr = new String[]{"TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA"};
        } else {
            strArr = new String[]{"TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA"};
        }
        f56290h = strArr;
        f56291i = new String[]{"TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", "TLS_PSK_WITH_AES_128_CBC_SHA", "TLS_PSK_WITH_AES_256_CBC_SHA"};
        String[] strArr5 = {"TLSv1", "TLSv1.1", "TLSv1.2", "TLSv1.3"};
        f56292j = strArr5;
        String[] strArr6 = {"TLSv1", "TLSv1.1", "TLSv1.2"};
        f56293k = strArr6;
        f56294l = strArr6;
        f56295m = strArr6;
        f56296n = strArr5;
        f56297o = new String[]{"TLSv1", "TLSv1.1", "TLSv1.2", "TLSv1.3"};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void ASN1_TIME_to_Calendar(long j10, Calendar calendar) throws y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void BIO_free_all(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void EC_GROUP_clear_free(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] EC_GROUP_get_cofactor(NativeRef.EC_GROUP ec_group);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[][] EC_GROUP_get_curve(NativeRef.EC_GROUP ec_group);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String EC_GROUP_get_curve_name(NativeRef.EC_GROUP ec_group);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long EC_GROUP_get_generator(NativeRef.EC_GROUP ec_group);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] EC_GROUP_get_order(NativeRef.EC_GROUP ec_group);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long EC_KEY_get1_group(NativeRef.EVP_PKEY evp_pkey);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long EC_KEY_get_public_key(NativeRef.EVP_PKEY evp_pkey);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void EC_POINT_clear_free(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[][] EC_POINT_get_affine_coordinates(NativeRef.EC_GROUP ec_group, NativeRef.EC_POINT ec_point);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int EVP_PKEY_cmp(NativeRef.EVP_PKEY evp_pkey, NativeRef.EVP_PKEY evp_pkey2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void EVP_PKEY_free(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long EVP_PKEY_new_RSA(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[] bArr7, byte[] bArr8);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String EVP_PKEY_print_public(NativeRef.EVP_PKEY evp_pkey);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int EVP_PKEY_type(NativeRef.EVP_PKEY evp_pkey);

    static native int EVP_has_aes_hardware();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] EVP_marshal_public_key(NativeRef.EVP_PKEY evp_pkey);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long EVP_parse_public_key(byte[] bArr) throws y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long[] PEM_read_bio_PKCS7(long j10, int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long PEM_read_bio_X509(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void RAND_bytes(byte[] bArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int X509_cmp(long j10, OpenSSLX509Certificate openSSLX509Certificate, long j11, OpenSSLX509Certificate openSSLX509Certificate2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void X509_delete_ext(long j10, OpenSSLX509Certificate openSSLX509Certificate, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long X509_dup(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void X509_free(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] X509_get_ext_oid(long j10, OpenSSLX509Certificate openSSLX509Certificate, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] X509_get_issuer_name(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long X509_get_notAfter(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long X509_get_notBefore(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long X509_get_pubkey(long j10, OpenSSLX509Certificate openSSLX509Certificate) throws NoSuchAlgorithmException, InvalidKeyException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] X509_get_serialNumber(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] X509_get_subject_name(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long X509_get_version(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void X509_print_ex(long j10, long j11, OpenSSLX509Certificate openSSLX509Certificate, long j12, long j13);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void X509_verify(long j10, OpenSSLX509Certificate openSSLX509Certificate, NativeRef.EVP_PKEY evp_pkey) throws BadPaddingException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        UnsatisfiedLinkError unsatisfiedLinkError = f56283a;
        if (unsatisfiedLinkError != null) {
            throw unsatisfiedLinkError;
        }
    }

    static String b(String str) {
        return "TLS_RSA_WITH_3DES_EDE_CBC_SHA".equals(str) ? "SSL_RSA_WITH_3DES_EDE_CBC_SHA" : str;
    }

    private static native void clinit();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long create_BIO_InputStream(OpenSSLBIOInputStream openSSLBIOInputStream, boolean z10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long create_BIO_OutputStream(OutputStream outputStream);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long[] d2i_PKCS7_bio(long j10, int i9) throws y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long d2i_X509(byte[] bArr) throws y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native long d2i_X509_bio(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[][] get_RSA_public_params(NativeRef.EVP_PKEY evp_pkey);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native Object[][] get_X509_GENERAL_NAME_stack(long j10, OpenSSLX509Certificate openSSLX509Certificate, int i9) throws CertificateParsingException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] get_X509_cert_info_enc(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int get_X509_ex_flags(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean[] get_X509_ex_kusage(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native int get_X509_ex_pathlen(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String[] get_X509_ex_xkusage(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String[] get_X509_ext_oids(long j10, OpenSSLX509Certificate openSSLX509Certificate, int i9);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean[] get_X509_issuerUID(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String get_X509_pubkey_oid(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native String get_X509_sig_alg_oid(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] get_X509_sig_alg_parameter(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] get_X509_signature(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean[] get_X509_subjectUID(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    static native String[] get_cipher_names(String str);

    public static native byte[] get_ocsp_single_extension(byte[] bArr, String str, long j10, OpenSSLX509Certificate openSSLX509Certificate, long j11, OpenSSLX509Certificate openSSLX509Certificate2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] i2d_X509(long j10, OpenSSLX509Certificate openSSLX509Certificate);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native byte[] i2d_X509_PUBKEY(long j10, OpenSSLX509Certificate openSSLX509Certificate);
}
