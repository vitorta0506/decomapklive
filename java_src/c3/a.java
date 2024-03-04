package c3;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import c3.c;
import com.facebook.internal.security.CertificateUtil;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.light.utils.IOUtils;
import x2.b;
import x2.g;
import x2.h;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: t  reason: collision with root package name */
    private static final Pattern f1578t = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* renamed from: o  reason: collision with root package name */
    private final boolean f1579o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final b f1580p;

    /* renamed from: q  reason: collision with root package name */
    private Map<String, c> f1581q;

    /* renamed from: r  reason: collision with root package name */
    private float f1582r;

    /* renamed from: s  reason: collision with root package name */
    private float f1583s;

    public a(@Nullable List<byte[]> list) {
        super("SsaDecoder");
        this.f1582r = -3.4028235E38f;
        this.f1583s = -3.4028235E38f;
        if (list != null && !list.isEmpty()) {
            this.f1579o = true;
            String A = l0.A(list.get(0));
            com.google.android.exoplayer2.util.a.a(A.startsWith("Format:"));
            this.f1580p = (b) com.google.android.exoplayer2.util.a.e(b.a(A));
            F(new b0(list.get(1)));
            return;
        }
        this.f1579o = false;
        this.f1580p = null;
    }

    private static int A(long j10, List<Long> list, List<List<x2.b>> list2) {
        int i9;
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i9 = 0;
                break;
            } else if (list.get(size).longValue() == j10) {
                return size;
            } else {
                if (list.get(size).longValue() < j10) {
                    i9 = size + 1;
                    break;
                }
                size--;
            }
        }
        list.add(i9, Long.valueOf(j10));
        list2.add(i9, i9 == 0 ? new ArrayList() : new ArrayList(list2.get(i9 - 1)));
        return i9;
    }

    private static float B(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                return i9 != 2 ? -3.4028235E38f : 0.95f;
            }
            return 0.5f;
        }
        return 0.05f;
    }

    private static x2.b C(String str, @Nullable c cVar, c.b bVar, float f10, float f11) {
        SpannableString spannableString = new SpannableString(str);
        b.C0686b o10 = new b.C0686b().o(spannableString);
        if (cVar != null) {
            if (cVar.f1591c != null) {
                spannableString.setSpan(new ForegroundColorSpan(cVar.f1591c.intValue()), 0, spannableString.length(), 33);
            }
            if (cVar.f1598j == 3 && cVar.f1592d != null) {
                spannableString.setSpan(new BackgroundColorSpan(cVar.f1592d.intValue()), 0, spannableString.length(), 33);
            }
            float f12 = cVar.f1593e;
            if (f12 != -3.4028235E38f && f11 != -3.4028235E38f) {
                o10.q(f12 / f11, 1);
            }
            boolean z10 = cVar.f1594f;
            if (z10 && cVar.f1595g) {
                spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
            } else if (z10) {
                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
            } else if (cVar.f1595g) {
                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
            }
            if (cVar.f1596h) {
                spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 33);
            }
            if (cVar.f1597i) {
                spannableString.setSpan(new StrikethroughSpan(), 0, spannableString.length(), 33);
            }
        }
        int i9 = bVar.f1614a;
        if (i9 == -1) {
            i9 = cVar != null ? cVar.f1590b : -1;
        }
        o10.p(L(i9)).l(K(i9)).i(J(i9));
        PointF pointF = bVar.f1615b;
        if (pointF != null && f11 != -3.4028235E38f && f10 != -3.4028235E38f) {
            o10.k(pointF.x / f10);
            o10.h(bVar.f1615b.y / f11, 0);
        } else {
            o10.k(B(o10.d()));
            o10.h(B(o10.c()), 0);
        }
        return o10.a();
    }

    private void D(String str, b bVar, List<List<x2.b>> list, List<Long> list2) {
        int i9;
        com.google.android.exoplayer2.util.a.a(str.startsWith("Dialogue:"));
        String[] split = str.substring(9).split(",", bVar.f1588e);
        if (split.length != bVar.f1588e) {
            r.i("SsaDecoder", "Skipping dialogue line with fewer columns than format: " + str);
            return;
        }
        long I = I(split[bVar.f1584a]);
        if (I == -9223372036854775807L) {
            r.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        long I2 = I(split[bVar.f1585b]);
        if (I2 == -9223372036854775807L) {
            r.i("SsaDecoder", "Skipping invalid timing: " + str);
            return;
        }
        Map<String, c> map = this.f1581q;
        c cVar = (map == null || (i9 = bVar.f1586c) == -1) ? null : map.get(split[i9].trim());
        String str2 = split[bVar.f1587d];
        x2.b C = C(c.b.d(str2).replace("\\N", IOUtils.LINE_SEPARATOR_UNIX).replace("\\n", IOUtils.LINE_SEPARATOR_UNIX).replace("\\h", " "), cVar, c.b.b(str2), this.f1582r, this.f1583s);
        int A = A(I2, list2, list);
        for (int A2 = A(I, list2, list); A2 < A; A2++) {
            list.get(A2).add(C);
        }
    }

    private void E(b0 b0Var, List<List<x2.b>> list, List<Long> list2) {
        b bVar = this.f1579o ? this.f1580p : null;
        while (true) {
            String p10 = b0Var.p();
            if (p10 == null) {
                return;
            }
            if (p10.startsWith("Format:")) {
                bVar = b.a(p10);
            } else if (p10.startsWith("Dialogue:")) {
                if (bVar == null) {
                    r.i("SsaDecoder", "Skipping dialogue line before complete format: " + p10);
                } else {
                    D(p10, bVar, list, list2);
                }
            }
        }
    }

    private void F(b0 b0Var) {
        while (true) {
            String p10 = b0Var.p();
            if (p10 == null) {
                return;
            }
            if ("[Script Info]".equalsIgnoreCase(p10)) {
                G(b0Var);
            } else if ("[V4+ Styles]".equalsIgnoreCase(p10)) {
                this.f1581q = H(b0Var);
            } else if ("[V4 Styles]".equalsIgnoreCase(p10)) {
                r.f("SsaDecoder", "[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(p10)) {
                return;
            }
        }
    }

    private void G(b0 b0Var) {
        while (true) {
            String p10 = b0Var.p();
            if (p10 == null) {
                return;
            }
            if (b0Var.a() != 0 && b0Var.h() == 91) {
                return;
            }
            String[] split = p10.split(CertificateUtil.DELIMITER);
            if (split.length == 2) {
                String f10 = com.google.common.base.c.f(split[0].trim());
                f10.hashCode();
                if (f10.equals("playresx")) {
                    this.f1582r = Float.parseFloat(split[1].trim());
                } else if (f10.equals("playresy")) {
                    try {
                        this.f1583s = Float.parseFloat(split[1].trim());
                    } catch (NumberFormatException unused) {
                    }
                }
            }
        }
    }

    private static Map<String, c> H(b0 b0Var) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        c.a aVar = null;
        while (true) {
            String p10 = b0Var.p();
            if (p10 == null || (b0Var.a() != 0 && b0Var.h() == 91)) {
                break;
            } else if (p10.startsWith("Format:")) {
                aVar = c.a.a(p10);
            } else if (p10.startsWith("Style:")) {
                if (aVar == null) {
                    r.i("SsaDecoder", "Skipping 'Style:' line before 'Format:' line: " + p10);
                } else {
                    c b10 = c.b(p10, aVar);
                    if (b10 != null) {
                        linkedHashMap.put(b10.f1589a, b10);
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private static long I(String str) {
        Matcher matcher = f1578t.matcher(str.trim());
        if (matcher.matches()) {
            return (Long.parseLong((String) l0.j(matcher.group(1))) * 60 * 60 * 1000000) + (Long.parseLong((String) l0.j(matcher.group(2))) * 60 * 1000000) + (Long.parseLong((String) l0.j(matcher.group(3))) * 1000000) + (Long.parseLong((String) l0.j(matcher.group(4))) * 10000);
        }
        return -9223372036854775807L;
    }

    private static int J(int i9) {
        switch (i9) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                r.i("SsaDecoder", "Unknown alignment: " + i9);
                return Integer.MIN_VALUE;
            case 1:
            case 2:
            case 3:
                return 2;
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
            case 9:
                return 0;
        }
    }

    private static int K(int i9) {
        switch (i9) {
            case -1:
                return Integer.MIN_VALUE;
            case 0:
            default:
                r.i("SsaDecoder", "Unknown alignment: " + i9);
                return Integer.MIN_VALUE;
            case 1:
            case 4:
            case 7:
                return 0;
            case 2:
            case 5:
            case 8:
                return 1;
            case 3:
            case 6:
            case 9:
                return 2;
        }
    }

    @Nullable
    private static Layout.Alignment L(int i9) {
        switch (i9) {
            case -1:
                return null;
            case 0:
            default:
                r.i("SsaDecoder", "Unknown alignment: " + i9);
                return null;
            case 1:
            case 4:
            case 7:
                return Layout.Alignment.ALIGN_NORMAL;
            case 2:
            case 5:
            case 8:
                return Layout.Alignment.ALIGN_CENTER;
            case 3:
            case 6:
            case 9:
                return Layout.Alignment.ALIGN_OPPOSITE;
        }
    }

    @Override // x2.g
    protected h z(byte[] bArr, int i9, boolean z10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        b0 b0Var = new b0(bArr, i9);
        if (!this.f1579o) {
            F(b0Var);
        }
        E(b0Var, arrayList, arrayList2);
        return new d(arrayList, arrayList2);
    }
}
