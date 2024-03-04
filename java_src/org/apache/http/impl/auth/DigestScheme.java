package org.apache.http.impl.auth;

import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareConstants;
import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.c;
import org.apache.http.f;
import org.apache.http.g;
import org.apache.http.i;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.CharArrayBuffer;
import vi.d;
/* loaded from: classes7.dex */
public class DigestScheme extends RFC2617Scheme {
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;
    private static final long serialVersionUID = 3883908186234566916L;

    /* renamed from: a1  reason: collision with root package name */
    private String f55889a1;

    /* renamed from: a2  reason: collision with root package name */
    private String f55890a2;
    private String cnonce;
    private boolean complete;
    private String lastNonce;
    private long nounceCount;

    public DigestScheme(Charset charset) {
        super(charset);
        this.complete = false;
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    private c createDigestHeader(oi.b bVar, i iVar) throws AuthenticationException {
        String str;
        char c10;
        String str2;
        String str3;
        MessageDigest messageDigest;
        String str4;
        String str5;
        char c11;
        String sb2;
        String str6;
        String parameter = getParameter(ShareConstants.MEDIA_URI);
        String parameter2 = getParameter("realm");
        String parameter3 = getParameter("nonce");
        String parameter4 = getParameter("opaque");
        String parameter5 = getParameter("methodname");
        String parameter6 = getParameter("algorithm");
        if (parameter6 == null) {
            parameter6 = "MD5";
        }
        HashSet hashSet = new HashSet(8);
        String str7 = "MD5";
        String parameter7 = getParameter("qop");
        if (parameter7 != null) {
            str = "qop";
            for (StringTokenizer stringTokenizer = new StringTokenizer(parameter7, ","); stringTokenizer.hasMoreTokens(); stringTokenizer = stringTokenizer) {
                hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.ROOT));
            }
            if ((iVar instanceof g) && hashSet.contains("auth-int")) {
                c10 = 1;
            } else {
                c10 = hashSet.contains("auth") ? (char) 2 : (char) 65535;
            }
        } else {
            str = "qop";
            c10 = 0;
        }
        if (c10 != 65535) {
            String parameter8 = getParameter("charset");
            if (parameter8 == null) {
                parameter8 = "ISO-8859-1";
            }
            if (parameter6.equalsIgnoreCase("MD5-sess")) {
                str2 = "auth-int";
            } else {
                str2 = "auth-int";
                str7 = parameter6;
            }
            try {
                MessageDigest createMessageDigest = createMessageDigest(str7);
                String name = bVar.getUserPrincipal().getName();
                String password = bVar.getPassword();
                if (parameter3.equals(this.lastNonce)) {
                    str3 = parameter;
                    this.nounceCount++;
                } else {
                    str3 = parameter;
                    this.nounceCount = 1L;
                    this.cnonce = null;
                    this.lastNonce = parameter3;
                }
                StringBuilder sb3 = new StringBuilder(256);
                Formatter formatter = new Formatter(sb3, Locale.US);
                formatter.format("%08x", Long.valueOf(this.nounceCount));
                formatter.close();
                String sb4 = sb3.toString();
                if (this.cnonce == null) {
                    this.cnonce = createCnonce();
                }
                this.f55889a1 = null;
                this.f55890a2 = null;
                if (parameter6.equalsIgnoreCase("MD5-sess")) {
                    sb3.setLength(0);
                    sb3.append(name);
                    sb3.append(':');
                    sb3.append(parameter2);
                    sb3.append(':');
                    sb3.append(password);
                    messageDigest = createMessageDigest;
                    String encode = encode(messageDigest.digest(d.b(sb3.toString(), parameter8)));
                    sb3.setLength(0);
                    sb3.append(encode);
                    sb3.append(':');
                    sb3.append(parameter3);
                    sb3.append(':');
                    sb3.append(this.cnonce);
                    this.f55889a1 = sb3.toString();
                } else {
                    messageDigest = createMessageDigest;
                    sb3.setLength(0);
                    sb3.append(name);
                    sb3.append(':');
                    sb3.append(parameter2);
                    sb3.append(':');
                    sb3.append(password);
                    this.f55889a1 = sb3.toString();
                }
                String encode2 = encode(messageDigest.digest(d.b(this.f55889a1, parameter8)));
                if (c10 == 2) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(parameter5);
                    sb5.append(':');
                    str4 = str3;
                    sb5.append(str4);
                    this.f55890a2 = sb5.toString();
                    str5 = "auth";
                } else {
                    str4 = str3;
                    if (c10 == 1) {
                        f a10 = iVar instanceof g ? ((g) iVar).a() : null;
                        if (a10 != null && !a10.a()) {
                            str5 = "auth";
                            if (!hashSet.contains(str5)) {
                                throw new AuthenticationException("Qop auth-int cannot be used with a non-repeatable entity");
                            }
                            this.f55890a2 = parameter5 + ':' + str4;
                            c11 = 2;
                        } else {
                            str5 = "auth";
                            b bVar2 = new b(messageDigest);
                            if (a10 != null) {
                                try {
                                    a10.writeTo(bVar2);
                                } catch (IOException e10) {
                                    throw new AuthenticationException("I/O error reading entity content", e10);
                                }
                            }
                            bVar2.close();
                            this.f55890a2 = parameter5 + ':' + str4 + ':' + encode(bVar2.a());
                            c11 = c10;
                        }
                        c10 = c11;
                    } else {
                        str5 = "auth";
                        this.f55890a2 = parameter5 + ':' + str4;
                    }
                }
                String encode3 = encode(messageDigest.digest(d.b(this.f55890a2, parameter8)));
                if (c10 == 0) {
                    sb3.setLength(0);
                    sb3.append(encode2);
                    sb3.append(':');
                    sb3.append(parameter3);
                    sb3.append(':');
                    sb3.append(encode3);
                    sb2 = sb3.toString();
                } else {
                    sb3.setLength(0);
                    sb3.append(encode2);
                    sb3.append(':');
                    sb3.append(parameter3);
                    sb3.append(':');
                    sb3.append(sb4);
                    sb3.append(':');
                    sb3.append(this.cnonce);
                    sb3.append(':');
                    sb3.append(c10 == 1 ? str2 : str5);
                    sb3.append(':');
                    sb3.append(encode3);
                    sb2 = sb3.toString();
                }
                String encode4 = encode(messageDigest.digest(d.a(sb2)));
                CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
                if (isProxy()) {
                    charArrayBuffer.append("Proxy-Authorization");
                } else {
                    charArrayBuffer.append("Authorization");
                }
                charArrayBuffer.append(": Digest ");
                ArrayList arrayList = new ArrayList(20);
                arrayList.add(new BasicNameValuePair("username", name));
                arrayList.add(new BasicNameValuePair("realm", parameter2));
                arrayList.add(new BasicNameValuePair("nonce", parameter3));
                arrayList.add(new BasicNameValuePair(ShareConstants.MEDIA_URI, str4));
                arrayList.add(new BasicNameValuePair("response", encode4));
                if (c10 != 0) {
                    if (c10 == 1) {
                        str5 = str2;
                    }
                    str6 = str;
                    arrayList.add(new BasicNameValuePair(str6, str5));
                    arrayList.add(new BasicNameValuePair("nc", sb4));
                    arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
                } else {
                    str6 = str;
                }
                arrayList.add(new BasicNameValuePair("algorithm", parameter6));
                if (parameter4 != null) {
                    arrayList.add(new BasicNameValuePair("opaque", parameter4));
                }
                for (int i9 = 0; i9 < arrayList.size(); i9++) {
                    BasicNameValuePair basicNameValuePair = (BasicNameValuePair) arrayList.get(i9);
                    if (i9 > 0) {
                        charArrayBuffer.append(", ");
                    }
                    String name2 = basicNameValuePair.getName();
                    si.b.f57925b.d(charArrayBuffer, basicNameValuePair, !("nc".equals(name2) || str6.equals(name2) || "algorithm".equals(name2)));
                }
                return new BufferedHeader(charArrayBuffer);
            } catch (UnsupportedDigestAlgorithmException unused) {
                throw new AuthenticationException("Unsuppported digest algorithm: " + str7);
            }
        }
        throw new AuthenticationException("None of the qop methods is supported: " + parameter7);
    }

    private static MessageDigest createMessageDigest(String str) throws UnsupportedDigestAlgorithmException {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception unused) {
            throw new UnsupportedDigestAlgorithmException("Unsupported algorithm in HTTP Digest authentication: " + str);
        }
    }

    static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i9 = 0; i9 < length; i9++) {
            int i10 = i9 * 2;
            char[] cArr2 = HEXADECIMAL;
            cArr[i10] = cArr2[(bArr[i9] & 240) >> 4];
            cArr[i10 + 1] = cArr2[bArr[i9] & 15];
        }
        return new String(cArr);
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme, oi.a
    @Deprecated
    public c authenticate(oi.b bVar, i iVar) throws AuthenticationException {
        return authenticate(bVar, iVar, new ti.a());
    }

    String getA1() {
        return this.f55889a1;
    }

    String getA2() {
        return this.f55890a2;
    }

    String getCnonce() {
        return this.cnonce;
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme, oi.a
    public String getSchemeName() {
        return "digest";
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme
    public boolean isComplete() {
        if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(getParameter("stale"))) {
            return false;
        }
        return this.complete;
    }

    @Override // org.apache.http.impl.auth.RFC2617Scheme
    public boolean isConnectionBased() {
        return false;
    }

    public void overrideParamter(String str, String str2) {
        getParameters().put(str, str2);
    }

    @Override // org.apache.http.impl.auth.a
    public void processChallenge(c cVar) throws MalformedChallengeException {
        super.processChallenge(cVar);
        this.complete = true;
        if (getParameters().isEmpty()) {
            throw new MalformedChallengeException("Authentication challenge is empty");
        }
    }

    @Override // org.apache.http.impl.auth.a
    public String toString() {
        return "DIGEST [complete=" + this.complete + ", nonce=" + this.lastNonce + ", nc=" + this.nounceCount + "]";
    }

    @Override // org.apache.http.impl.auth.a
    public c authenticate(oi.b bVar, i iVar, ti.c cVar) throws AuthenticationException {
        vi.a.g(bVar, "Credentials");
        vi.a.g(iVar, "HTTP request");
        if (getParameter("realm") != null) {
            if (getParameter("nonce") != null) {
                getParameters().put("methodname", iVar.b().getMethod());
                getParameters().put(ShareConstants.MEDIA_URI, iVar.b().getUri());
                if (getParameter("charset") == null) {
                    getParameters().put("charset", getCredentialsCharset(iVar));
                }
                return createDigestHeader(bVar, iVar);
            }
            throw new AuthenticationException("missing nonce in challenge");
        }
        throw new AuthenticationException("missing realm in challenge");
    }

    @Deprecated
    public DigestScheme(ChallengeState challengeState) {
        super(challengeState);
    }

    public DigestScheme() {
        this(org.apache.http.a.f55874b);
    }
}
