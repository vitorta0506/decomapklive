package io.jsonwebtoken.impl;

import io.jsonwebtoken.ClaimJwtException;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Clock;
import io.jsonwebtoken.CompressionCodec;
import io.jsonwebtoken.CompressionCodecResolver;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Header;
import io.jsonwebtoken.IncorrectClaimException;
import io.jsonwebtoken.InvalidClaimException;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.JwsHeader;
import io.jsonwebtoken.Jwt;
import io.jsonwebtoken.JwtHandler;
import io.jsonwebtoken.JwtHandlerAdapter;
import io.jsonwebtoken.JwtParser;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.MissingClaimException;
import io.jsonwebtoken.PrematureJwtException;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.SigningKeyResolver;
import io.jsonwebtoken.UnsupportedJwtException;
import io.jsonwebtoken.impl.compression.DefaultCompressionCodecResolver;
import io.jsonwebtoken.impl.crypto.DefaultJwtSignatureValidator;
import io.jsonwebtoken.impl.crypto.JwtSignatureValidator;
import io.jsonwebtoken.impl.io.InstanceLocator;
import io.jsonwebtoken.io.Decoder;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.io.DeserializationException;
import io.jsonwebtoken.io.Deserializer;
import io.jsonwebtoken.lang.Assert;
import io.jsonwebtoken.lang.Classes;
import io.jsonwebtoken.lang.DateFormats;
import io.jsonwebtoken.lang.Objects;
import io.jsonwebtoken.lang.Strings;
import io.jsonwebtoken.security.InvalidKeyException;
import io.jsonwebtoken.security.SignatureException;
import io.jsonwebtoken.security.WeakKeyException;
import java.security.Key;
import java.util.Date;
import java.util.Map;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes6.dex */
public class DefaultJwtParser implements JwtParser {
    private static final int MILLISECONDS_PER_SECOND = 1000;
    private Deserializer<Map<String, ?>> deserializer;
    private Key key;
    private byte[] keyBytes;
    private SigningKeyResolver signingKeyResolver;
    private CompressionCodecResolver compressionCodecResolver = new DefaultCompressionCodecResolver();
    private Decoder<String, byte[]> base64UrlDecoder = Decoders.BASE64URL;
    private Claims expectedClaims = new DefaultClaims();
    private Clock clock = DefaultClock.INSTANCE;
    private long allowedClockSkewMillis = 0;

    private static Object normalize(Object obj) {
        return obj instanceof Integer ? Long.valueOf(((Integer) obj).longValue()) : obj;
    }

