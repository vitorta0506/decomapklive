package io.jsonwebtoken.impl.crypto;

import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.lang.Assert;
import io.jsonwebtoken.lang.Strings;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.ECGenParameterSpec;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public abstract class EllipticCurveProvider extends SignatureProvider {
    private static final Map<SignatureAlgorithm, String> EC_CURVE_NAMES = createEcCurveNames();

    /* renamed from: io.jsonwebtoken.impl.crypto.EllipticCurveProvider$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$jsonwebtoken$SignatureAlgorithm;

        static {
            int[] iArr = new int[SignatureAlgorithm.values().length];
            $SwitchMap$io$jsonwebtoken$SignatureAlgorithm = iArr;
            try {
                iArr[SignatureAlgorithm.ES256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$jsonwebtoken$SignatureAlgorithm[SignatureAlgorithm.ES384.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$jsonwebtoken$SignatureAlgorithm[SignatureAlgorithm.ES512.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EllipticCurveProvider(SignatureAlgorithm signatureAlgorithm, Key key) {
        super(signatureAlgorithm, key);
        Assert.isTrue(signatureAlgorithm.isEllipticCurve(), "SignatureAlgorithm must be an Elliptic Curve algorithm.");
    }

    private static Map<SignatureAlgorithm, String> createEcCurveNames() {
        HashMap hashMap = new HashMap();
        hashMap.put(SignatureAlgorithm.ES256, "secp256r1");
        hashMap.put(SignatureAlgorithm.ES384, "secp384r1");
        hashMap.put(SignatureAlgorithm.ES512, "secp521r1");
        return hashMap;
    }

    public static KeyPair generateKeyPair() {
        return generateKeyPair(SignatureAlgorithm.ES512);
    }

    public static int getSignatureByteArrayLength(SignatureAlgorithm signatureAlgorithm) throws JwtException {
        int i9 = AnonymousClass1.$SwitchMap$io$jsonwebtoken$SignatureAlgorithm[signatureAlgorithm.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 == 3) {
                    return 132;
                }
                throw new JwtException("Unsupported Algorithm: " + signatureAlgorithm.name());
            }
            return 96;
        }
        return 64;
    }

    public static byte[] transcodeSignatureToConcat(byte[] bArr, int i9) throws JwtException {
        int i10;
        if (bArr.length >= 8 && bArr[0] == 48) {
            if (bArr[1] > 0) {
                i10 = 2;
            } else if (bArr[1] != -127) {
                throw new JwtException("Invalid ECDSA signature format");
            } else {
                i10 = 3;
            }
            int i11 = bArr[i10 + 1];
            int i12 = i11;
            while (i12 > 0 && bArr[((i10 + 2) + i11) - i12] == 0) {
                i12--;
            }
            int i13 = i10 + 2 + i11;
            int i14 = bArr[i13 + 1];
            int i15 = i14;
            while (i15 > 0 && bArr[((i13 + 2) + i14) - i15] == 0) {
                i15--;
            }
            int max = Math.max(Math.max(i12, i15), i9 / 2);
            int i16 = i10 - 1;
            if ((bArr[i16] & 255) == bArr.length - i10 && (bArr[i16] & 255) == i11 + 2 + 2 + i14 && bArr[i10] == 2 && bArr[i13] == 2) {
                int i17 = max * 2;
                byte[] bArr2 = new byte[i17];
                System.arraycopy(bArr, i13 - i12, bArr2, max - i12, i12);
                System.arraycopy(bArr, ((i13 + 2) + i14) - i15, bArr2, i17 - i15, i15);
                return bArr2;
            }
            throw new JwtException("Invalid ECDSA signature format");
        }
        throw new JwtException("Invalid ECDSA signature format");
    }

    public static byte[] transcodeSignatureToDER(byte[] bArr) throws JwtException {
        byte[] bArr2;
        int length = bArr.length / 2;
        int i9 = length;
        while (i9 > 0 && bArr[length - i9] == 0) {
            i9--;
        }
        int i10 = length - i9;
        int i11 = bArr[i10] < 0 ? i9 + 1 : i9;
        int i12 = length;
        while (i12 > 0 && bArr[(length * 2) - i12] == 0) {
            i12--;
        }
        int i13 = (length * 2) - i12;
        int i14 = bArr[i13] < 0 ? i12 + 1 : i12;
        int i15 = i11 + 2 + 2 + i14;
        if (i15 <= 255) {
            int i16 = 1;
            if (i15 < 128) {
                bArr2 = new byte[i11 + 4 + 2 + i14];
            } else {
                bArr2 = new byte[i11 + 5 + 2 + i14];
                bArr2[1] = -127;
                i16 = 2;
            }
            bArr2[0] = 48;
            int i17 = i16 + 1;
            bArr2[i16] = (byte) i15;
            int i18 = i17 + 1;
            bArr2[i17] = 2;
            bArr2[i18] = (byte) i11;
            int i19 = i18 + 1 + i11;
            System.arraycopy(bArr, i10, bArr2, i19 - i9, i9);
            int i20 = i19 + 1;
            bArr2[i19] = 2;
            bArr2[i20] = (byte) i14;
            System.arraycopy(bArr, i13, bArr2, ((i20 + 1) + i14) - i12, i12);
            return bArr2;
        }
        throw new JwtException("Invalid ECDSA signature format");
    }

    public static KeyPair generateKeyPair(SignatureAlgorithm signatureAlgorithm) {
        return generateKeyPair(signatureAlgorithm, SignatureProvider.DEFAULT_SECURE_RANDOM);
    }

    public static KeyPair generateKeyPair(SignatureAlgorithm signatureAlgorithm, SecureRandom secureRandom) {
        return generateKeyPair("EC", null, signatureAlgorithm, secureRandom);
    }

    public static KeyPair generateKeyPair(String str, String str2, SignatureAlgorithm signatureAlgorithm, SecureRandom secureRandom) {
        KeyPairGenerator keyPairGenerator;
        Assert.notNull(signatureAlgorithm, "SignatureAlgorithm argument cannot be null.");
        Assert.isTrue(signatureAlgorithm.isEllipticCurve(), "SignatureAlgorithm argument must represent an Elliptic Curve algorithm.");
        try {
            if (Strings.hasText(str2)) {
                keyPairGenerator = KeyPairGenerator.getInstance(str, str2);
            } else {
                keyPairGenerator = KeyPairGenerator.getInstance(str);
            }
            keyPairGenerator.initialize(new ECGenParameterSpec(EC_CURVE_NAMES.get(signatureAlgorithm)), secureRandom);
            return keyPairGenerator.generateKeyPair();
        } catch (Exception e10) {
            throw new IllegalStateException("Unable to generate Elliptic Curve KeyPair: " + e10.getMessage(), e10);
        }
    }
}
