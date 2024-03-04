package com.google.android.gms.measurement.internal;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class u9 {

    /* renamed from: a  reason: collision with root package name */
    final String f9901a;

    /* renamed from: b  reason: collision with root package name */
    final int f9902b;

    /* renamed from: c  reason: collision with root package name */
    Boolean f9903c;

    /* renamed from: d  reason: collision with root package name */
    Boolean f9904d;

    /* renamed from: e  reason: collision with root package name */
    Long f9905e;

    /* renamed from: f  reason: collision with root package name */
    Long f9906f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u9(String str, int i9) {
        this.f9901a = str;
        this.f9902b = i9;
    }

    private static Boolean d(String str, int i9, boolean z10, String str2, List list, String str3, j3 j3Var) {
        if (i9 == 7) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z10 && i9 != 2) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (i9 - 1) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z10 ? 66 : 0).matcher(str).matches());
                } catch (PatternSyntaxException unused) {
                    if (j3Var != null) {
                        j3Var.w().b("Invalid regular expression in REGEXP audience filter. expression", str3);
                    }
                    return null;
                }
            case 2:
                return Boolean.valueOf(str.startsWith(str2));
            case 3:
                return Boolean.valueOf(str.endsWith(str2));
            case 4:
                return Boolean.valueOf(str.contains(str2));
            case 5:
                return Boolean.valueOf(str.equals(str2));
            case 6:
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str));
            default:
                return null;
        }
    }

    static Boolean e(BigDecimal bigDecimal, com.google.android.gms.internal.measurement.i3 i3Var, double d10) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        com.google.android.gms.common.internal.p.j(i3Var);
        if (i3Var.C()) {
            if (i3Var.H() != 1) {
                if (i3Var.H() == 5) {
                    if (!i3Var.G() || !i3Var.F()) {
                        return null;
                    }
                } else if (!i3Var.D()) {
                    return null;
                }
                int H = i3Var.H();
                if (i3Var.H() == 5) {
                    if (g9.N(i3Var.A()) && g9.N(i3Var.z())) {
                        try {
                            BigDecimal bigDecimal5 = new BigDecimal(i3Var.A());
                            bigDecimal4 = new BigDecimal(i3Var.z());
                            bigDecimal3 = bigDecimal5;
                            bigDecimal2 = null;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    return null;
                } else if (!g9.N(i3Var.y())) {
                    return null;
                } else {
                    try {
                        bigDecimal2 = new BigDecimal(i3Var.y());
                        bigDecimal3 = null;
                        bigDecimal4 = null;
                    } catch (NumberFormatException unused2) {
                    }
                }
                if (H == 5) {
                    if (bigDecimal3 == null) {
                        return null;
                    }
                } else if (bigDecimal2 == null) {
                    return null;
                }
                int i9 = H - 1;
                if (i9 == 1) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
                } else if (i9 == 2) {
                    if (bigDecimal2 == null) {
                        return null;
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                } else if (i9 != 3) {
                    if (i9 == 4 && bigDecimal3 != null) {
                        return Boolean.valueOf((bigDecimal.compareTo(bigDecimal3) < 0 || bigDecimal.compareTo(bigDecimal4) > 0) ? false : false);
                    }
                    return null;
                } else if (bigDecimal2 == null) {
                    return null;
                } else {
                    if (d10 != 0.0d) {
                        return Boolean.valueOf((bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d10).multiply(new BigDecimal(2)))) <= 0 || bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d10).multiply(new BigDecimal(2)))) >= 0) ? false : false);
                    }
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean f(String str, com.google.android.gms.internal.measurement.p3 p3Var, j3 j3Var) {
        String z10;
        List list;
        com.google.android.gms.common.internal.p.j(p3Var);
        if (str == null || !p3Var.E() || p3Var.F() == 1) {
            return null;
        }
        if (p3Var.F() == 7) {
            if (p3Var.w() == 0) {
                return null;
            }
        } else if (!p3Var.D()) {
            return null;
        }
        int F = p3Var.F();
        boolean B = p3Var.B();
        if (!B && F != 2 && F != 7) {
            z10 = p3Var.z().toUpperCase(Locale.ENGLISH);
        } else {
            z10 = p3Var.z();
        }
        String str2 = z10;
        if (p3Var.w() == 0) {
            list = null;
        } else {
            List<String> A = p3Var.A();
            if (!B) {
                ArrayList arrayList = new ArrayList(A.size());
                for (String str3 : A) {
                    arrayList.add(str3.toUpperCase(Locale.ENGLISH));
                }
                A = Collections.unmodifiableList(arrayList);
            }
            list = A;
        }
        return d(str, F, B, str2, list, F == 2 ? str2 : null, j3Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean g(double d10, com.google.android.gms.internal.measurement.i3 i3Var) {
        try {
            return e(new BigDecimal(d10), i3Var, Math.ulp(d10));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean h(long j10, com.google.android.gms.internal.measurement.i3 i3Var) {
        try {
            return e(new BigDecimal(j10), i3Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean i(String str, com.google.android.gms.internal.measurement.i3 i3Var) {
        if (g9.N(str)) {
            try {
                return e(new BigDecimal(str), i3Var, 0.0d);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean j(Boolean bool, boolean z10) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean c();
}
