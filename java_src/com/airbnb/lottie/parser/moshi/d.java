package com.airbnb.lottie.parser.moshi;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.facebook.internal.ServerProtocol;
import com.tencent.bugly.Bugly;
import java.io.EOFException;
import java.io.IOException;
import java.util.Objects;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d extends JsonReader {

    /* renamed from: n  reason: collision with root package name */
    private static final ByteString f3870n = ByteString.encodeUtf8("'\\");

    /* renamed from: o  reason: collision with root package name */
    private static final ByteString f3871o = ByteString.encodeUtf8("\"\\");

    /* renamed from: p  reason: collision with root package name */
    private static final ByteString f3872p = ByteString.encodeUtf8("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: q  reason: collision with root package name */
    private static final ByteString f3873q = ByteString.encodeUtf8("\n\r");

    /* renamed from: r  reason: collision with root package name */
    private static final ByteString f3874r = ByteString.encodeUtf8("*/");

    /* renamed from: h  reason: collision with root package name */
    private final BufferedSource f3875h;

    /* renamed from: i  reason: collision with root package name */
    private final Buffer f3876i;

    /* renamed from: j  reason: collision with root package name */
    private int f3877j = 0;

    /* renamed from: k  reason: collision with root package name */
    private long f3878k;

    /* renamed from: l  reason: collision with root package name */
    private int f3879l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private String f3880m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(BufferedSource bufferedSource) {
        Objects.requireNonNull(bufferedSource, "source == null");
        this.f3875h = bufferedSource;
        this.f3876i = bufferedSource.buffer();
        y(6);
    }

    private void L() throws IOException {
        if (!this.f3866e) {
            throw K("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private int M() throws IOException {
        int[] iArr = this.f3863b;
        int i9 = this.f3862a;
        int i10 = iArr[i9 - 1];
        if (i10 == 1) {
            iArr[i9 - 1] = 2;
        } else if (i10 == 2) {
            int R = R(true);
            this.f3876i.readByte();
            if (R != 44) {
                if (R != 59) {
                    if (R == 93) {
                        this.f3877j = 4;
                        return 4;
                    }
                    throw K("Unterminated array");
                }
                L();
            }
        } else if (i10 == 3 || i10 == 5) {
            iArr[i9 - 1] = 4;
            if (i10 == 5) {
                int R2 = R(true);
                this.f3876i.readByte();
                if (R2 != 44) {
                    if (R2 != 59) {
                        if (R2 == 125) {
                            this.f3877j = 2;
                            return 2;
                        }
                        throw K("Unterminated object");
                    }
                    L();
                }
            }
            int R3 = R(true);
            if (R3 == 34) {
                this.f3876i.readByte();
                this.f3877j = 13;
                return 13;
            } else if (R3 == 39) {
                this.f3876i.readByte();
                L();
                this.f3877j = 12;
                return 12;
            } else if (R3 != 125) {
                L();
                if (P((char) R3)) {
                    this.f3877j = 14;
                    return 14;
                }
                throw K("Expected name");
            } else if (i10 != 5) {
                this.f3876i.readByte();
                this.f3877j = 2;
                return 2;
            } else {
                throw K("Expected name");
            }
        } else if (i10 == 4) {
            iArr[i9 - 1] = 5;
            int R4 = R(true);
            this.f3876i.readByte();
            if (R4 != 58) {
                if (R4 == 61) {
                    L();
                    if (this.f3875h.request(1L) && this.f3876i.getByte(0L) == 62) {
                        this.f3876i.readByte();
                    }
                } else {
                    throw K("Expected ':'");
                }
            }
        } else if (i10 == 6) {
            iArr[i9 - 1] = 7;
        } else if (i10 == 7) {
            if (R(false) == -1) {
                this.f3877j = 18;
                return 18;
            }
            L();
        } else if (i10 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int R5 = R(true);
        if (R5 == 34) {
            this.f3876i.readByte();
            this.f3877j = 9;
            return 9;
        } else if (R5 == 39) {
            L();
            this.f3876i.readByte();
            this.f3877j = 8;
            return 8;
        } else {
            if (R5 != 44 && R5 != 59) {
                if (R5 == 91) {
                    this.f3876i.readByte();
                    this.f3877j = 3;
                    return 3;
                } else if (R5 != 93) {
                    if (R5 != 123) {
                        int V = V();
                        if (V != 0) {
                            return V;
                        }
                        int W = W();
                        if (W != 0) {
                            return W;
                        }
                        if (P(this.f3876i.getByte(0L))) {
                            L();
                            this.f3877j = 10;
                            return 10;
                        }
                        throw K("Expected value");
                    }
                    this.f3876i.readByte();
                    this.f3877j = 1;
                    return 1;
                } else if (i10 == 1) {
                    this.f3876i.readByte();
                    this.f3877j = 4;
                    return 4;
                }
            }
            if (i10 != 1 && i10 != 2) {
                throw K("Unexpected value");
            }
            L();
            this.f3877j = 7;
            return 7;
        }
    }

    private int N(String str, JsonReader.a aVar) {
        int length = aVar.f3868a.length;
        for (int i9 = 0; i9 < length; i9++) {
            if (str.equals(aVar.f3868a[i9])) {
                this.f3877j = 0;
                this.f3864c[this.f3862a - 1] = str;
                return i9;
            }
        }
        return -1;
    }

    private boolean P(int i9) throws IOException {
        if (i9 == 9 || i9 == 10 || i9 == 12 || i9 == 13 || i9 == 32) {
            return false;
        }
        if (i9 != 35) {
            if (i9 == 44) {
                return false;
            }
            if (i9 != 47 && i9 != 61) {
                if (i9 == 123 || i9 == 125 || i9 == 58) {
                    return false;
                }
                if (i9 != 59) {
                    switch (i9) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        L();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0025, code lost:
        r6.f3876i.skip(r3 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
        if (r1 != 47) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        if (r6.f3875h.request(2) != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003c, code lost:
        L();
        r3 = r6.f3876i.getByte(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
        if (r3 == 42) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
        if (r3 == 47) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004d, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004e, code lost:
        r6.f3876i.readByte();
        r6.f3876i.readByte();
        c0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
        r6.f3876i.readByte();
        r6.f3876i.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
        if (Z() == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0073, code lost:
        throw K("Unterminated comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        if (r1 != 35) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
        L();
        c0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007f, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int R(boolean r7) throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
        L1:
            r1 = 0
        L2:
            okio.BufferedSource r2 = r6.f3875h
            int r3 = r1 + 1
            long r4 = (long) r3
            boolean r2 = r2.request(r4)
            if (r2 == 0) goto L82
            okio.Buffer r2 = r6.f3876i
            long r4 = (long) r1
            byte r1 = r2.getByte(r4)
            r2 = 10
            if (r1 == r2) goto L80
            r2 = 32
            if (r1 == r2) goto L80
            r2 = 13
            if (r1 == r2) goto L80
            r2 = 9
            if (r1 != r2) goto L25
            goto L80
        L25:
            okio.Buffer r2 = r6.f3876i
            int r3 = r3 + (-1)
            long r3 = (long) r3
            r2.skip(r3)
            r2 = 47
            if (r1 != r2) goto L74
            okio.BufferedSource r3 = r6.f3875h
            r4 = 2
            boolean r3 = r3.request(r4)
            if (r3 != 0) goto L3c
            return r1
        L3c:
            r6.L()
            okio.Buffer r3 = r6.f3876i
            r4 = 1
            byte r3 = r3.getByte(r4)
            r4 = 42
            if (r3 == r4) goto L5c
            if (r3 == r2) goto L4e
            return r1
        L4e:
            okio.Buffer r1 = r6.f3876i
            r1.readByte()
            okio.Buffer r1 = r6.f3876i
            r1.readByte()
            r6.c0()
            goto L1
        L5c:
            okio.Buffer r1 = r6.f3876i
            r1.readByte()
            okio.Buffer r1 = r6.f3876i
            r1.readByte()
            boolean r1 = r6.Z()
            if (r1 == 0) goto L6d
            goto L1
        L6d:
            java.lang.String r7 = "Unterminated comment"
            com.airbnb.lottie.parser.moshi.b r7 = r6.K(r7)
            throw r7
        L74:
            r2 = 35
            if (r1 != r2) goto L7f
            r6.L()
            r6.c0()
            goto L1
        L7f:
            return r1
        L80:
            r1 = r3
            goto L2
        L82:
            if (r7 != 0) goto L86
            r7 = -1
            return r7
        L86:
            java.io.EOFException r7 = new java.io.EOFException
            java.lang.String r0 = "End of input"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.d.R(boolean):int");
    }

    private String T(ByteString byteString) throws IOException {
        StringBuilder sb2 = null;
        while (true) {
            long indexOfElement = this.f3875h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f3876i.getByte(indexOfElement) != 92) {
                    if (sb2 == null) {
                        String readUtf8 = this.f3876i.readUtf8(indexOfElement);
                        this.f3876i.readByte();
                        return readUtf8;
                    }
                    sb2.append(this.f3876i.readUtf8(indexOfElement));
                    this.f3876i.readByte();
                    return sb2.toString();
                }
                if (sb2 == null) {
                    sb2 = new StringBuilder();
                }
                sb2.append(this.f3876i.readUtf8(indexOfElement));
                this.f3876i.readByte();
                sb2.append(X());
            } else {
                throw K("Unterminated string");
            }
        }
    }

    private String U() throws IOException {
        long indexOfElement = this.f3875h.indexOfElement(f3872p);
        return indexOfElement != -1 ? this.f3876i.readUtf8(indexOfElement) : this.f3876i.readUtf8();
    }

    private int V() throws IOException {
        int i9;
        String str;
        String str2;
        byte b10 = this.f3876i.getByte(0L);
        if (b10 == 116 || b10 == 84) {
            i9 = 5;
            str = ServerProtocol.DIALOG_RETURN_SCOPES_TRUE;
            str2 = "TRUE";
        } else if (b10 == 102 || b10 == 70) {
            i9 = 6;
            str = Bugly.SDK_IS_DEV;
            str2 = "FALSE";
        } else if (b10 != 110 && b10 != 78) {
            return 0;
        } else {
            i9 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        int i10 = 1;
        while (i10 < length) {
            int i11 = i10 + 1;
            if (!this.f3875h.request(i11)) {
                return 0;
            }
            byte b11 = this.f3876i.getByte(i10);
            if (b11 != str.charAt(i10) && b11 != str2.charAt(i10)) {
                return 0;
            }
            i10 = i11;
        }
        if (this.f3875h.request(length + 1) && P(this.f3876i.getByte(length))) {
            return 0;
        }
        this.f3876i.skip(length);
        this.f3877j = i9;
        return i9;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0087, code lost:
        if (P(r11) != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0089, code lost:
        if (r6 != 2) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008b, code lost:
        if (r7 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0091, code lost:
        if (r8 != Long.MIN_VALUE) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0093, code lost:
        if (r10 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0097, code lost:
        if (r8 != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0099, code lost:
        if (r10 != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x009b, code lost:
        if (r10 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009e, code lost:
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x009f, code lost:
        r16.f3878k = r8;
        r16.f3876i.skip(r5);
        r16.f3877j = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ab, code lost:
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ac, code lost:
        if (r6 == 2) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00af, code lost:
        if (r6 == 4) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00b2, code lost:
        if (r6 != 7) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b5, code lost:
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b7, code lost:
        r16.f3879l = r5;
        r16.f3877j = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00bd, code lost:
        return 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00be, code lost:
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int W() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.moshi.d.W():int");
    }

    private char X() throws IOException {
        int i9;
        int i10;
        if (this.f3875h.request(1L)) {
            byte readByte = this.f3876i.readByte();
            if (readByte == 10 || readByte == 34 || readByte == 39 || readByte == 47 || readByte == 92) {
                return (char) readByte;
            }
            if (readByte != 98) {
                if (readByte != 102) {
                    if (readByte != 110) {
                        if (readByte != 114) {
                            if (readByte != 116) {
                                if (readByte != 117) {
                                    if (this.f3866e) {
                                        return (char) readByte;
                                    }
                                    throw K("Invalid escape sequence: \\" + ((char) readByte));
                                } else if (this.f3875h.request(4L)) {
                                    char c10 = 0;
                                    for (int i11 = 0; i11 < 4; i11++) {
                                        byte b10 = this.f3876i.getByte(i11);
                                        char c11 = (char) (c10 << 4);
                                        if (b10 < 48 || b10 > 57) {
                                            if (b10 >= 97 && b10 <= 102) {
                                                i9 = b10 - 97;
                                            } else if (b10 < 65 || b10 > 70) {
                                                throw K("\\u" + this.f3876i.readUtf8(4L));
                                            } else {
                                                i9 = b10 - 65;
                                            }
                                            i10 = i9 + 10;
                                        } else {
                                            i10 = b10 - 48;
                                        }
                                        c10 = (char) (c11 + i10);
                                    }
                                    this.f3876i.skip(4L);
                                    return c10;
                                } else {
                                    throw new EOFException("Unterminated escape sequence at path " + getPath());
                                }
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\n';
                }
                return '\f';
            }
            return '\b';
        }
        throw K("Unterminated escape sequence");
    }

    private void Y(ByteString byteString) throws IOException {
        while (true) {
            long indexOfElement = this.f3875h.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.f3876i.getByte(indexOfElement) == 92) {
                    this.f3876i.skip(indexOfElement + 1);
                    X();
                } else {
                    this.f3876i.skip(indexOfElement + 1);
                    return;
                }
            } else {
                throw K("Unterminated string");
            }
        }
    }

    private boolean Z() throws IOException {
        BufferedSource bufferedSource = this.f3875h;
        ByteString byteString = f3874r;
        long indexOf = bufferedSource.indexOf(byteString);
        boolean z10 = indexOf != -1;
        Buffer buffer = this.f3876i;
        buffer.skip(z10 ? indexOf + byteString.size() : buffer.size());
        return z10;
    }

    private void c0() throws IOException {
        long indexOfElement = this.f3875h.indexOfElement(f3873q);
        Buffer buffer = this.f3876i;
        buffer.skip(indexOfElement != -1 ? indexOfElement + 1 : buffer.size());
    }

    private void d0() throws IOException {
        long indexOfElement = this.f3875h.indexOfElement(f3872p);
        Buffer buffer = this.f3876i;
        if (indexOfElement == -1) {
            indexOfElement = buffer.size();
        }
        buffer.skip(indexOfElement);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int A(JsonReader.a aVar) throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 < 12 || i9 > 15) {
            return -1;
        }
        if (i9 == 15) {
            return N(this.f3880m, aVar);
        }
        int select = this.f3875h.select(aVar.f3869b);
        if (select != -1) {
            this.f3877j = 0;
            this.f3864c[this.f3862a - 1] = aVar.f3868a[select];
            return select;
        }
        String str = this.f3864c[this.f3862a - 1];
        String s10 = s();
        int N = N(s10, aVar);
        if (N == -1) {
            this.f3877j = 15;
            this.f3880m = s10;
            this.f3864c[this.f3862a - 1] = str;
        }
        return N;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void C() throws IOException {
        if (!this.f3867f) {
            int i9 = this.f3877j;
            if (i9 == 0) {
                i9 = M();
            }
            if (i9 == 14) {
                d0();
            } else if (i9 == 13) {
                Y(f3871o);
            } else if (i9 == 12) {
                Y(f3870n);
            } else if (i9 != 15) {
                throw new a("Expected a name but was " + w() + " at path " + getPath());
            }
            this.f3877j = 0;
            this.f3864c[this.f3862a - 1] = "null";
            return;
        }
        throw new a("Cannot skip unexpected " + w() + " at " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void F() throws IOException {
        if (!this.f3867f) {
            int i9 = 0;
            do {
                int i10 = this.f3877j;
                if (i10 == 0) {
                    i10 = M();
                }
                if (i10 == 3) {
                    y(1);
                } else if (i10 == 1) {
                    y(3);
                } else {
                    if (i10 == 4) {
                        i9--;
                        if (i9 >= 0) {
                            this.f3862a--;
                        } else {
                            throw new a("Expected a value but was " + w() + " at path " + getPath());
                        }
                    } else if (i10 == 2) {
                        i9--;
                        if (i9 >= 0) {
                            this.f3862a--;
                        } else {
                            throw new a("Expected a value but was " + w() + " at path " + getPath());
                        }
                    } else if (i10 == 14 || i10 == 10) {
                        d0();
                    } else if (i10 == 9 || i10 == 13) {
                        Y(f3871o);
                    } else if (i10 == 8 || i10 == 12) {
                        Y(f3870n);
                    } else if (i10 == 17) {
                        this.f3876i.skip(this.f3879l);
                    } else if (i10 == 18) {
                        throw new a("Expected a value but was " + w() + " at path " + getPath());
                    }
                    this.f3877j = 0;
                }
                i9++;
                this.f3877j = 0;
            } while (i9 != 0);
            int[] iArr = this.f3865d;
            int i11 = this.f3862a;
            int i12 = i11 - 1;
            iArr[i12] = iArr[i12] + 1;
            this.f3864c[i11 - 1] = "null";
            return;
        }
        throw new a("Cannot skip unexpected " + w() + " at " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void c() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 3) {
            y(1);
            this.f3865d[this.f3862a - 1] = 0;
            this.f3877j = 0;
            return;
        }
        throw new a("Expected BEGIN_ARRAY but was " + w() + " at path " + getPath());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3877j = 0;
        this.f3863b[0] = 8;
        this.f3862a = 1;
        this.f3876i.clear();
        this.f3875h.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void e() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 1) {
            y(3);
            this.f3877j = 0;
            return;
        }
        throw new a("Expected BEGIN_OBJECT but was " + w() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void j() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 4) {
            int i10 = this.f3862a - 1;
            this.f3862a = i10;
            int[] iArr = this.f3865d;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f3877j = 0;
            return;
        }
        throw new a("Expected END_ARRAY but was " + w() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void k() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 2) {
            int i10 = this.f3862a - 1;
            this.f3862a = i10;
            this.f3864c[i10] = null;
            int[] iArr = this.f3865d;
            int i11 = i10 - 1;
            iArr[i11] = iArr[i11] + 1;
            this.f3877j = 0;
            return;
        }
        throw new a("Expected END_OBJECT but was " + w() + " at path " + getPath());
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean o() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        return (i9 == 2 || i9 == 4 || i9 == 18) ? false : true;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean p() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 5) {
            this.f3877j = 0;
            int[] iArr = this.f3865d;
            int i10 = this.f3862a - 1;
            iArr[i10] = iArr[i10] + 1;
            return true;
        } else if (i9 == 6) {
            this.f3877j = 0;
            int[] iArr2 = this.f3865d;
            int i11 = this.f3862a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return false;
        } else {
            throw new a("Expected a boolean but was " + w() + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double q() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 16) {
            this.f3877j = 0;
            int[] iArr = this.f3865d;
            int i10 = this.f3862a - 1;
            iArr[i10] = iArr[i10] + 1;
            return this.f3878k;
        }
        if (i9 == 17) {
            this.f3880m = this.f3876i.readUtf8(this.f3879l);
        } else if (i9 == 9) {
            this.f3880m = T(f3871o);
        } else if (i9 == 8) {
            this.f3880m = T(f3870n);
        } else if (i9 == 10) {
            this.f3880m = U();
        } else if (i9 != 11) {
            throw new a("Expected a double but was " + w() + " at path " + getPath());
        }
        this.f3877j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f3880m);
            if (!this.f3866e && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                throw new b("JSON forbids NaN and infinities: " + parseDouble + " at path " + getPath());
            }
            this.f3880m = null;
            this.f3877j = 0;
            int[] iArr2 = this.f3865d;
            int i11 = this.f3862a - 1;
            iArr2[i11] = iArr2[i11] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new a("Expected a double but was " + this.f3880m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int r() throws IOException {
        String T;
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 16) {
            long j10 = this.f3878k;
            int i10 = (int) j10;
            if (j10 == i10) {
                this.f3877j = 0;
                int[] iArr = this.f3865d;
                int i11 = this.f3862a - 1;
                iArr[i11] = iArr[i11] + 1;
                return i10;
            }
            throw new a("Expected an int but was " + this.f3878k + " at path " + getPath());
        }
        if (i9 == 17) {
            this.f3880m = this.f3876i.readUtf8(this.f3879l);
        } else if (i9 == 9 || i9 == 8) {
            if (i9 == 9) {
                T = T(f3871o);
            } else {
                T = T(f3870n);
            }
            this.f3880m = T;
            try {
                int parseInt = Integer.parseInt(T);
                this.f3877j = 0;
                int[] iArr2 = this.f3865d;
                int i12 = this.f3862a - 1;
                iArr2[i12] = iArr2[i12] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i9 != 11) {
            throw new a("Expected an int but was " + w() + " at path " + getPath());
        }
        this.f3877j = 11;
        try {
            double parseDouble = Double.parseDouble(this.f3880m);
            int i13 = (int) parseDouble;
            if (i13 == parseDouble) {
                this.f3880m = null;
                this.f3877j = 0;
                int[] iArr3 = this.f3865d;
                int i14 = this.f3862a - 1;
                iArr3[i14] = iArr3[i14] + 1;
                return i13;
            }
            throw new a("Expected an int but was " + this.f3880m + " at path " + getPath());
        } catch (NumberFormatException unused2) {
            throw new a("Expected an int but was " + this.f3880m + " at path " + getPath());
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String s() throws IOException {
        String str;
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 14) {
            str = U();
        } else if (i9 == 13) {
            str = T(f3871o);
        } else if (i9 == 12) {
            str = T(f3870n);
        } else if (i9 == 15) {
            str = this.f3880m;
        } else {
            throw new a("Expected a name but was " + w() + " at path " + getPath());
        }
        this.f3877j = 0;
        this.f3864c[this.f3862a - 1] = str;
        return str;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String t() throws IOException {
        String readUtf8;
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        if (i9 == 10) {
            readUtf8 = U();
        } else if (i9 == 9) {
            readUtf8 = T(f3871o);
        } else if (i9 == 8) {
            readUtf8 = T(f3870n);
        } else if (i9 == 11) {
            readUtf8 = this.f3880m;
            this.f3880m = null;
        } else if (i9 == 16) {
            readUtf8 = Long.toString(this.f3878k);
        } else if (i9 == 17) {
            readUtf8 = this.f3876i.readUtf8(this.f3879l);
        } else {
            throw new a("Expected a string but was " + w() + " at path " + getPath());
        }
        this.f3877j = 0;
        int[] iArr = this.f3865d;
        int i10 = this.f3862a - 1;
        iArr[i10] = iArr[i10] + 1;
        return readUtf8;
    }

    public String toString() {
        return "JsonReader(" + this.f3875h + ")";
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token w() throws IOException {
        int i9 = this.f3877j;
        if (i9 == 0) {
            i9 = M();
        }
        switch (i9) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }
}
