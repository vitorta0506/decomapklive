package com.squareup.okhttp;

import androidx.webkit.ProxyConfig;
import com.facebook.internal.security.CertificateUtil;
import java.net.IDN;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.UByte;
import kotlin.text.Typography;
import okio.Buffer;
import org.light.utils.FileUtils;
import org.light.utils.IOUtils;
/* loaded from: classes4.dex */
public final class HttpUrl {
    static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    static final String FRAGMENT_ENCODE_SET = "";
    static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    static final String QUERY_COMPONENT_ENCODE_SET = " \"'<>#&=";
    static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    static final String QUERY_ENCODE_SET = " \"'<>#";
    static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.HttpUrl$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult;

        static {
            int[] iArr = new int[Builder.ParseResult.values().length];
            $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult = iArr;
            try {
                iArr[Builder.ParseResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[Builder.ParseResult.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class Builder {
        String encodedFragment;
        final List<String> encodedPathSegments;
        List<String> encodedQueryNamesAndValues;
        String host;
        String scheme;
        String encodedUsername = "";
        String encodedPassword = "";
        int port = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes4.dex */
        public enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private static String canonicalizeHost(String str, int i9, int i10) {
            String percentDecode = HttpUrl.percentDecode(str, i9, i10, false);
            if (percentDecode.startsWith("[") && percentDecode.endsWith("]")) {
                InetAddress decodeIpv6 = decodeIpv6(percentDecode, 1, percentDecode.length() - 1);
                if (decodeIpv6 == null) {
                    return null;
                }
                byte[] address = decodeIpv6.getAddress();
                if (address.length == 16) {
                    return inet6AddressToAscii(address);
                }
                throw new AssertionError();
            }
            return domainToAscii(percentDecode);
        }

        private static boolean containsInvalidHostnameAsciiCodes(String str) {
            for (int i9 = 0; i9 < str.length(); i9++) {
                char charAt = str.charAt(i9);
                if (charAt <= 31 || charAt >= 127 || " #%/:?@[\\]".indexOf(charAt) != -1) {
                    return true;
                }
            }
            return false;
        }

        private static boolean decodeIpv4Suffix(String str, int i9, int i10, byte[] bArr, int i11) {
            int i12 = i11;
            while (i9 < i10) {
                if (i12 == bArr.length) {
                    return false;
                }
                if (i12 != i11) {
                    if (str.charAt(i9) != '.') {
                        return false;
                    }
                    i9++;
                }
                int i13 = i9;
                int i14 = 0;
                while (i13 < i10) {
                    char charAt = str.charAt(i13);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    } else if ((i14 == 0 && i9 != i13) || (i14 = ((i14 * 10) + charAt) - 48) > 255) {
                        return false;
                    } else {
                        i13++;
                    }
                }
                if (i13 - i9 == 0) {
                    return false;
                }
                bArr[i12] = (byte) i14;
                i12++;
                i9 = i13;
            }
            return i12 == i11 + 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:41:0x0079, code lost:
            return null;
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static java.net.InetAddress decodeIpv6(java.lang.String r11, int r12, int r13) {
            /*
                r0 = 16
                byte[] r1 = new byte[r0]
                r2 = -1
                r3 = 0
                r4 = 0
                r5 = -1
                r6 = -1
            L9:
                r7 = 0
                if (r12 >= r13) goto L7a
                if (r4 != r0) goto Lf
                return r7
            Lf:
                int r8 = r12 + 2
                if (r8 > r13) goto L27
                java.lang.String r9 = "::"
                r10 = 2
                boolean r9 = r11.regionMatches(r12, r9, r3, r10)
                if (r9 == 0) goto L27
                if (r5 == r2) goto L1f
                return r7
            L1f:
                int r4 = r4 + 2
                r5 = r4
                if (r8 != r13) goto L25
                goto L7a
            L25:
                r6 = r8
                goto L4b
            L27:
                if (r4 == 0) goto L4a
                java.lang.String r8 = ":"
                r9 = 1
                boolean r8 = r11.regionMatches(r12, r8, r3, r9)
                if (r8 == 0) goto L35
                int r12 = r12 + 1
                goto L4a
            L35:
                java.lang.String r8 = "."
                boolean r12 = r11.regionMatches(r12, r8, r3, r9)
                if (r12 == 0) goto L49
                int r12 = r4 + (-2)
                boolean r11 = decodeIpv4Suffix(r11, r6, r13, r1, r12)
                if (r11 != 0) goto L46
                return r7
            L46:
                int r4 = r4 + 2
                goto L7a
            L49:
                return r7
            L4a:
                r6 = r12
            L4b:
                r12 = r6
                r8 = 0
            L4d:
                if (r12 >= r13) goto L60
                char r9 = r11.charAt(r12)
                int r9 = com.squareup.okhttp.HttpUrl.decodeHexDigit(r9)
                if (r9 != r2) goto L5a
                goto L60
            L5a:
                int r8 = r8 << 4
                int r8 = r8 + r9
                int r12 = r12 + 1
                goto L4d
            L60:
                int r9 = r12 - r6
                if (r9 == 0) goto L79
                r10 = 4
                if (r9 <= r10) goto L68
                goto L79
            L68:
                int r7 = r4 + 1
                int r9 = r8 >>> 8
                r9 = r9 & 255(0xff, float:3.57E-43)
                byte r9 = (byte) r9
                r1[r4] = r9
                int r4 = r7 + 1
                r8 = r8 & 255(0xff, float:3.57E-43)
                byte r8 = (byte) r8
                r1[r7] = r8
                goto L9
            L79:
                return r7
            L7a:
                if (r4 == r0) goto L8b
                if (r5 != r2) goto L7f
                return r7
            L7f:
                int r11 = r4 - r5
                int r12 = 16 - r11
                java.lang.System.arraycopy(r1, r5, r1, r12, r11)
                int r0 = r0 - r4
                int r0 = r0 + r5
                java.util.Arrays.fill(r1, r5, r0, r3)
            L8b:
                java.net.InetAddress r11 = java.net.InetAddress.getByAddress(r1)     // Catch: java.net.UnknownHostException -> L90
                return r11
            L90:
                java.lang.AssertionError r11 = new java.lang.AssertionError
                r11.<init>()
                throw r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.HttpUrl.Builder.decodeIpv6(java.lang.String, int, int):java.net.InetAddress");
        }

        private static String domainToAscii(String str) {
            try {
                String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (lowerCase.isEmpty()) {
                    return null;
                }
                if (containsInvalidHostnameAsciiCodes(lowerCase)) {
                    return null;
                }
                return lowerCase;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        private static String inet6AddressToAscii(byte[] bArr) {
            int i9 = 0;
            int i10 = -1;
            int i11 = 0;
            int i12 = 0;
            while (i11 < bArr.length) {
                int i13 = i11;
                while (i13 < 16 && bArr[i13] == 0 && bArr[i13 + 1] == 0) {
                    i13 += 2;
                }
                int i14 = i13 - i11;
                if (i14 > i12) {
                    i10 = i11;
                    i12 = i14;
                }
                i11 = i13 + 2;
            }
            Buffer buffer = new Buffer();
            while (i9 < bArr.length) {
                if (i9 == i10) {
                    buffer.writeByte(58);
                    i9 += i12;
                    if (i9 == 16) {
                        buffer.writeByte(58);
                    }
                } else {
                    if (i9 > 0) {
                        buffer.writeByte(58);
                    }
                    buffer.writeHexadecimalUnsignedLong(((bArr[i9] & UByte.MAX_VALUE) << 8) | (bArr[i9 + 1] & UByte.MAX_VALUE));
                    i9 += 2;
                }
            }
            return buffer.readUtf8();
        }

        private boolean isDot(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int parsePort(String str, int i9, int i10) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(HttpUrl.canonicalize(str, i9, i10, "", false, false, true));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        private void pop() {
            List<String> list = this.encodedPathSegments;
            if (list.remove(list.size() - 1).isEmpty() && !this.encodedPathSegments.isEmpty()) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.encodedPathSegments.add("");
        }

        private static int portColonOffset(String str, int i9, int i10) {
            while (i9 < i10) {
                char charAt = str.charAt(i9);
                if (charAt == ':') {
                    return i9;
                }
                if (charAt == '[') {
                    do {
                        i9++;
                        if (i9 < i10) {
                        }
                    } while (str.charAt(i9) != ']');
                }
                i9++;
            }
            return i10;
        }

        private void push(String str, int i9, int i10, boolean z10, boolean z11) {
            String canonicalize = HttpUrl.canonicalize(str, i9, i10, " \"<>^`{}|/\\?#", z11, false, true);
            if (isDot(canonicalize)) {
                return;
            }
            if (isDotDot(canonicalize)) {
                pop();
                return;
            }
            List<String> list = this.encodedPathSegments;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.encodedPathSegments;
                list2.set(list2.size() - 1, canonicalize);
            } else {
                this.encodedPathSegments.add(canonicalize);
            }
            if (z10) {
                this.encodedPathSegments.add("");
            }
        }

        private void removeAllCanonicalQueryParameters(String str) {
            for (int size = this.encodedQueryNamesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.encodedQueryNamesAndValues.get(size))) {
                    this.encodedQueryNamesAndValues.remove(size + 1);
                    this.encodedQueryNamesAndValues.remove(size);
                    if (this.encodedQueryNamesAndValues.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
            }
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0044 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0041 -> B:11:0x0029). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void resolvePath(java.lang.String r11, int r12, int r13) {
            /*
                r10 = this;
                if (r12 != r13) goto L3
                return
            L3:
                char r0 = r11.charAt(r12)
                r1 = 47
                java.lang.String r2 = ""
                r3 = 1
                if (r0 == r1) goto L1e
                r1 = 92
                if (r0 != r1) goto L13
                goto L1e
            L13:
                java.util.List<java.lang.String> r0 = r10.encodedPathSegments
                int r1 = r0.size()
                int r1 = r1 - r3
                r0.set(r1, r2)
                goto L29
            L1e:
                java.util.List<java.lang.String> r0 = r10.encodedPathSegments
                r0.clear()
                java.util.List<java.lang.String> r0 = r10.encodedPathSegments
                r0.add(r2)
                goto L41
            L29:
                r6 = r12
                if (r6 >= r13) goto L44
                java.lang.String r12 = "/\\"
                int r12 = com.squareup.okhttp.HttpUrl.access$200(r11, r6, r13, r12)
                if (r12 >= r13) goto L36
                r0 = 1
                goto L37
            L36:
                r0 = 0
            L37:
                r9 = 1
                r4 = r10
                r5 = r11
                r7 = r12
                r8 = r0
                r4.push(r5, r6, r7, r8, r9)
                if (r0 == 0) goto L29
            L41:
                int r12 = r12 + 1
                goto L29
            L44:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.HttpUrl.Builder.resolvePath(java.lang.String, int, int):void");
        }

        private static int schemeDelimiterOffset(String str, int i9, int i10) {
            if (i10 - i9 < 2) {
                return -1;
            }
            char charAt = str.charAt(i9);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i9++;
                    if (i9 >= i10) {
                        break;
                    }
                    char charAt2 = str.charAt(i9);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i9;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private int skipLeadingAsciiWhitespace(String str, int i9, int i10) {
            while (i9 < i10) {
                char charAt = str.charAt(i9);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i9;
                }
                i9++;
            }
            return i10;
        }

        private int skipTrailingAsciiWhitespace(String str, int i9, int i10) {
            for (int i11 = i10 - 1; i11 >= i9; i11--) {
                char charAt = str.charAt(i11);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i11 + 1;
                }
            }
            return i9;
        }

        private static int slashCount(String str, int i9, int i10) {
            int i11 = 0;
            while (i9 < i10) {
                char charAt = str.charAt(i9);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i11++;
                i9++;
            }
            return i11;
        }

        public Builder addEncodedPathSegment(String str) {
            if (str != null) {
                push(str, 0, str.length(), false, true);
                return this;
            }
            throw new IllegalArgumentException("encodedPathSegment == null");
        }

        public Builder addEncodedQueryParameter(String str, String str2) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    this.encodedQueryNamesAndValues = new ArrayList();
                }
                this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, " \"'<>#&=", true, true, true));
                this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, " \"'<>#&=", true, true, true) : null);
                return this;
            }
            throw new IllegalArgumentException("encodedName == null");
        }

        public Builder addPathSegment(String str) {
            if (str != null) {
                push(str, 0, str.length(), false, false);
                return this;
            }
            throw new IllegalArgumentException("pathSegment == null");
        }

        public Builder addQueryParameter(String str, String str2) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    this.encodedQueryNamesAndValues = new ArrayList();
                }
                this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, " \"'<>#&=", false, true, true));
                this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, " \"'<>#&=", false, true, true) : null);
                return this;
            }
            throw new IllegalArgumentException("name == null");
        }

        public HttpUrl build() {
            if (this.scheme != null) {
                if (this.host != null) {
                    return new HttpUrl(this, null);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        int effectivePort() {
            int i9 = this.port;
            return i9 != -1 ? i9 : HttpUrl.defaultPort(this.scheme);
        }

        public Builder encodedFragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", true, false, false) : null;
            return this;
        }

        public Builder encodedPassword(String str) {
            if (str != null) {
                this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                return this;
            }
            throw new IllegalArgumentException("encodedPassword == null");
        }

        public Builder encodedPath(String str) {
            if (str != null) {
                if (str.startsWith(FileUtils.RES_PREFIX_STORAGE)) {
                    resolvePath(str, 0, str.length());
                    return this;
                }
                throw new IllegalArgumentException("unexpected encodedPath: " + str);
            }
            throw new IllegalArgumentException("encodedPath == null");
        }

        public Builder encodedQuery(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, " \"'<>#", true, true, true)) : null;
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str != null) {
                this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                return this;
            }
            throw new IllegalArgumentException("encodedUsername == null");
        }

        public Builder fragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, "", false, false, false) : null;
            return this;
        }

        public Builder host(String str) {
            if (str != null) {
                String canonicalizeHost = canonicalizeHost(str, 0, str.length());
                if (canonicalizeHost != null) {
                    this.host = canonicalizeHost;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            throw new IllegalArgumentException("host == null");
        }

        ParseResult parse(HttpUrl httpUrl, String str) {
            int delimiterOffset;
            int i9;
            int skipLeadingAsciiWhitespace = skipLeadingAsciiWhitespace(str, 0, str.length());
            int skipTrailingAsciiWhitespace = skipTrailingAsciiWhitespace(str, skipLeadingAsciiWhitespace, str.length());
            if (schemeDelimiterOffset(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace) != -1) {
                if (str.regionMatches(true, skipLeadingAsciiWhitespace, "https:", 0, 6)) {
                    this.scheme = ProxyConfig.MATCH_HTTPS;
                    skipLeadingAsciiWhitespace += 6;
                } else if (str.regionMatches(true, skipLeadingAsciiWhitespace, "http:", 0, 5)) {
                    this.scheme = "http";
                    skipLeadingAsciiWhitespace += 5;
                } else {
                    return ParseResult.UNSUPPORTED_SCHEME;
                }
            } else if (httpUrl != null) {
                this.scheme = httpUrl.scheme;
            } else {
                return ParseResult.MISSING_SCHEME;
            }
            int slashCount = slashCount(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace);
            char c10 = '?';
            char c11 = '#';
            if (slashCount < 2 && httpUrl != null && httpUrl.scheme.equals(this.scheme)) {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host;
                this.port = httpUrl.port;
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (skipLeadingAsciiWhitespace == skipTrailingAsciiWhitespace || str.charAt(skipLeadingAsciiWhitespace) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            } else {
                int i10 = skipLeadingAsciiWhitespace + slashCount;
                boolean z10 = false;
                boolean z11 = false;
                while (true) {
                    delimiterOffset = HttpUrl.delimiterOffset(str, i10, skipTrailingAsciiWhitespace, "@/\\?#");
                    char charAt = delimiterOffset != skipTrailingAsciiWhitespace ? str.charAt(delimiterOffset) : (char) 65535;
                    if (charAt == 65535 || charAt == c11 || charAt == '/' || charAt == '\\' || charAt == c10) {
                        break;
                    }
                    if (charAt == '@') {
                        if (!z10) {
                            int delimiterOffset2 = HttpUrl.delimiterOffset(str, i10, delimiterOffset, CertificateUtil.DELIMITER);
                            i9 = delimiterOffset;
                            String canonicalize = HttpUrl.canonicalize(str, i10, delimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                            if (z11) {
                                canonicalize = this.encodedUsername + "%40" + canonicalize;
                            }
                            this.encodedUsername = canonicalize;
                            if (delimiterOffset2 != i9) {
                                this.encodedPassword = HttpUrl.canonicalize(str, delimiterOffset2 + 1, i9, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                                z10 = true;
                            }
                            z11 = true;
                        } else {
                            i9 = delimiterOffset;
                            this.encodedPassword += "%40" + HttpUrl.canonicalize(str, i10, i9, " \"':;<=>@[]^`{}|/\\?#", true, false, true);
                        }
                        i10 = i9 + 1;
                    }
                    c10 = '?';
                    c11 = '#';
                }
                int portColonOffset = portColonOffset(str, i10, delimiterOffset);
                int i11 = portColonOffset + 1;
                if (i11 < delimiterOffset) {
                    this.host = canonicalizeHost(str, i10, portColonOffset);
                    int parsePort = parsePort(str, i11, delimiterOffset);
                    this.port = parsePort;
                    if (parsePort == -1) {
                        return ParseResult.INVALID_PORT;
                    }
                } else {
                    this.host = canonicalizeHost(str, i10, portColonOffset);
                    this.port = HttpUrl.defaultPort(this.scheme);
                }
                if (this.host == null) {
                    return ParseResult.INVALID_HOST;
                }
                skipLeadingAsciiWhitespace = delimiterOffset;
            }
            int delimiterOffset3 = HttpUrl.delimiterOffset(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace, "?#");
            resolvePath(str, skipLeadingAsciiWhitespace, delimiterOffset3);
            if (delimiterOffset3 < skipTrailingAsciiWhitespace && str.charAt(delimiterOffset3) == '?') {
                int delimiterOffset4 = HttpUrl.delimiterOffset(str, delimiterOffset3, skipTrailingAsciiWhitespace, "#");
                this.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, delimiterOffset3 + 1, delimiterOffset4, " \"'<>#", true, true, true));
                delimiterOffset3 = delimiterOffset4;
            }
            if (delimiterOffset3 < skipTrailingAsciiWhitespace && str.charAt(delimiterOffset3) == '#') {
                this.encodedFragment = HttpUrl.canonicalize(str, 1 + delimiterOffset3, skipTrailingAsciiWhitespace, "", true, false, false);
            }
            return ParseResult.SUCCESS;
        }

        public Builder password(String str) {
            if (str != null) {
                this.encodedPassword = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, true);
                return this;
            }
            throw new IllegalArgumentException("password == null");
        }

        public Builder port(int i9) {
            if (i9 > 0 && i9 <= 65535) {
                this.port = i9;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i9);
        }

        public Builder query(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, " \"'<>#", false, true, true)) : null;
            return this;
        }

        Builder reencodeForUri() {
            int size = this.encodedPathSegments.size();
            for (int i9 = 0; i9 < size; i9++) {
                this.encodedPathSegments.set(i9, HttpUrl.canonicalize(this.encodedPathSegments.get(i9), "[]", true, false, true));
            }
            List<String> list = this.encodedQueryNamesAndValues;
            if (list != null) {
                int size2 = list.size();
                for (int i10 = 0; i10 < size2; i10++) {
                    String str = this.encodedQueryNamesAndValues.get(i10);
                    if (str != null) {
                        this.encodedQueryNamesAndValues.set(i10, HttpUrl.canonicalize(str, "\\^`{|}", true, true, true));
                    }
                }
            }
            String str2 = this.encodedFragment;
            if (str2 != null) {
                this.encodedFragment = HttpUrl.canonicalize(str2, " \"#<>\\^`{|}", true, false, false);
            }
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    return this;
                }
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, " \"'<>#&=", true, true, true));
                return this;
            }
            throw new IllegalArgumentException("encodedName == null");
        }

        public Builder removeAllQueryParameters(String str) {
            if (str != null) {
                if (this.encodedQueryNamesAndValues == null) {
                    return this;
                }
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, " \"'<>#&=", false, true, true));
                return this;
            }
            throw new IllegalArgumentException("name == null");
        }

        public Builder removePathSegment(int i9) {
            this.encodedPathSegments.remove(i9);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        public Builder scheme(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase("http")) {
                    this.scheme = "http";
                } else if (str.equalsIgnoreCase(ProxyConfig.MATCH_HTTPS)) {
                    this.scheme = ProxyConfig.MATCH_HTTPS;
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                return this;
            }
            throw new IllegalArgumentException("scheme == null");
        }

        public Builder setEncodedPathSegment(int i9, String str) {
            if (str != null) {
                String canonicalize = HttpUrl.canonicalize(str, 0, str.length(), " \"<>^`{}|/\\?#", true, false, true);
                this.encodedPathSegments.set(i9, canonicalize);
                if (isDot(canonicalize) || isDotDot(canonicalize)) {
                    throw new IllegalArgumentException("unexpected path segment: " + str);
                }
                return this;
            }
            throw new IllegalArgumentException("encodedPathSegment == null");
        }

        public Builder setEncodedQueryParameter(String str, String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder setPathSegment(int i9, String str) {
            if (str != null) {
                String canonicalize = HttpUrl.canonicalize(str, 0, str.length(), " \"<>^`{}|/\\?#", false, false, true);
                if (!isDot(canonicalize) && !isDotDot(canonicalize)) {
                    this.encodedPathSegments.set(i9, canonicalize);
                    return this;
                }
                throw new IllegalArgumentException("unexpected path segment: " + str);
            }
            throw new IllegalArgumentException("pathSegment == null");
        }

        public Builder setQueryParameter(String str, String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.scheme);
            sb2.append("://");
            if (!this.encodedUsername.isEmpty() || !this.encodedPassword.isEmpty()) {
                sb2.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.encodedPassword);
                }
                sb2.append('@');
            }
            if (this.host.indexOf(58) != -1) {
                sb2.append('[');
                sb2.append(this.host);
                sb2.append(']');
            } else {
                sb2.append(this.host);
            }
            int effectivePort = effectivePort();
            if (effectivePort != HttpUrl.defaultPort(this.scheme)) {
                sb2.append(':');
                sb2.append(effectivePort);
            }
            HttpUrl.pathSegmentsToString(sb2, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                sb2.append('?');
                HttpUrl.namesAndValuesToQueryString(sb2, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                sb2.append('#');
                sb2.append(this.encodedFragment);
            }
            return sb2.toString();
        }

        public Builder username(String str) {
            if (str != null) {
                this.encodedUsername = HttpUrl.canonicalize(str, " \"':;<=>@[]^`{}|/\\?#", false, false, true);
                return this;
            }
            throw new IllegalArgumentException("username == null");
        }
    }

    /* synthetic */ HttpUrl(Builder builder, AnonymousClass1 anonymousClass1) {
        this(builder);
    }

    static String canonicalize(String str, int i9, int i10, String str2, boolean z10, boolean z11, boolean z12) {
        int i11 = i9;
        while (i11 < i10) {
            int codePointAt = str.codePointAt(i11);
            if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || !z12) && str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || z10) && (codePointAt != 43 || !z11)))) {
                i11 += Character.charCount(codePointAt);
            } else {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i9, i11);
                canonicalize(buffer, str, i11, i10, str2, z10, z11, z12);
                return buffer.readUtf8();
            }
        }
        return str.substring(i9, i10);
    }