    private void validateExpectedClaims(Header header, Claims claims) {
        for (String str : this.expectedClaims.keySet()) {
            Object normalize = normalize(this.expectedClaims.get(str));
            Object normalize2 = normalize(claims.get(str));
            if (normalize instanceof Date) {
                try {
                    normalize2 = claims.get(str, Date.class);
                } catch (Exception unused) {
                    throw new IncorrectClaimException(header, claims, "JWT Claim '" + str + "' was expected to be a Date, but its value cannot be converted to a Date using current heuristics.  Value: " + normalize2);
                }
            }
            InvalidClaimException invalidClaimException = null;
            if (normalize2 == null) {
                invalidClaimException = new MissingClaimException(header, claims, String.format(ClaimJwtException.MISSING_EXPECTED_CLAIM_MESSAGE_TEMPLATE, str, normalize));
                continue;
            } else if (normalize.equals(normalize2)) {
                continue;
            } else {
                invalidClaimException = new IncorrectClaimException(header, claims, String.format(ClaimJwtException.INCORRECT_EXPECTED_CLAIM_MESSAGE_TEMPLATE, str, normalize, normalize2));
                continue;
            }
            if (invalidClaimException != null) {
                invalidClaimException.setClaimName(str);
                invalidClaimException.setClaimValue(normalize);
                throw invalidClaimException;
            }
        }
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser base64UrlDecodeWith(Decoder<String, byte[]> decoder) {
        Assert.notNull(decoder, "base64UrlDecoder cannot be null.");
        this.base64UrlDecoder = decoder;
        return this;
    }

    protected JwtSignatureValidator createSignatureValidator(SignatureAlgorithm signatureAlgorithm, Key key) {
        return new DefaultJwtSignatureValidator(signatureAlgorithm, key, this.base64UrlDecoder);
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser deserializeJsonWith(Deserializer<Map<String, ?>> deserializer) {
        Assert.notNull(deserializer, "deserializer cannot be null.");
        this.deserializer = deserializer;
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public boolean isSigned(String str) {
        if (str == null) {
            return false;
        }
        int i9 = 0;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (i9 == 2) {
                return (Character.isWhitespace(charAt) || charAt == '.') ? false : true;
            }
            if (charAt == '.') {
                i9++;
            }
        }
        return false;
    }

    @Override // io.jsonwebtoken.JwtParser
    public Jwt parse(String str) throws ExpiredJwtException, MalformedJwtException, SignatureException {
        CompressionCodec compressionCodec;
        JwsHeader jwsHeader;
        DefaultClaims defaultClaims;
        String str2;
        long j10;
        SigningKeyResolver signingKeyResolver;
        if (this.deserializer == null) {
            this.deserializer = (Deserializer) ((InstanceLocator) Classes.newInstance("io.jsonwebtoken.impl.io.RuntimeClasspathDeserializerLocator")).getInstance();
        }
        Assert.hasText(str, "JWT String argument cannot be null or empty.");
        StringBuilder sb2 = new StringBuilder(128);
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        SignatureAlgorithm signatureAlgorithm = null;
        String str3 = null;
        String str4 = null;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i9 >= length) {
                break;
            }
            char c10 = charArray[i9];
            if (c10 == '.') {
                CharSequence clean = Strings.clean(sb2);
                String charSequence = clean != null ? clean.toString() : null;
                if (i10 == 0) {
                    str4 = charSequence;
                } else if (i10 == 1) {
                    str3 = charSequence;
                }
                i10++;
                sb2.setLength(0);
            } else {
                sb2.append(c10);
            }
            i9++;
        }
        if (i10 == 2) {
            String sb3 = sb2.length() > 0 ? sb2.toString() : null;
            if (str3 != null) {
                if (str4 != null) {
                    Map<String, ?> readValue = readValue(new String(this.base64UrlDecoder.decode(str4), Strings.UTF_8));
                    if (sb3 != null) {
                        jwsHeader = new DefaultJwsHeader(readValue);
                    } else {
                        jwsHeader = new DefaultHeader(readValue);
                    }
                    compressionCodec = this.compressionCodecResolver.resolveCompressionCodec(jwsHeader);
                } else {
                    compressionCodec = null;
                    jwsHeader = null;
                }
                byte[] decode = this.base64UrlDecoder.decode(str3);
                if (compressionCodec != null) {
                    decode = compressionCodec.decompress(decode);
                }
                String str5 = new String(decode, Strings.UTF_8);
                DefaultClaims defaultClaims2 = (str5.charAt(0) == '{' && str5.charAt(str5.length() - 1) == '}') ? new DefaultClaims(readValue(str5)) : null;
                if (sb3 != null) {
                    JwsHeader jwsHeader2 = jwsHeader;
                    if (jwsHeader != null) {
                        String algorithm = jwsHeader2.getAlgorithm();
                        if (Strings.hasText(algorithm)) {
                            signatureAlgorithm = SignatureAlgorithm.forName(algorithm);
                        }
                    }
                    if (signatureAlgorithm != null && signatureAlgorithm != SignatureAlgorithm.NONE) {
                        Key key = this.key;
                        if (key != null && this.keyBytes != null) {
                            throw new IllegalStateException("A key object and key bytes cannot both be specified. Choose either.");
                        }
                        if ((key != null || this.keyBytes != null) && this.signingKeyResolver != null) {
                            throw new IllegalStateException("A signing key resolver and " + (key != null ? "a key object" : "key bytes") + " cannot both be specified. Choose either.");
                        }
                        if (key == null) {
                            byte[] bArr = this.keyBytes;
                            if (Objects.isEmpty(bArr) && (signingKeyResolver = this.signingKeyResolver) != null) {
                                key = defaultClaims2 != null ? signingKeyResolver.resolveSigningKey(jwsHeader2, defaultClaims2) : signingKeyResolver.resolveSigningKey(jwsHeader2, str5);
                            }
                            if (!Objects.isEmpty(bArr)) {
                                Assert.isTrue(signatureAlgorithm.isHmac(), "Key bytes can only be specified for HMAC signatures. Please specify a PublicKey or PrivateKey instance.");
                                key = new SecretKeySpec(bArr, signatureAlgorithm.getJcaName());
                            }
                        }
                        Assert.notNull(key, "A signing key must be specified if the specified JWT is digitally signed.");
                        String str6 = str4 + JwtParser.SEPARATOR_CHAR + str3;
                        try {
                            signatureAlgorithm.assertValidVerificationKey(key);
                            if (!createSignatureValidator(signatureAlgorithm, key).isValid(str6, sb3)) {
                                throw new SignatureException("JWT signature does not match locally computed signature. JWT validity cannot be asserted and should not be trusted.");
                            }
                        } catch (WeakKeyException e10) {
                            throw e10;
                        } catch (InvalidKeyException e11) {
                            e = e11;
                            String value = signatureAlgorithm.getValue();
                            throw new UnsupportedJwtException("The parsed JWT indicates it was signed with the " + value + " signature algorithm, but the specified signing key of type " + key.getClass().getName() + " may not be used to validate " + value + " signatures.  Because the specified signing key reflects a specific and expected algorithm, and the JWT does not reflect this algorithm, it is likely that the JWT was not expected and therefore should not be trusted.  Another possibility is that the parser was configured with the incorrect signing key, but this cannot be assumed for security reasons.", e);
                        } catch (IllegalArgumentException e12) {
                            e = e12;
                            String value2 = signatureAlgorithm.getValue();
                            throw new UnsupportedJwtException("The parsed JWT indicates it was signed with the " + value2 + " signature algorithm, but the specified signing key of type " + key.getClass().getName() + " may not be used to validate " + value2 + " signatures.  Because the specified signing key reflects a specific and expected algorithm, and the JWT does not reflect this algorithm, it is likely that the JWT was not expected and therefore should not be trusted.  Another possibility is that the parser was configured with the incorrect signing key, but this cannot be assumed for security reasons.", e);
                        }
                    } else {
                        throw new MalformedJwtException("JWT string has a digest/signature, but the header does not reference a valid signature algorithm.");
                    }
                }
                boolean z10 = this.allowedClockSkewMillis > 0;
                if (defaultClaims2 != null) {
                    Date now = this.clock.now();
                    long time = now.getTime();
                    Date expiration = defaultClaims2.getExpiration();
                    if (expiration != null) {
                        DefaultClaims defaultClaims3 = defaultClaims2;
                        long j11 = time - this.allowedClockSkewMillis;
                        if ((z10 ? new Date(j11) : now).after(expiration)) {
                            throw new ExpiredJwtException(jwsHeader, defaultClaims3, "JWT expired at " + DateFormats.formatIso8601(expiration, false) + ". Current time: " + DateFormats.formatIso8601(now, false) + ", a difference of " + (j11 - expiration.getTime()) + " milliseconds.  Allowed clock skew: " + this.allowedClockSkewMillis + " milliseconds.");
                        }
                        defaultClaims = defaultClaims3;
                    } else {
                        defaultClaims = defaultClaims2;
                    }
                    Date notBefore = defaultClaims.getNotBefore();
                    str2 = sb3;
                    if (notBefore != null) {
                        JwsHeader jwsHeader3 = jwsHeader;
                        if ((z10 ? new Date(time + this.allowedClockSkewMillis) : now).before(notBefore)) {
                            throw new PrematureJwtException(jwsHeader3, defaultClaims, "JWT must not be accepted before " + DateFormats.formatIso8601(notBefore, false) + ". Current time: " + DateFormats.formatIso8601(now, false) + ", a difference of " + (notBefore.getTime() - j10) + " milliseconds.  Allowed clock skew: " + this.allowedClockSkewMillis + " milliseconds.");
                        }
                        jwsHeader = jwsHeader3;
                    }
                    validateExpectedClaims(jwsHeader, defaultClaims);
                } else {
                    defaultClaims = defaultClaims2;
                    str2 = sb3;
                }
                if (defaultClaims != null) {
                    str5 = defaultClaims;
                }
                if (str2 != null) {
                    return new DefaultJws(jwsHeader, str5, str2);
                }
                return new DefaultJwt(jwsHeader, str5);
            }
            throw new MalformedJwtException("JWT string '" + str + "' is missing a body/payload.");
        }
        throw new MalformedJwtException("JWT strings must contain exactly 2 period characters. Found: " + i10);
    }

