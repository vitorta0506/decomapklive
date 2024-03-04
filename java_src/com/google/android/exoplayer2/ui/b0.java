package com.google.android.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import x2.b;
/* loaded from: classes2.dex */
final class b0 {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(Object obj) {
        return !(obj instanceof b3.b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    public static void e(b.C0686b c0686b) {
        c0686b.b();
        if (c0686b.e() instanceof Spanned) {
            if (!(c0686b.e() instanceof Spannable)) {
                c0686b.o(SpannableString.valueOf(c0686b.e()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.e(c0686b.e()), new com.google.common.base.q() { // from class: com.google.android.exoplayer2.ui.z
                @Override // com.google.common.base.q
                public final boolean apply(Object obj) {
                    boolean c10;
                    c10 = b0.c(obj);
                    return c10;
                }

                @Override // com.google.common.base.q, java.util.function.Predicate
                public /* synthetic */ boolean test(Object obj) {
                    return com.google.common.base.p.a(this, obj);
                }
            });
        }
        f(c0686b);
    }

    public static void f(b.C0686b c0686b) {
        c0686b.q(-3.4028235E38f, Integer.MIN_VALUE);
        if (c0686b.e() instanceof Spanned) {
            if (!(c0686b.e() instanceof Spannable)) {
                c0686b.o(SpannableString.valueOf(c0686b.e()));
            }
            g((Spannable) com.google.android.exoplayer2.util.a.e(c0686b.e()), new com.google.common.base.q() { // from class: com.google.android.exoplayer2.ui.a0
                @Override // com.google.common.base.q
                public final boolean apply(Object obj) {
                    boolean d10;
                    d10 = b0.d(obj);
                    return d10;
                }

                @Override // com.google.common.base.q, java.util.function.Predicate
                public /* synthetic */ boolean test(Object obj) {
                    return com.google.common.base.p.a(this, obj);
                }
            });
        }
    }

    private static void g(Spannable spannable, com.google.common.base.q<Object> qVar) {
        Object[] spans;
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (qVar.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }

    public static float h(int i9, float f10, int i10, int i11) {
        float f11;
        if (f10 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i9 == 0) {
            f11 = i11;
        } else if (i9 != 1) {
            if (i9 != 2) {
                return -3.4028235E38f;
            }
            return f10;
        } else {
            f11 = i10;
        }
        return f10 * f11;
    }
}
