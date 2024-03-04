package com.google.re2j;

import com.google.re2j.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f15372b = {0, 9, 11, 1114111};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f15373c = {0, 1114111};

    /* renamed from: a  reason: collision with root package name */
    private final j f15374a = new j();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15375a;

        static {
            int[] iArr = new int[l.b.values().length];
            f15375a = iArr;
            try {
                iArr[l.b.NO_MATCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15375a[l.b.EMPTY_MATCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15375a[l.b.LITERAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15375a[l.b.CHAR_CLASS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f15375a[l.b.ANY_CHAR_NOT_NL.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f15375a[l.b.ANY_CHAR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f15375a[l.b.BEGIN_LINE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f15375a[l.b.END_LINE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f15375a[l.b.BEGIN_TEXT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f15375a[l.b.END_TEXT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f15375a[l.b.WORD_BOUNDARY.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f15375a[l.b.NO_WORD_BOUNDARY.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f15375a[l.b.CAPTURE.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f15375a[l.b.STAR.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f15375a[l.b.PLUS.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f15375a[l.b.QUEST.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f15375a[l.b.CONCAT.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f15375a[l.b.ALTERNATE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final int f15376a;

        /* renamed from: b  reason: collision with root package name */
        int f15377b;

        b() {
            this(0, 0);
        }

        b(int i9) {
            this(i9, 0);
        }

        b(int i9, int i10) {
            this.f15376a = i9;
            this.f15377b = i10;
        }
    }

    private d() {
        h(5);
    }

    private b a(b bVar, b bVar2) {
        if (bVar.f15376a == 0) {
            return bVar2;
        }
        if (bVar2.f15376a == 0) {
            return bVar;
        }
        b h10 = h(1);
        e c10 = this.f15374a.c(h10.f15376a);
        c10.f15379b = bVar.f15376a;
        c10.f15380c = bVar2.f15376a;
        h10.f15377b = this.f15374a.b(bVar.f15377b, bVar2.f15377b);
        return h10;
    }

    private b b(int i9) {
        b h10 = h(3);
        int i10 = h10.f15376a;
        h10.f15377b = i10 << 1;
        this.f15374a.c(i10).f15380c = i9;
        j jVar = this.f15374a;
        int i11 = i9 + 1;
        if (jVar.f15425d < i11) {
            jVar.f15425d = i11;
        }
        return h10;
    }

    private b c(b bVar, b bVar2) {
        int i9;
        if (bVar.f15376a != 0 && (i9 = bVar2.f15376a) != 0) {
            this.f15374a.f(bVar.f15377b, i9);
            return new b(bVar.f15376a, bVar2.f15377b);
        }
        return g();
    }

    private b d(l lVar) {
        b bVar = null;
        int i9 = 0;
        switch (a.f15375a[lVar.f15438a.ordinal()]) {
            case 1:
                return g();
            case 2:
                return i();
            case 3:
                int[] iArr = lVar.f15441d;
                if (iArr.length == 0) {
                    return i();
                }
                int length = iArr.length;
                while (i9 < length) {
                    b l10 = l(iArr[i9], lVar.f15439b);
                    bVar = bVar == null ? l10 : c(bVar, l10);
                    i9++;
                }
                return bVar;
            case 4:
                return m(lVar.f15441d, lVar.f15439b);
            case 5:
                return m(f15372b, 0);
            case 6:
                return m(f15373c, 0);
            case 7:
                return f(1);
            case 8:
                return f(2);
            case 9:
                return f(4);
            case 10:
                return f(8);
            case 11:
                return f(16);
            case 12:
                return f(32);
            case 13:
                return c(c(b(lVar.f15444g << 1), d(lVar.f15440c[0])), b((lVar.f15444g << 1) | 1));
            case 14:
                return n(d(lVar.f15440c[0]), (lVar.f15439b & 32) != 0);
            case 15:
                return j(d(lVar.f15440c[0]), (lVar.f15439b & 32) != 0);
            case 16:
                return k(d(lVar.f15440c[0]), (lVar.f15439b & 32) != 0);
            case 17:
                l[] lVarArr = lVar.f15440c;
                if (lVarArr.length == 0) {
                    return i();
                }
                int length2 = lVarArr.length;
                while (i9 < length2) {
                    b d10 = d(lVarArr[i9]);
                    bVar = bVar == null ? d10 : c(bVar, d10);
                    i9++;
                }
                return bVar;
            case 18:
                l[] lVarArr2 = lVar.f15440c;
                if (lVarArr2.length == 0) {
                    return i();
                }
                int length3 = lVarArr2.length;
                while (i9 < length3) {
                    b d11 = d(lVarArr2[i9]);
                    bVar = bVar == null ? d11 : a(bVar, d11);
                    i9++;
                }
                return bVar;
            default:
                throw new IllegalStateException("regexp: unhandled case in compile");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j e(l lVar) {
        d dVar = new d();
        b d10 = dVar.d(lVar);
        dVar.f15374a.f(d10.f15377b, dVar.h(6).f15376a);
        j jVar = dVar.f15374a;
        jVar.f15424c = d10.f15376a;
        return jVar;
    }

    private b f(int i9) {
        b h10 = h(4);
        this.f15374a.c(h10.f15376a).f15380c = i9;
        h10.f15377b = h10.f15376a << 1;
        return h10;
    }

    private b g() {
        return new b();
    }

    private b h(int i9) {
        this.f15374a.a(i9);
        return new b(this.f15374a.e() - 1);
    }

    private b i() {
        b h10 = h(7);
        h10.f15377b = h10.f15376a << 1;
        return h10;
    }

    private b j(b bVar, boolean z10) {
        return new b(bVar.f15376a, n(bVar, z10).f15377b);
    }

    private b k(b bVar, boolean z10) {
        b h10 = h(1);
        e c10 = this.f15374a.c(h10.f15376a);
        if (z10) {
            c10.f15380c = bVar.f15376a;
            h10.f15377b = h10.f15376a << 1;
        } else {
            c10.f15379b = bVar.f15376a;
            h10.f15377b = (h10.f15376a << 1) | 1;
        }
        h10.f15377b = this.f15374a.b(h10.f15377b, bVar.f15377b);
        return h10;
    }

    private b l(int i9, int i10) {
        return m(new int[]{i9}, i10);
    }

    private b m(int[] iArr, int i9) {
        b h10 = h(8);
        e c10 = this.f15374a.c(h10.f15376a);
        c10.f15381d = iArr;
        int i10 = i9 & 1;
        if (iArr.length != 1 || n.d(iArr[0]) == iArr[0]) {
            i10 &= -2;
        }
        c10.f15380c = i10;
        h10.f15377b = h10.f15376a << 1;
        if (((i10 & 1) == 0 && iArr.length == 1) || (iArr.length == 2 && iArr[0] == iArr[1])) {
            c10.f15378a = 9;
        } else if (iArr.length == 2 && iArr[0] == 0 && iArr[1] == 1114111) {
            c10.f15378a = 10;
        } else if (iArr.length == 4 && iArr[0] == 0 && iArr[1] == 9 && iArr[2] == 11 && iArr[3] == 1114111) {
            c10.f15378a = 11;
        }
        return h10;
    }

    private b n(b bVar, boolean z10) {
        b h10 = h(1);
        e c10 = this.f15374a.c(h10.f15376a);
        if (z10) {
            c10.f15380c = bVar.f15376a;
            h10.f15377b = h10.f15376a << 1;
        } else {
            c10.f15379b = bVar.f15376a;
            h10.f15377b = (h10.f15376a << 1) | 1;
        }
        this.f15374a.f(bVar.f15377b, h10.f15376a);
        return h10;
    }
}
