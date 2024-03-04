package com.google.re2j;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.Arrays;
import java.util.Map;
import kotlin.text.Typography;
import org.light.utils.IOUtils;
/* loaded from: classes3.dex */
class l {

    /* renamed from: j  reason: collision with root package name */
    static final l[] f15437j = new l[0];

    /* renamed from: a  reason: collision with root package name */
    b f15438a;

    /* renamed from: b  reason: collision with root package name */
    int f15439b;

    /* renamed from: c  reason: collision with root package name */
    l[] f15440c;

    /* renamed from: d  reason: collision with root package name */
    int[] f15441d;

    /* renamed from: e  reason: collision with root package name */
    int f15442e;

    /* renamed from: f  reason: collision with root package name */
    int f15443f;

    /* renamed from: g  reason: collision with root package name */
    int f15444g;

    /* renamed from: h  reason: collision with root package name */
    String f15445h;

    /* renamed from: i  reason: collision with root package name */
    Map<String, Integer> f15446i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15447a;

        static {
            int[] iArr = new int[b.values().length];
            f15447a = iArr;
            try {
                iArr[b.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15447a[b.PLUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15447a[b.QUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15447a[b.REPEAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15447a[b.NO_MATCH.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15447a[b.EMPTY_MATCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15447a[b.CONCAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15447a[b.ALTERNATE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15447a[b.LITERAL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15447a[b.ANY_CHAR_NOT_NL.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15447a[b.ANY_CHAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15447a[b.CAPTURE.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15447a[b.BEGIN_TEXT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15447a[b.END_TEXT.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15447a[b.BEGIN_LINE.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15447a[b.END_LINE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15447a[b.WORD_BOUNDARY.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f15447a[b.NO_WORD_BOUNDARY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f15447a[b.CHAR_CLASS.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum b {
        NO_MATCH,
        EMPTY_MATCH,
        LITERAL,
        CHAR_CLASS,
        ANY_CHAR_NOT_NL,
        ANY_CHAR,
        BEGIN_LINE,
        END_LINE,
        BEGIN_TEXT,
        END_TEXT,
        WORD_BOUNDARY,
        NO_WORD_BOUNDARY,
        CAPTURE,
        STAR,
        PLUS,
        QUEST,
        REPEAT,
        CONCAT,
        ALTERNATE,
        LEFT_PAREN,
        VERTICAL_BAR;

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean a() {
            return ordinal() >= LEFT_PAREN.ordinal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(b bVar) {
        this.f15438a = bVar;
    }

    private void a(StringBuilder sb2) {
        int[] iArr = a.f15447a;
        int i9 = 0;
        switch (iArr[this.f15438a.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                l lVar = this.f15440c[0];
                if (lVar.f15438a.ordinal() <= b.CAPTURE.ordinal() && (lVar.f15438a != b.LITERAL || lVar.f15441d.length <= 1)) {
                    lVar.a(sb2);
                } else {
                    sb2.append("(?:");
                    lVar.a(sb2);
                    sb2.append(')');
                }
                int i10 = iArr[this.f15438a.ordinal()];
                if (i10 == 1) {
                    sb2.append('*');
                } else if (i10 == 2) {
                    sb2.append('+');
                } else if (i10 == 3) {
                    sb2.append('?');
                } else if (i10 == 4) {
                    sb2.append('{');
                    sb2.append(this.f15442e);
                    if (this.f15442e != this.f15443f) {
                        sb2.append(',');
                        int i11 = this.f15443f;
                        if (i11 >= 0) {
                            sb2.append(i11);
                        }
                    }
                    sb2.append('}');
                }
                if ((this.f15439b & 32) != 0) {
                    sb2.append('?');
                    return;
                }
                return;
            case 5:
                sb2.append("[^\\x00-\\x{10FFFF}]");
                return;
            case 6:
                sb2.append("(?:)");
                return;
            case 7:
                l[] lVarArr = this.f15440c;
                int length = lVarArr.length;
                while (i9 < length) {
                    l lVar2 = lVarArr[i9];
                    if (lVar2.f15438a == b.ALTERNATE) {
                        sb2.append("(?:");
                        lVar2.a(sb2);
                        sb2.append(')');
                    } else {
                        lVar2.a(sb2);
                    }
                    i9++;
                }
                return;
            case 8:
                l[] lVarArr2 = this.f15440c;
                int length2 = lVarArr2.length;
                String str = "";
                while (i9 < length2) {
                    l lVar3 = lVarArr2[i9];
                    sb2.append(str);
                    lVar3.a(sb2);
                    i9++;
                    str = HiAnalyticsConstant.REPORT_VAL_SEPARATOR;
                }
                return;
            case 9:
                if ((this.f15439b & 1) != 0) {
                    sb2.append("(?i:");
                }
                int[] iArr2 = this.f15441d;
                int length3 = iArr2.length;
                while (i9 < length3) {
                    p.b(sb2, iArr2[i9]);
                    i9++;
                }
                if ((this.f15439b & 1) != 0) {
                    sb2.append(')');
                    return;
                }
                return;
            case 10:
                sb2.append("(?-s:.)");
                return;
            case 11:
                sb2.append("(?s:.)");
                return;
            case 12:
                String str2 = this.f15445h;
                if (str2 != null && !str2.isEmpty()) {
                    sb2.append("(?P<");
                    sb2.append(this.f15445h);
                    sb2.append(">");
                } else {
                    sb2.append('(');
                }
                l[] lVarArr3 = this.f15440c;
                if (lVarArr3[0].f15438a != b.EMPTY_MATCH) {
                    lVarArr3[0].a(sb2);
                }
                sb2.append(')');
                return;
            case 13:
                sb2.append("\\A");
                return;
            case 14:
                if ((this.f15439b & 256) != 0) {
                    sb2.append("(?-m:$)");
                    return;
                } else {
                    sb2.append("\\z");
                    return;
                }
            case 15:
                sb2.append('^');
                return;
            case 16:
                sb2.append(Typography.dollar);
                return;
            case 17:
                sb2.append("\\b");
                return;
            case 18:
                sb2.append("\\B");
                return;
            case 19:
                if (this.f15441d.length % 2 != 0) {
                    sb2.append("[invalid char class]");
                    return;
                }
                sb2.append('[');
                int[] iArr3 = this.f15441d;
                if (iArr3.length == 0) {
                    sb2.append("^\\x00-\\x{10FFFF}");
                } else if (iArr3[0] == 0 && iArr3[iArr3.length - 1] == 1114111) {
                    sb2.append('^');
                    int i12 = 1;
                    while (true) {
                        int[] iArr4 = this.f15441d;
                        if (i12 < iArr4.length - 1) {
                            int i13 = iArr4[i12] + 1;
                            int i14 = iArr4[i12 + 1] - 1;
                            c(sb2, i13);
                            p.b(sb2, i13);
                            if (i13 != i14) {
                                sb2.append('-');
                                c(sb2, i14);
                                p.b(sb2, i14);
                            }
                            i12 += 2;
                        }
                    }
                } else {
                    while (true) {
                        int[] iArr5 = this.f15441d;
                        if (i9 < iArr5.length) {
                            int i15 = iArr5[i9];
                            int i16 = iArr5[i9 + 1];
                            c(sb2, i15);
                            p.b(sb2, i15);
                            if (i15 != i16) {
                                sb2.append('-');
                                c(sb2, i16);
                                p.b(sb2, i16);
                            }
                            i9 += 2;
                        }
                    }
                }
                sb2.append(']');
                return;
            default:
                sb2.append(this.f15438a);
                return;
        }
    }

    private static void c(StringBuilder sb2, int i9) {
        if (i9 == 45) {
            sb2.append(IOUtils.DIR_SEPARATOR_WINDOWS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int i9 = this.f15438a == b.CAPTURE ? this.f15444g : 0;
        l[] lVarArr = this.f15440c;
        if (lVarArr != null) {
            for (l lVar : lVarArr) {
                int b10 = lVar.b();
                if (i9 < b10) {
                    i9 = b10;
                }
            }
        }
        return i9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f15439b = 0;
        this.f15440c = f15437j;
        this.f15441d = null;
        this.f15443f = 0;
        this.f15442e = 0;
        this.f15444g = 0;
        this.f15445h = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0038, code lost:
        if (r0 != 19) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.re2j.l.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        int i9;
        int hashCode;
        int i10;
        int deepHashCode;
        int hashCode2 = this.f15438a.hashCode();
        int i11 = a.f15447a[this.f15438a.ordinal()];
        if (i11 == 1 || i11 == 2 || i11 == 3) {
            i9 = (this.f15439b & 32) * 31;
            hashCode = this.f15440c[0].hashCode();
        } else if (i11 != 4) {
            if (i11 != 7 && i11 != 8) {
                if (i11 != 9) {
                    if (i11 == 12) {
                        int i12 = this.f15444g * 31;
                        String str = this.f15445h;
                        i9 = i12 + ((str != null ? str.hashCode() : 0) * 31);
                        hashCode = this.f15440c[0].hashCode();
                    } else if (i11 == 14) {
                        deepHashCode = this.f15439b & 256;
                    } else if (i11 != 19) {
                        return hashCode2;
                    }
                }
                deepHashCode = Arrays.hashCode(this.f15441d);
            } else {
                deepHashCode = Arrays.deepHashCode(this.f15440c);
            }
            i10 = deepHashCode * 31;
            return hashCode2 + i10;
        } else {
            i9 = (this.f15442e * 31) + (this.f15443f * 31);
            hashCode = this.f15440c[0].hashCode();
        }
        i10 = i9 + (hashCode * 31);
        return hashCode2 + i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        a(sb2);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(l lVar) {
        this.f15438a = lVar.f15438a;
        this.f15439b = lVar.f15439b;
        this.f15440c = lVar.f15440c;
        this.f15441d = lVar.f15441d;
        this.f15442e = lVar.f15442e;
        this.f15443f = lVar.f15443f;
        this.f15444g = lVar.f15444g;
        this.f15445h = lVar.f15445h;
        this.f15446i = lVar.f15446i;
    }
}