    static int decodeHexDigit(char c10) {
        if (c10 < '0' || c10 > '9') {
            char c11 = 'a';
            if (c10 < 'a' || c10 > 'f') {
                c11 = 'A';
                if (c10 < 'A' || c10 > 'F') {
                    return -1;
                }
            }
            return (c10 - c11) + 10;
        }
        return c10 - '0';
    }

    public static int defaultPort(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals(ProxyConfig.MATCH_HTTPS) ? 443 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int delimiterOffset(String str, int i9, int i10, String str2) {
        while (i9 < i10) {
            if (str2.indexOf(str.charAt(i9)) != -1) {
                return i9;
            }
            i9++;
        }
        return i10;
    }

    public static HttpUrl get(URL url) {
        return parse(url.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HttpUrl getChecked(String str) throws MalformedURLException, UnknownHostException {
        Builder builder = new Builder();
        Builder.ParseResult parse = builder.parse(null, str);
        int i9 = AnonymousClass1.$SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[parse.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                throw new MalformedURLException("Invalid URL: " + parse + " for " + str);
            }
            throw new UnknownHostException("Invalid host: " + str);
        }
        return builder.build();
    }

    static void namesAndValuesToQueryString(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9 += 2) {
            String str = list.get(i9);
            String str2 = list.get(i9 + 1);
            if (i9 > 0) {
                sb2.append(Typography.amp);
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public static HttpUrl parse(String str) {
        Builder builder = new Builder();
        if (builder.parse(null, str) == Builder.ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    static void pathSegmentsToString(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i9 = 0; i9 < size; i9++) {
            sb2.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb2.append(list.get(i9));
        }
    }

    static String percentDecode(String str, boolean z10) {
        return percentDecode(str, 0, str.length(), z10);
    }

    static List<String> queryStringToNamesAndValues(String str) {
        ArrayList arrayList = new ArrayList();
        int i9 = 0;
        while (i9 <= str.length()) {
            int indexOf = str.indexOf(38, i9);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i9);
            if (indexOf2 != -1 && indexOf2 <= indexOf) {
                arrayList.add(str.substring(i9, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            } else {
                arrayList.add(str.substring(i9, indexOf));
                arrayList.add(null);
            }
            i9 = indexOf + 1;
        }
        return arrayList;
    }

    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    public String encodedPassword() {
        if (this.password.isEmpty()) {
            return "";
        }
        int indexOf = this.url.indexOf(64);
        return this.url.substring(this.url.indexOf(58, this.scheme.length() + 3) + 1, indexOf);
    }

    public String encodedPath() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        return this.url.substring(indexOf, delimiterOffset(str, indexOf, str.length(), "?#"));
    }

    public List<String> encodedPathSegments() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        String str = this.url;
        int delimiterOffset = delimiterOffset(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < delimiterOffset) {
            int i9 = indexOf + 1;
            int delimiterOffset2 = delimiterOffset(this.url, i9, delimiterOffset, FileUtils.RES_PREFIX_STORAGE);
            arrayList.add(this.url.substring(i9, delimiterOffset2));
            indexOf = delimiterOffset2;
        }
        return arrayList;
    }

    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int indexOf = this.url.indexOf(63) + 1;
        String str = this.url;
        return this.url.substring(indexOf, delimiterOffset(str, indexOf + 1, str.length(), "#"));
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        return this.url.substring(length, delimiterOffset(str, length, str.length(), ":@"));
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String host() {
        return this.host;
    }

    public boolean isHttps() {
        return this.scheme.equals(ProxyConfig.MATCH_HTTPS);
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        builder.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    public String password() {
        return this.password;
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    public int pathSize() {
        return this.pathSegments.size();
    }

    public int port() {
        return this.port;
    }

    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        namesAndValuesToQueryString(sb2, this.queryNamesAndValues);
        return sb2.toString();
    }

    public String queryParameter(String str) {
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        int size = list.size();
        for (int i9 = 0; i9 < size; i9 += 2) {
            if (str.equals(this.queryNamesAndValues.get(i9))) {
                return this.queryNamesAndValues.get(i9 + 1);
            }
        }
        return null;
    }

    public String queryParameterName(int i9) {
        return this.queryNamesAndValues.get(i9 * 2);
    }

    public Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return Collections.emptySet();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = this.queryNamesAndValues.size();
        for (int i9 = 0; i9 < size; i9 += 2) {
            linkedHashSet.add(this.queryNamesAndValues.get(i9));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public String queryParameterValue(int i9) {
        return this.queryNamesAndValues.get((i9 * 2) + 1);
    }

    public List<String> queryParameterValues(String str) {
        if (this.queryNamesAndValues == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = this.queryNamesAndValues.size();
        for (int i9 = 0; i9 < size; i9 += 2) {
            if (str.equals(this.queryNamesAndValues.get(i9))) {
                arrayList.add(this.queryNamesAndValues.get(i9 + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int querySize() {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public HttpUrl resolve(String str) {
        Builder builder = new Builder();
        if (builder.parse(this, str) == Builder.ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    public String scheme() {
        return this.scheme;
    }

    public String toString() {
        return this.url;
    }

    public URI uri() {
        try {
            return new URI(newBuilder().reencodeForUri().toString());
        } catch (URISyntaxException unused) {
            throw new IllegalStateException("not valid as a java.net.URI: " + this.url);
        }
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String username() {
        return this.username;
    }

    private HttpUrl(Builder builder) {
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        List<String> list = builder.encodedQueryNamesAndValues;
        this.queryNamesAndValues = list != null ? percentDecode(list, true) : null;
        String str = builder.encodedFragment;
        this.fragment = str != null ? percentDecode(str, false) : null;
        this.url = builder.toString();
    }

    public static HttpUrl get(URI uri) {
        return parse(uri.toString());
    }

    private List<String> percentDecode(List<String> list, boolean z10) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? percentDecode(next, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String percentDecode(String str, int i9, int i10, boolean z10) {
        for (int i11 = i9; i11 < i10; i11++) {
            char charAt = str.charAt(i11);
            if (charAt == '%' || (charAt == '+' && z10)) {
                Buffer buffer = new Buffer();
                buffer.writeUtf8(str, i9, i11);
                percentDecode(buffer, str, i11, i10, z10);
                return buffer.readUtf8();
            }
        }
        return str.substring(i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void canonicalize(Buffer buffer, String str, int i9, int i10, String str2, boolean z10, boolean z11, boolean z12) {
        Buffer buffer2 = null;
        while (i9 < i10) {
            int codePointAt = str.codePointAt(i9);
            if (!z10 || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z11) {
                    buffer.writeUtf8(z10 ? "+" : "%2B");
                } else if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || !z12) && str2.indexOf(codePointAt) == -1 && (codePointAt != 37 || z10))) {
                    buffer.writeUtf8CodePoint(codePointAt);
                } else {
                    if (buffer2 == null) {
                        buffer2 = new Buffer();
                    }
                    buffer2.writeUtf8CodePoint(codePointAt);
                    while (!buffer2.exhausted()) {
                        int readByte = buffer2.readByte() & UByte.MAX_VALUE;
                        buffer.writeByte(37);
                        char[] cArr = HEX_DIGITS;
                        buffer.writeByte((int) cArr[(readByte >> 4) & 15]);
                        buffer.writeByte((int) cArr[readByte & 15]);
                    }
                }
            }
            i9 += Character.charCount(codePointAt);
        }
    }

    static void percentDecode(Buffer buffer, String str, int i9, int i10, boolean z10) {
        int i11;
        while (i9 < i10) {
            int codePointAt = str.codePointAt(i9);
            if (codePointAt == 37 && (i11 = i9 + 2) < i10) {
                int decodeHexDigit = decodeHexDigit(str.charAt(i9 + 1));
                int decodeHexDigit2 = decodeHexDigit(str.charAt(i11));
                if (decodeHexDigit != -1 && decodeHexDigit2 != -1) {
                    buffer.writeByte((decodeHexDigit << 4) + decodeHexDigit2);
                    i9 = i11;
                }
                buffer.writeUtf8CodePoint(codePointAt);
            } else {
                if (codePointAt == 43 && z10) {
                    buffer.writeByte(32);
                }
                buffer.writeUtf8CodePoint(codePointAt);
            }
            i9 += Character.charCount(codePointAt);
        }
    }

    static String canonicalize(String str, String str2, boolean z10, boolean z11, boolean z12) {
        return canonicalize(str, 0, str.length(), str2, z10, z11, z12);
    }
}
