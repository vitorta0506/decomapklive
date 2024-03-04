package e3;

import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import java.util.ArrayDeque;
import java.util.Map;
import org.light.utils.IOUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f {
    public static void a(Spannable spannable, int i9, int i10, g gVar, @Nullable d dVar, Map<String, g> map, int i11) {
        d e10;
        g f10;
        int i12;
        if (gVar.l() != -1) {
            spannable.setSpan(new StyleSpan(gVar.l()), i9, i10, 33);
        }
        if (gVar.s()) {
            spannable.setSpan(new StrikethroughSpan(), i9, i10, 33);
        }
        if (gVar.t()) {
            spannable.setSpan(new UnderlineSpan(), i9, i10, 33);
        }
        if (gVar.q()) {
            b3.d.a(spannable, new ForegroundColorSpan(gVar.c()), i9, i10, 33);
        }
        if (gVar.p()) {
            b3.d.a(spannable, new BackgroundColorSpan(gVar.b()), i9, i10, 33);
        }
        if (gVar.d() != null) {
            b3.d.a(spannable, new TypefaceSpan(gVar.d()), i9, i10, 33);
        }
        if (gVar.o() != null) {
            b bVar = (b) com.google.android.exoplayer2.util.a.e(gVar.o());
            int i13 = bVar.f38368a;
            if (i13 == -1) {
                i13 = (i11 == 2 || i11 == 1) ? 3 : 1;
                i12 = 1;
            } else {
                i12 = bVar.f38369b;
            }
            int i14 = bVar.f38370c;
            if (i14 == -2) {
                i14 = 1;
            }
            b3.d.a(spannable, new b3.e(i13, i12, i14), i9, i10, 33);
        }
        int j10 = gVar.j();
        if (j10 == 2) {
            d d10 = d(dVar, map);
            if (d10 != null && (e10 = e(d10, map)) != null) {
                if (e10.g() == 1 && e10.f(0).f38389b != null) {
                    String str = (String) l0.j(e10.f(0).f38389b);
                    g f11 = f(e10.f38393f, e10.l(), map);
                    int i15 = f11 != null ? f11.i() : -1;
                    if (i15 == -1 && (f10 = f(d10.f38393f, d10.l(), map)) != null) {
                        i15 = f10.i();
                    }
                    spannable.setSpan(new b3.c(str, i15), i9, i10, 33);
                } else {
                    r.f("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                }
            }
        } else if (j10 == 3 || j10 == 4) {
            spannable.setSpan(new a(), i9, i10, 33);
        }
        if (gVar.n()) {
            b3.d.a(spannable, new b3.a(), i9, i10, 33);
        }
        int f12 = gVar.f();
        if (f12 == 1) {
            b3.d.a(spannable, new AbsoluteSizeSpan((int) gVar.e(), true), i9, i10, 33);
        } else if (f12 == 2) {
            b3.d.a(spannable, new RelativeSizeSpan(gVar.e()), i9, i10, 33);
        } else if (f12 != 3) {
        } else {
            b3.d.a(spannable, new RelativeSizeSpan(gVar.e() / 100.0f), i9, i10, 33);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        return str.replaceAll(IOUtils.LINE_SEPARATOR_WINDOWS, IOUtils.LINE_SEPARATOR_UNIX).replaceAll(" *\n *", IOUtils.LINE_SEPARATOR_UNIX).replaceAll(IOUtils.LINE_SEPARATOR_UNIX, " ").replaceAll("[ \t\\x0B\f\r]+", " ");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(SpannableStringBuilder spannableStringBuilder) {
        int length = spannableStringBuilder.length() - 1;
        while (length >= 0 && spannableStringBuilder.charAt(length) == ' ') {
            length--;
        }
        if (length < 0 || spannableStringBuilder.charAt(length) == '\n') {
            return;
        }
        spannableStringBuilder.append('\n');
    }

    @Nullable
    private static d d(@Nullable d dVar, Map<String, g> map) {
        while (dVar != null) {
            g f10 = f(dVar.f38393f, dVar.l(), map);
            if (f10 != null && f10.j() == 1) {
                return dVar;
            }
            dVar = dVar.f38397j;
        }
        return null;
    }

    @Nullable
    private static d e(d dVar, Map<String, g> map) {
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            d dVar2 = (d) arrayDeque.pop();
            g f10 = f(dVar2.f38393f, dVar2.l(), map);
            if (f10 != null && f10.j() == 3) {
                return dVar2;
            }
            for (int g10 = dVar2.g() - 1; g10 >= 0; g10--) {
                arrayDeque.push(dVar2.f(g10));
            }
        }
        return null;
    }

    @Nullable
    public static g f(@Nullable g gVar, @Nullable String[] strArr, Map<String, g> map) {
        int i9 = 0;
        if (gVar == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                g gVar2 = new g();
                int length = strArr.length;
                while (i9 < length) {
                    gVar2.a(map.get(strArr[i9]));
                    i9++;
                }
                return gVar2;
            }
        } else if (strArr != null && strArr.length == 1) {
            return gVar.a(map.get(strArr[0]));
        } else {
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i9 < length2) {
                    gVar.a(map.get(strArr[i9]));
                    i9++;
                }
            }
        }
        return gVar;
    }
}