    @Override // io.jsonwebtoken.JwtParser
    public Jws<Claims> parseClaimsJws(String str) {
        return (Jws) parse(str, new JwtHandlerAdapter<Jws<Claims>>() { // from class: io.jsonwebtoken.impl.DefaultJwtParser.4
            @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
            public Jws<Claims> onClaimsJws(Jws<Claims> jws) {
                return jws;
            }

            @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
            public /* bridge */ /* synthetic */ Object onClaimsJws(Jws jws) {
                return onClaimsJws((Jws<Claims>) jws);
            }
        });
    }

    @Override // io.jsonwebtoken.JwtParser
    public Jwt<Header, Claims> parseClaimsJwt(String str) {
        try {
            return (Jwt) parse(str, new JwtHandlerAdapter<Jwt<Header, Claims>>() { // from class: io.jsonwebtoken.impl.DefaultJwtParser.2
                @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
                public Jwt<Header, Claims> onClaimsJwt(Jwt<Header, Claims> jwt) {
                    return jwt;
                }

                @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
                public /* bridge */ /* synthetic */ Object onClaimsJwt(Jwt jwt) {
                    return onClaimsJwt((Jwt<Header, Claims>) jwt);
                }
            });
        } catch (IllegalArgumentException e10) {
            throw new UnsupportedJwtException("Signed JWSs are not supported.", e10);
        }
    }

