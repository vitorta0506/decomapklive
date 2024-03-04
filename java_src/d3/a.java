package d3;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.r;
import com.google.android.exoplayer2.util.s;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import x2.b;
import x2.g;
import x2.h;
/* loaded from: classes.dex */
public final class a extends g {

    /* renamed from: q  reason: collision with root package name */
    private static final Pattern f37906q = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*");

    /* renamed from: r  reason: collision with root package name */
    private static final Pattern f37907r = Pattern.compile("\\{\\\\.*?\\}");

    /* renamed from: o  reason: collision with root package name */
    private final StringBuilder f37908o;

    /* renamed from: p  reason: collision with root package name */
    private final ArrayList<String> f37909p;

    public a() {
        super("SubripDecoder");
        this.f37908o = new StringBuilder();
        this.f37909p = new ArrayList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private x2.b A(Spanned spanned, @Nullable String str) {
        char c10;
        char c11;
        b.C0686b o10 = new b.C0686b().o(spanned);
        if (str == null) {
            return o10.a();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 == 0 || c10 == 1 || c10 == 2) {
            o10.l(0);
        } else if (c10 != 3 && c10 != 4 && c10 != 5) {
            o10.l(1);
        } else {
            o10.l(2);
        }
        switch (str.hashCode()) {
            case -685620710:
                if (str.equals("{\\an1}")) {
                    c11 = 0;
                    break;
                }
                c11 = 65535;
                break;
            case -685620679:
                if (str.equals("{\\an2}")) {
                    c11 = 1;
                    break;
                }
                c11 = 65535;
                break;
            case -685620648:
                if (str.equals("{\\an3}")) {
                    c11 = 2;
                    break;
                }
                c11 = 65535;
                break;
            case -685620617:
                if (str.equals("{\\an4}")) {
                    c11 = 6;
                    break;
                }
                c11 = 65535;
                break;
            case -685620586:
                if (str.equals("{\\an5}")) {
                    c11 = 7;
                    break;
                }
                c11 = 65535;
                break;
            case -685620555:
                if (str.equals("{\\an6}")) {
                    c11 = '\b';
                    break;
                }
                c11 = 65535;
                break;
            case -685620524:
                if (str.equals("{\\an7}")) {
                    c11 = 3;
                    break;
                }
                c11 = 65535;
                break;
            case -685620493:
                if (str.equals("{\\an8}")) {
                    c11 = 4;
                    break;
                }
                c11 = 65535;
                break;
            case -685620462:
                if (str.equals("{\\an9}")) {
                    c11 = 5;
                    break;
                }
                c11 = 65535;
                break;
            default:
                c11 = 65535;
                break;
        }
        if (c11 == 0 || c11 == 1 || c11 == 2) {
            o10.i(2);
        } else if (c11 != 3 && c11 != 4 && c11 != 5) {
            o10.i(1);
        } else {
            o10.i(0);
        }
        return o10.k(B(o10.d())).h(B(o10.c()), 0).a();
    }

    static float B(int i9) {
        if (i9 != 0) {
            if (i9 != 1) {
                if (i9 == 2) {
                    return 0.92f;
                }
                throw new IllegalArgumentException();
            }
            return 0.5f;
        }
        return 0.08f;
    }

    private static long C(Matcher matcher, int i9) {
        String group = matcher.group(i9 + 1);
        long parseLong = (group != null ? Long.parseLong(group) * 60 * 60 * 1000 : 0L) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i9 + 2))) * 60 * 1000) + (Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher.group(i9 + 3))) * 1000);
        String group2 = matcher.group(i9 + 4);
        if (group2 != null) {
            parseLong += Long.parseLong(group2);
        }
        return parseLong * 1000;
    }

    private String D(String str, ArrayList<String> arrayList) {
        String trim = str.trim();
        StringBuilder sb2 = new StringBuilder(trim);
        Matcher matcher = f37907r.matcher(trim);
        int i9 = 0;
        while (matcher.find()) {
            String group = matcher.group();
            arrayList.add(group);
            int start = matcher.start() - i9;
            int length = group.length();
            sb2.replace(start, start + length, "");
            i9 += length;
        }
        return sb2.toString();
    }

    @Override // x2.g
    protected h z(byte[] bArr, int i9, boolean z10) {
        ArrayList arrayList = new ArrayList();
        s sVar = new s();
        b0 b0Var = new b0(bArr, i9);
        while (true) {
            String p10 = b0Var.p();
            int i10 = 0;
            if (p10 == null) {
                break;
            } else if (p10.length() != 0) {
                try {
                    Integer.parseInt(p10);
                    String p11 = b0Var.p();
                    if (p11 == null) {
                        r.i("SubripDecoder", "Unexpected end");
                        break;
                    }
                    Matcher matcher = f37906q.matcher(p11);
                    if (matcher.matches()) {
                        sVar.a(C(matcher, 1));
                        sVar.a(C(matcher, 6));
                        this.f37908o.setLength(0);
                        this.f37909p.clear();
                        for (String p12 = b0Var.p(); !TextUtils.isEmpty(p12); p12 = b0Var.p()) {
                            if (this.f37908o.length() > 0) {
                                this.f37908o.append("<br>");
                            }
                            this.f37908o.append(D(p12, this.f37909p));
                        }
                        Spanned fromHtml = Html.fromHtml(this.f37908o.toString());
                        String str = null;
                        while (true) {
                            if (i10 >= this.f37909p.size()) {
                                break;
                            }
                            String str2 = this.f37909p.get(i10);
                            if (str2.matches("\\{\\\\an[1-9]\\}")) {
                                str = str2;
                                break;
                            }
                            i10++;
                        }
                        arrayList.add(A(fromHtml, str));
                        arrayList.add(x2.b.f59544r);
                    } else {
                        r.i("SubripDecoder", "Skipping invalid timing: " + p11);
                    }
                } catch (NumberFormatException unused) {
                    r.i("SubripDecoder", "Skipping invalid index: " + p10);
                }
            }
        }
        return new b((x2.b[]) arrayList.toArray(new x2.b[0]), sVar.d());
    }
}
