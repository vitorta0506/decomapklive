package com.google.re2j;

import java.util.Map;
import java.util.Objects;
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final Pattern f15400a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f15401b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Integer> f15402c;

    /* renamed from: d  reason: collision with root package name */
    private final int f15403d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f15404e;

    /* renamed from: f  reason: collision with root package name */
    private int f15405f;

    /* renamed from: g  reason: collision with root package name */
    private int f15406g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f15407h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f15408i;

    /* renamed from: j  reason: collision with root package name */
    private int f15409j;

    private h(Pattern pattern) {
        Objects.requireNonNull(pattern, "pattern is null");
        this.f15400a = pattern;
        k re2 = pattern.re2();
        int e10 = re2.e();
        this.f15403d = e10;
        this.f15401b = new int[(e10 * 2) + 2];
        this.f15402c = re2.f15436k;
    }

    private void c(StringBuilder sb2, String str) {
        int i9;
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length - 1) {
            if (str.charAt(i10) == '\\') {
                if (i11 < i10) {
                    sb2.append(str.substring(i11, i10));
                }
                i10++;
                i11 = i10;
            } else if (str.charAt(i10) != '$') {
                continue;
            } else {
                int i12 = i10 + 1;
                char charAt = str.charAt(i12);
                if ('0' <= charAt && charAt <= '9') {
                    int i13 = charAt - '0';
                    if (i11 < i10) {
                        sb2.append(str.substring(i11, i10));
                    }
                    int i14 = i10 + 2;
                    while (i14 < length) {
                        char charAt2 = str.charAt(i14);
                        if (charAt2 < '0' || charAt2 > '9' || ((i13 * 10) + charAt2) - 48 > this.f15403d) {
                            break;
                        }
                        i14++;
                        i13 = i9;
                    }
                    if (i13 <= this.f15403d) {
                        String i15 = i(i13);
                        if (i15 != null) {
                            sb2.append(i15);
                        }
                        i11 = i14;
                        i10 = i14 - 1;
                    } else {
                        throw new IndexOutOfBoundsException("n > number of groups: " + i13);
                    }
                } else if (charAt != '{') {
                    continue;
                } else {
                    if (i11 < i10) {
                        sb2.append(str.substring(i11, i10));
                    }
                    int i16 = i12 + 1;
                    int i17 = i16;
                    while (i17 < str.length() && str.charAt(i17) != '}' && str.charAt(i17) != ' ') {
                        i17++;
                    }
                    if (i17 != str.length() && str.charAt(i17) == '}') {
                        sb2.append(j(str.substring(i16, i17)));
                        i11 = i17 + 1;
                        i10 = i12;
                    } else {
                        throw new IllegalArgumentException("named capture group is missing trailing '}'");
                    }
                }
            }
            i10++;
        }
        if (i11 < length) {
            sb2.append(str.substring(i11, length));
        }
    }

    private boolean h(int i9, int i10) {
        if (this.f15400a.re2().d(this.f15404e, i9, this.f15405f, i10, this.f15401b, 1)) {
            this.f15407h = true;
            this.f15408i = false;
            this.f15409j = i10;
            return true;
        }
        return false;
    }

    private void l(int i9) {
        if (i9 >= 0 && i9 <= this.f15403d) {
            if (this.f15407h) {
                if (i9 == 0 || this.f15408i) {
                    return;
                }
                int i10 = this.f15401b[1] + 1;
                int i11 = this.f15405f;
                int i12 = i10 > i11 ? i11 : i10;
                k re2 = this.f15400a.re2();
                CharSequence charSequence = this.f15404e;
                int[] iArr = this.f15401b;
                if (re2.d(charSequence, iArr[0], i12, this.f15409j, iArr, this.f15403d + 1)) {
                    this.f15408i = true;
                    return;
                }
                throw new IllegalStateException("inconsistency in matching group data");
            }
            throw new IllegalStateException("perhaps no match attempted");
        }
        throw new IndexOutOfBoundsException("Group index out of bounds: " + i9);
    }

    private String n(String str, boolean z10) {
        p();
        StringBuffer stringBuffer = new StringBuffer();
        while (g()) {
            a(stringBuffer, str);
            if (!z10) {
                break;
            }
        }
        d(stringBuffer);
        return stringBuffer.toString();
    }

    public h a(StringBuffer stringBuffer, String str) {
        StringBuilder sb2 = new StringBuilder();
        b(sb2, str);
        stringBuffer.append((CharSequence) sb2);
        return this;
    }

    public h b(StringBuilder sb2, String str) {
        int r10 = r();
        int e10 = e();
        int i9 = this.f15406g;
        if (i9 < r10) {
            sb2.append(t(i9, r10));
        }
        this.f15406g = e10;
        c(sb2, str);
        return this;
    }

    public StringBuffer d(StringBuffer stringBuffer) {
        stringBuffer.append(t(this.f15406g, this.f15405f));
        return stringBuffer;
    }

    public int e() {
        return f(0);
    }

    public int f(int i9) {
        l(i9);
        return this.f15401b[(i9 * 2) + 1];
    }

    public boolean g() {
        int i9;
        if (this.f15407h) {
            int[] iArr = this.f15401b;
            i9 = iArr[1];
            if (iArr[0] == iArr[1]) {
                i9++;
            }
        } else {
            i9 = 0;
        }
        return h(i9, 0);
    }

    public String i(int i9) {
        int s10 = s(i9);
        int f10 = f(i9);
        if (s10 >= 0 || f10 >= 0) {
            return t(s10, f10);
        }
        return null;
    }

    public String j(String str) {
        Integer num = this.f15402c.get(str);
        if (num != null) {
            return i(num.intValue());
        }
        throw new IllegalArgumentException("group '" + str + "' not found");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.f15405f;
    }

    public boolean m() {
        return h(0, 2);
    }

    public String o(String str) {
        return n(str, true);
    }

    public h p() {
        this.f15405f = this.f15404e.length();
        this.f15406g = 0;
        this.f15407h = false;
        this.f15408i = false;
        return this;
    }

    public h q(CharSequence charSequence) {
        Objects.requireNonNull(charSequence, "input is null");
        this.f15404e = charSequence;
        p();
        return this;
    }

    public int r() {
        return s(0);
    }

    public int s(int i9) {
        l(i9);
        return this.f15401b[i9 * 2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String t(int i9, int i10) {
        return this.f15404e.subSequence(i9, i10).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Pattern pattern, CharSequence charSequence) {
        this(pattern);
        q(charSequence);
    }
}
