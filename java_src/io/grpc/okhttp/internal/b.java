package io.grpc.okhttp.internal;

import javax.security.auth.x500.X500Principal;
/* loaded from: classes5.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f45291a;

    /* renamed from: b  reason: collision with root package name */
    private final int f45292b;

    /* renamed from: c  reason: collision with root package name */
    private int f45293c;

    /* renamed from: d  reason: collision with root package name */
    private int f45294d;

    /* renamed from: e  reason: collision with root package name */
    private int f45295e;

    /* renamed from: f  reason: collision with root package name */
    private int f45296f;

    /* renamed from: g  reason: collision with root package name */
    private char[] f45297g;

    public b(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f45291a = name;
        this.f45292b = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        return new java.lang.String(r1, r2, r8.f45296f - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String a() {
        /*
            r8 = this;
            int r0 = r8.f45293c
            r8.f45294d = r0
            r8.f45295e = r0
        L6:
            int r0 = r8.f45293c
            int r1 = r8.f45292b
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f45297g
            int r2 = r8.f45294d
            int r3 = r8.f45295e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.f45297g
            char r2 = r1[r0]
            r3 = 44
            r4 = 43
            r5 = 59
            r6 = 32
            if (r2 == r6) goto L5e
            if (r2 == r5) goto L53
            r5 = 92
            if (r2 == r5) goto L40
            if (r2 == r4) goto L53
            if (r2 == r3) goto L53
            int r2 = r8.f45295e
            int r3 = r2 + 1
            r8.f45295e = r3
            char r3 = r1[r0]
            r1[r2] = r3
            int r0 = r0 + 1
            r8.f45293c = r0
            goto L6
        L40:
            int r0 = r8.f45295e
            int r2 = r0 + 1
            r8.f45295e = r2
            char r2 = r8.d()
            r1[r0] = r2
            int r0 = r8.f45293c
            int r0 = r0 + 1
            r8.f45293c = r0
            goto L6
        L53:
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f45294d
            int r3 = r8.f45295e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L5e:
            int r2 = r8.f45295e
            r8.f45296f = r2
            int r0 = r0 + 1
            r8.f45293c = r0
            int r0 = r2 + 1
            r8.f45295e = r0
            r1[r2] = r6
        L6c:
            int r0 = r8.f45293c
            int r1 = r8.f45292b
            if (r0 >= r1) goto L85
            char[] r2 = r8.f45297g
            char r7 = r2[r0]
            if (r7 != r6) goto L85
            int r1 = r8.f45295e
            int r7 = r1 + 1
            r8.f45295e = r7
            r2[r1] = r6
            int r0 = r0 + 1
            r8.f45293c = r0
            goto L6c
        L85:
            if (r0 == r1) goto L95
            char[] r1 = r8.f45297g
            char r2 = r1[r0]
            if (r2 == r3) goto L95
            char r2 = r1[r0]
            if (r2 == r4) goto L95
            char r0 = r1[r0]
            if (r0 != r5) goto L6
        L95:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.f45297g
            int r2 = r8.f45294d
            int r3 = r8.f45296f
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.okhttp.internal.b.a():java.lang.String");
    }

    private int c(int i9) {
        int i10;
        int i11;
        int i12 = i9 + 1;
        if (i12 < this.f45292b) {
            char[] cArr = this.f45297g;
            char c10 = cArr[i9];
            if (c10 >= '0' && c10 <= '9') {
                i10 = c10 - '0';
            } else if (c10 >= 'a' && c10 <= 'f') {
                i10 = c10 - 'W';
            } else if (c10 < 'A' || c10 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f45291a);
            } else {
                i10 = c10 - '7';
            }
            char c11 = cArr[i12];
            if (c11 >= '0' && c11 <= '9') {
                i11 = c11 - '0';
            } else if (c11 >= 'a' && c11 <= 'f') {
                i11 = c11 - 'W';
            } else if (c11 < 'A' || c11 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f45291a);
            } else {
                i11 = c11 - '7';
            }
            return (i10 << 4) + i11;
        }
        throw new IllegalStateException("Malformed DN: " + this.f45291a);
    }

    private char d() {
        int i9 = this.f45293c + 1;
        this.f45293c = i9;
        if (i9 != this.f45292b) {
            char[] cArr = this.f45297g;
            char c10 = cArr[i9];
            if (c10 != ' ' && c10 != '%' && c10 != '\\' && c10 != '_' && c10 != '\"' && c10 != '#') {
                switch (c10) {
                    case '*':
                    case '+':
                    case ',':
                        break;
                    default:
                        switch (c10) {
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                                break;
                            default:
                                return e();
                        }
                }
            }
            return cArr[i9];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f45291a);
    }

    private char e() {
        int i9;
        int i10;
        int c10 = c(this.f45293c);
        this.f45293c++;
        if (c10 < 128) {
            return (char) c10;
        }
        if (c10 < 192 || c10 > 247) {
            return '?';
        }
        if (c10 <= 223) {
            i10 = c10 & 31;
            i9 = 1;
        } else if (c10 <= 239) {
            i9 = 2;
            i10 = c10 & 15;
        } else {
            i9 = 3;
            i10 = c10 & 7;
        }
        for (int i11 = 0; i11 < i9; i11++) {
            int i12 = this.f45293c + 1;
            this.f45293c = i12;
            if (i12 == this.f45292b || this.f45297g[i12] != '\\') {
                return '?';
            }
            int i13 = i12 + 1;
            this.f45293c = i13;
            int c11 = c(i13);
            this.f45293c++;
            if ((c11 & 192) != 128) {
                return '?';
            }
            i10 = (i10 << 6) + (c11 & 63);
        }
        return (char) i10;
    }

    private String f() {
        int i9;
        int i10 = this.f45293c;
        if (i10 + 4 < this.f45292b) {
            this.f45294d = i10;
            this.f45293c = i10 + 1;
            while (true) {
                i9 = this.f45293c;
                if (i9 == this.f45292b) {
                    break;
                }
                char[] cArr = this.f45297g;
                if (cArr[i9] == '+' || cArr[i9] == ',' || cArr[i9] == ';') {
                    break;
                } else if (cArr[i9] == ' ') {
                    this.f45295e = i9;
                    this.f45293c = i9 + 1;
                    while (true) {
                        int i11 = this.f45293c;
                        if (i11 >= this.f45292b || this.f45297g[i11] != ' ') {
                            break;
                        }
                        this.f45293c = i11 + 1;
                    }
                } else {
                    if (cArr[i9] >= 'A' && cArr[i9] <= 'F') {
                        cArr[i9] = (char) (cArr[i9] + ' ');
                    }
                    this.f45293c = i9 + 1;
                }
            }
            this.f45295e = i9;
            int i12 = this.f45295e;
            int i13 = this.f45294d;
            int i14 = i12 - i13;
            if (i14 >= 5 && (i14 & 1) != 0) {
                int i15 = i14 / 2;
                byte[] bArr = new byte[i15];
                int i16 = i13 + 1;
                for (int i17 = 0; i17 < i15; i17++) {
                    bArr[i17] = (byte) c(i16);
                    i16 += 2;
                }
                return new String(this.f45297g, this.f45294d, i14);
            }
            throw new IllegalStateException("Unexpected end of DN: " + this.f45291a);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f45291a);
    }

    private String g() {
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        while (true) {
            i9 = this.f45293c;
            i10 = this.f45292b;
            if (i9 >= i10 || this.f45297g[i9] != ' ') {
                break;
            }
            this.f45293c = i9 + 1;
        }
        if (i9 == i10) {
            return null;
        }
        this.f45294d = i9;
        this.f45293c = i9 + 1;
        while (true) {
            i11 = this.f45293c;
            i12 = this.f45292b;
            if (i11 >= i12) {
                break;
            }
            char[] cArr = this.f45297g;
            if (cArr[i11] == '=' || cArr[i11] == ' ') {
                break;
            }
            this.f45293c = i11 + 1;
        }
        if (i11 < i12) {
            this.f45295e = i11;
            if (this.f45297g[i11] == ' ') {
                while (true) {
                    i13 = this.f45293c;
                    i14 = this.f45292b;
                    if (i13 >= i14) {
                        break;
                    }
                    char[] cArr2 = this.f45297g;
                    if (cArr2[i13] == '=' || cArr2[i13] != ' ') {
                        break;
                    }
                    this.f45293c = i13 + 1;
                }
                if (this.f45297g[i13] != '=' || i13 == i14) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f45291a);
                }
            }
            this.f45293c++;
            while (true) {
                int i15 = this.f45293c;
                if (i15 >= this.f45292b || this.f45297g[i15] != ' ') {
                    break;
                }
                this.f45293c = i15 + 1;
            }
            int i16 = this.f45295e;
            int i17 = this.f45294d;
            if (i16 - i17 > 4) {
                char[] cArr3 = this.f45297g;
                if (cArr3[i17 + 3] == '.' && ((cArr3[i17] == 'O' || cArr3[i17] == 'o') && ((cArr3[i17 + 1] == 'I' || cArr3[i17 + 1] == 'i') && (cArr3[i17 + 2] == 'D' || cArr3[i17 + 2] == 'd')))) {
                    this.f45294d = i17 + 4;
                }
            }
            char[] cArr4 = this.f45297g;
            int i18 = this.f45294d;
            return new String(cArr4, i18, i16 - i18);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f45291a);
    }

    private String h() {
        int i9 = this.f45293c + 1;
        this.f45293c = i9;
        this.f45294d = i9;
        this.f45295e = i9;
        while (true) {
            int i10 = this.f45293c;
            if (i10 != this.f45292b) {
                char[] cArr = this.f45297g;
                if (cArr[i10] == '\"') {
                    this.f45293c = i10 + 1;
                    while (true) {
                        int i11 = this.f45293c;
                        if (i11 >= this.f45292b || this.f45297g[i11] != ' ') {
                            break;
                        }
                        this.f45293c = i11 + 1;
                    }
                    char[] cArr2 = this.f45297g;
                    int i12 = this.f45294d;
                    return new String(cArr2, i12, this.f45295e - i12);
                }
                if (cArr[i10] == '\\') {
                    cArr[this.f45295e] = d();
                } else {
                    cArr[this.f45295e] = cArr[i10];
                }
                this.f45293c++;
                this.f45295e++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.f45291a);
            }
        }
    }

    public String b(String str) {
        String h10;
        this.f45293c = 0;
        this.f45294d = 0;
        this.f45295e = 0;
        this.f45296f = 0;
        this.f45297g = this.f45291a.toCharArray();
        String g10 = g();
        if (g10 == null) {
            return null;
        }
        do {
            int i9 = this.f45293c;
            if (i9 == this.f45292b) {
                return null;
            }
            char c10 = this.f45297g[i9];
            if (c10 == '\"') {
                h10 = h();
            } else if (c10 != '#') {
                h10 = (c10 == '+' || c10 == ',' || c10 == ';') ? "" : a();
            } else {
                h10 = f();
            }
            if (str.equalsIgnoreCase(g10)) {
                return h10;
            }
            int i10 = this.f45293c;
            if (i10 >= this.f45292b) {
                return null;
            }
            char[] cArr = this.f45297g;
            if (cArr[i10] != ',' && cArr[i10] != ';' && cArr[i10] != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f45291a);
            }
            this.f45293c = i10 + 1;
            g10 = g();
        } while (g10 != null);
        throw new IllegalStateException("Malformed DN: " + this.f45291a);
    }
}