    @Override // io.jsonwebtoken.JwtParser
    public Jws<String> parsePlaintextJws(String str) {
        try {
            return (Jws) parse(str, new JwtHandlerAdapter<Jws<String>>() { // from class: io.jsonwebtoken.impl.DefaultJwtParser.3
                @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
                public Jws<String> onPlaintextJws(Jws<String> jws) {
                    return jws;
                }

                @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
                public /* bridge */ /* synthetic */ Object onPlaintextJws(Jws jws) {
                    return onPlaintextJws((Jws<String>) jws);
                }
            });
        } catch (IllegalArgumentException e10) {
            throw new UnsupportedJwtException("Signed JWSs are not supported.", e10);
        }
    }

    @Override // io.jsonwebtoken.JwtParser
    public Jwt<Header, String> parsePlaintextJwt(String str) {
        return (Jwt) parse(str, new JwtHandlerAdapter<Jwt<Header, String>>() { // from class: io.jsonwebtoken.impl.DefaultJwtParser.1
            @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
            public Jwt<Header, String> onPlaintextJwt(Jwt<Header, String> jwt) {
                return jwt;
            }

            @Override // io.jsonwebtoken.JwtHandlerAdapter, io.jsonwebtoken.JwtHandler
            public /* bridge */ /* synthetic */ Object onPlaintextJwt(Jwt jwt) {
                return onPlaintextJwt((Jwt<Header, String>) jwt);
            }
        });
    }

    protected Map<String, ?> readValue(String str) {
        try {
            return this.deserializer.deserialize(str.getBytes(Strings.UTF_8));
        } catch (DeserializationException e10) {
            throw new MalformedJwtException("Unable to read JSON value: " + str, e10);
        }
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser require(String str, Object obj) {
        Assert.hasText(str, "claim name cannot be null or empty.");
        Assert.notNull(obj, "The value cannot be null for claim name: " + str);
        this.expectedClaims.put(str, obj);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser requireAudience(String str) {
        this.expectedClaims.setAudience(str);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser requireExpiration(Date date) {
        this.expectedClaims.setExpiration(date);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser requireId(String str) {
        this.expectedClaims.setId(str);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser requireIssuedAt(Date date) {
        this.expectedClaims.setIssuedAt(date);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser requireIssuer(String str) {
        this.expectedClaims.setIssuer(str);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser requireNotBefore(Date date) {
        this.expectedClaims.setNotBefore(date);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser requireSubject(String str) {
        this.expectedClaims.setSubject(str);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser setAllowedClockSkewSeconds(long j10) {
        this.allowedClockSkewMillis = Math.max(0L, j10 * 1000);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser setClock(Clock clock) {
        Assert.notNull(clock, "Clock instance cannot be null.");
        this.clock = clock;
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser setCompressionCodecResolver(CompressionCodecResolver compressionCodecResolver) {
        Assert.notNull(compressionCodecResolver, "compressionCodecResolver cannot be null.");
        this.compressionCodecResolver = compressionCodecResolver;
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser setSigningKey(byte[] bArr) {
        Assert.notEmpty(bArr, "signing key cannot be null or empty.");
        this.keyBytes = bArr;
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser setSigningKeyResolver(SigningKeyResolver signingKeyResolver) {
        Assert.notNull(signingKeyResolver, "SigningKeyResolver cannot be null.");
        this.signingKeyResolver = signingKeyResolver;
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser setSigningKey(String str) {
        Assert.hasText(str, "signing key cannot be null or empty.");
        this.keyBytes = Decoders.BASE64.decode(str);
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public JwtParser setSigningKey(Key key) {
        Assert.notNull(key, "signing key cannot be null.");
        this.key = key;
        return this;
    }

    @Override // io.jsonwebtoken.JwtParser
    public <T> T parse(String str, JwtHandler<T> jwtHandler) throws ExpiredJwtException, MalformedJwtException, SignatureException {
        Assert.notNull(jwtHandler, "JwtHandler argument cannot be null.");
        Assert.hasText(str, "JWT String argument cannot be null or empty.");
        Jwt<Header, String> parse = parse(str);
        if (parse instanceof Jws) {
            Jws<String> jws = (Jws) parse;
            if (jws.getBody() instanceof Claims) {
                return jwtHandler.onClaimsJws(jws);
            }
            return jwtHandler.onPlaintextJws(jws);
        } else if (parse.getBody() instanceof Claims) {
            return jwtHandler.onClaimsJwt(parse);
        } else {
            return jwtHandler.onPlaintextJwt(parse);
        }
    }
}
