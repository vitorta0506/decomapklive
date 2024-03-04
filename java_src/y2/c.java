package y2;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.a0;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.r;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.player.ITPNativePlayerMessageCallback;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import kotlin.text.Typography;
import okio.Utf8;
import x2.b;
import x2.h;
import x2.k;
import x2.l;
import y2.c;
/* loaded from: classes.dex */
public final class c extends e {

    /* renamed from: g  reason: collision with root package name */
    private final b0 f60052g = new b0();

    /* renamed from: h  reason: collision with root package name */
    private final a0 f60053h = new a0();

    /* renamed from: i  reason: collision with root package name */
    private int f60054i = -1;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f60055j;

    /* renamed from: k  reason: collision with root package name */
    private final int f60056k;

    /* renamed from: l  reason: collision with root package name */
    private final b[] f60057l;

    /* renamed from: m  reason: collision with root package name */
    private b f60058m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private List<x2.b> f60059n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private List<x2.b> f60060o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private C0696c f60061p;

    /* renamed from: q  reason: collision with root package name */
    private int f60062q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: c  reason: collision with root package name */
        private static final Comparator<a> f60063c = new Comparator() { // from class: y2.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int c10;
                c10 = c.a.c((c.a) obj, (c.a) obj2);
                return c10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        public final x2.b f60064a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60065b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i9, int i10, float f11, int i11, float f12, boolean z10, int i12, int i13) {
            b.C0686b n9 = new b.C0686b().o(charSequence).p(alignment).h(f10, i9).i(i10).k(f11).l(i11).n(f12);
            if (z10) {
                n9.s(i12);
            }
            this.f60064a = n9.a();
            this.f60065b = i13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int c(a aVar, a aVar2) {
            return Integer.compare(aVar2.f60065b, aVar.f60065b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {
        private static final int[] A;
        private static final int[] B;
        private static final boolean[] C;
        private static final int[] D;
        private static final int[] E;
        private static final int[] F;
        private static final int[] G;

        /* renamed from: w  reason: collision with root package name */
        public static final int f60066w = h(2, 2, 2, 0);

        /* renamed from: x  reason: collision with root package name */
        public static final int f60067x;

        /* renamed from: y  reason: collision with root package name */
        public static final int f60068y;

        /* renamed from: z  reason: collision with root package name */
        private static final int[] f60069z;

        /* renamed from: a  reason: collision with root package name */
        private final List<SpannableString> f60070a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final SpannableStringBuilder f60071b = new SpannableStringBuilder();

        /* renamed from: c  reason: collision with root package name */
        private boolean f60072c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f60073d;

        /* renamed from: e  reason: collision with root package name */
        private int f60074e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f60075f;

        /* renamed from: g  reason: collision with root package name */
        private int f60076g;

        /* renamed from: h  reason: collision with root package name */
        private int f60077h;

        /* renamed from: i  reason: collision with root package name */
        private int f60078i;

        /* renamed from: j  reason: collision with root package name */
        private int f60079j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f60080k;

        /* renamed from: l  reason: collision with root package name */
        private int f60081l;

        /* renamed from: m  reason: collision with root package name */
        private int f60082m;

        /* renamed from: n  reason: collision with root package name */
        private int f60083n;

        /* renamed from: o  reason: collision with root package name */
        private int f60084o;

        /* renamed from: p  reason: collision with root package name */
        private int f60085p;

        /* renamed from: q  reason: collision with root package name */
        private int f60086q;

        /* renamed from: r  reason: collision with root package name */
        private int f60087r;

        /* renamed from: s  reason: collision with root package name */
        private int f60088s;

        /* renamed from: t  reason: collision with root package name */
        private int f60089t;

        /* renamed from: u  reason: collision with root package name */
        private int f60090u;

        /* renamed from: v  reason: collision with root package name */
        private int f60091v;

        static {
            int h10 = h(0, 0, 0, 0);
            f60067x = h10;
            int h11 = h(0, 0, 0, 3);
            f60068y = h11;
            f60069z = new int[]{0, 0, 0, 0, 0, 2, 0};
            A = new int[]{0, 0, 0, 0, 0, 0, 2};
            B = new int[]{3, 3, 3, 3, 3, 3, 1};
            C = new boolean[]{false, false, false, true, true, true, false};
            D = new int[]{h10, h11, h10, h10, h11, h10, h10};
            E = new int[]{0, 1, 2, 3, 4, 3, 4};
            F = new int[]{0, 0, 0, 0, 0, 3, 3};
            G = new int[]{h10, h10, h10, h10, h10, h11, h11};
        }

        public b() {
            l();
        }

        public static int g(int i9, int i10, int i11) {
            return h(i9, i10, i11, 0);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x002b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int h(int r4, int r5, int r6, int r7) {
            /*
                r0 = 0
                r1 = 4
                com.google.android.exoplayer2.util.a.c(r4, r0, r1)
                com.google.android.exoplayer2.util.a.c(r5, r0, r1)
                com.google.android.exoplayer2.util.a.c(r6, r0, r1)
                com.google.android.exoplayer2.util.a.c(r7, r0, r1)
                r1 = 1
                r2 = 255(0xff, float:3.57E-43)
                if (r7 == 0) goto L21
                if (r7 == r1) goto L21
                r3 = 2
                if (r7 == r3) goto L1e
                r3 = 3
                if (r7 == r3) goto L1c
                goto L21
            L1c:
                r7 = 0
                goto L23
            L1e:
                r7 = 127(0x7f, float:1.78E-43)
                goto L23
            L21:
                r7 = 255(0xff, float:3.57E-43)
            L23:
                if (r4 <= r1) goto L28
                r4 = 255(0xff, float:3.57E-43)
                goto L29
            L28:
                r4 = 0
            L29:
                if (r5 <= r1) goto L2e
                r5 = 255(0xff, float:3.57E-43)
                goto L2f
            L2e:
                r5 = 0
            L2f:
                if (r6 <= r1) goto L33
                r0 = 255(0xff, float:3.57E-43)
            L33:
                int r4 = android.graphics.Color.argb(r7, r4, r5, r0)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: y2.c.b.h(int, int, int, int):int");
        }

        public void a(char c10) {
            if (c10 == '\n') {
                this.f60070a.add(d());
                this.f60071b.clear();
                if (this.f60085p != -1) {
                    this.f60085p = 0;
                }
                if (this.f60086q != -1) {
                    this.f60086q = 0;
                }
                if (this.f60087r != -1) {
                    this.f60087r = 0;
                }
                if (this.f60089t != -1) {
                    this.f60089t = 0;
                }
                while (true) {
                    if ((!this.f60080k || this.f60070a.size() < this.f60079j) && this.f60070a.size() < 15) {
                        return;
                    }
                    this.f60070a.remove(0);
                }
            } else {
                this.f60071b.append(c10);
            }
        }

        public void b() {
            int length = this.f60071b.length();
            if (length > 0) {
                this.f60071b.delete(length - 1, length);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0093  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00a0  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00ac  */
        @androidx.annotation.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public y2.c.a c() {
            /*
                Method dump skipped, instructions count: 197
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: y2.c.b.c():y2.c$a");
        }

        public SpannableString d() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f60071b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f60085p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f60085p, length, 33);
                }
                if (this.f60086q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f60086q, length, 33);
                }
                if (this.f60087r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f60088s), this.f60087r, length, 33);
                }
                if (this.f60089t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f60090u), this.f60089t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        public void e() {
            this.f60070a.clear();
            this.f60071b.clear();
            this.f60085p = -1;
            this.f60086q = -1;
            this.f60087r = -1;
            this.f60089t = -1;
            this.f60091v = 0;
        }

        public void f(boolean z10, boolean z11, boolean z12, int i9, boolean z13, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
            this.f60072c = true;
            this.f60073d = z10;
            this.f60080k = z11;
            this.f60074e = i9;
            this.f60075f = z13;
            this.f60076g = i10;
            this.f60077h = i11;
            this.f60078i = i14;
            int i17 = i12 + 1;
            if (this.f60079j != i17) {
                this.f60079j = i17;
                while (true) {
                    if ((!z11 || this.f60070a.size() < this.f60079j) && this.f60070a.size() < 15) {
                        break;
                    }
                    this.f60070a.remove(0);
                }
            }
            if (i15 != 0 && this.f60082m != i15) {
                this.f60082m = i15;
                int i18 = i15 - 1;
                q(D[i18], f60068y, C[i18], 0, A[i18], B[i18], f60069z[i18]);
            }
            if (i16 == 0 || this.f60083n == i16) {
                return;
            }
            this.f60083n = i16;
            int i19 = i16 - 1;
            m(0, 1, 1, false, false, F[i19], E[i19]);
            n(f60066w, G[i19], f60067x);
        }

        public boolean i() {
            return this.f60072c;
        }

        public boolean j() {
            return !i() || (this.f60070a.isEmpty() && this.f60071b.length() == 0);
        }

        public boolean k() {
            return this.f60073d;
        }

        public void l() {
            e();
            this.f60072c = false;
            this.f60073d = false;
            this.f60074e = 4;
            this.f60075f = false;
            this.f60076g = 0;
            this.f60077h = 0;
            this.f60078i = 0;
            this.f60079j = 15;
            this.f60080k = true;
            this.f60081l = 0;
            this.f60082m = 0;
            this.f60083n = 0;
            int i9 = f60067x;
            this.f60084o = i9;
            this.f60088s = f60066w;
            this.f60090u = i9;
        }

        public void m(int i9, int i10, int i11, boolean z10, boolean z11, int i12, int i13) {
            if (this.f60085p != -1) {
                if (!z10) {
                    this.f60071b.setSpan(new StyleSpan(2), this.f60085p, this.f60071b.length(), 33);
                    this.f60085p = -1;
                }
            } else if (z10) {
                this.f60085p = this.f60071b.length();
            }
            if (this.f60086q == -1) {
                if (z11) {
                    this.f60086q = this.f60071b.length();
                }
            } else if (z11) {
            } else {
                this.f60071b.setSpan(new UnderlineSpan(), this.f60086q, this.f60071b.length(), 33);
                this.f60086q = -1;
            }
        }

        public void n(int i9, int i10, int i11) {
            if (this.f60087r != -1 && this.f60088s != i9) {
                this.f60071b.setSpan(new ForegroundColorSpan(this.f60088s), this.f60087r, this.f60071b.length(), 33);
            }
            if (i9 != f60066w) {
                this.f60087r = this.f60071b.length();
                this.f60088s = i9;
            }
            if (this.f60089t != -1 && this.f60090u != i10) {
                this.f60071b.setSpan(new BackgroundColorSpan(this.f60090u), this.f60089t, this.f60071b.length(), 33);
            }
            if (i10 != f60067x) {
                this.f60089t = this.f60071b.length();
                this.f60090u = i10;
            }
        }

        public void o(int i9, int i10) {
            if (this.f60091v != i9) {
                a('\n');
            }
            this.f60091v = i9;
        }

        public void p(boolean z10) {
            this.f60073d = z10;
        }

        public void q(int i9, int i10, boolean z10, int i11, int i12, int i13, int i14) {
            this.f60084o = i9;
            this.f60081l = i14;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y2.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0696c {

        /* renamed from: a  reason: collision with root package name */
        public final int f60092a;

        /* renamed from: b  reason: collision with root package name */
        public final int f60093b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f60094c;

        /* renamed from: d  reason: collision with root package name */
        int f60095d = 0;

        public C0696c(int i9, int i10) {
            this.f60092a = i9;
            this.f60093b = i10;
            this.f60094c = new byte[(i10 * 2) - 1];
        }
    }

    public c(int i9, @Nullable List<byte[]> list) {
        boolean z10 = true;
        this.f60056k = i9 == -1 ? 1 : i9;
        this.f60055j = (list == null || !com.google.android.exoplayer2.util.e.f(list)) ? false : false;
        this.f60057l = new b[8];
        for (int i10 = 0; i10 < 8; i10++) {
            this.f60057l[i10] = new b();
        }
        this.f60058m = this.f60057l[0];
    }

    private void A() {
        this.f60053h.r(4);
        int h10 = this.f60053h.h(4);
        this.f60053h.r(2);
        this.f60058m.o(h10, this.f60053h.h(6));
    }

    private void B() {
        int h10 = b.h(this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2));
        int h11 = this.f60053h.h(2);
        int g10 = b.g(this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2));
        if (this.f60053h.g()) {
            h11 |= 4;
        }
        boolean g11 = this.f60053h.g();
        int h12 = this.f60053h.h(2);
        int h13 = this.f60053h.h(2);
        int h14 = this.f60053h.h(2);
        this.f60053h.r(8);
        this.f60058m.q(h10, g10, g11, h11, h12, h13, h14);
    }

    private void C() {
        C0696c c0696c = this.f60061p;
        if (c0696c.f60095d != (c0696c.f60093b * 2) - 1) {
            r.b("Cea708Decoder", "DtvCcPacket ended prematurely; size is " + ((this.f60061p.f60093b * 2) - 1) + ", but current index is " + this.f60061p.f60095d + " (sequence number " + this.f60061p.f60092a + ");");
        }
        boolean z10 = false;
        a0 a0Var = this.f60053h;
        C0696c c0696c2 = this.f60061p;
        a0Var.o(c0696c2.f60094c, c0696c2.f60095d);
        while (true) {
            if (this.f60053h.b() <= 0) {
                break;
            }
            int h10 = this.f60053h.h(3);
            int h11 = this.f60053h.h(5);
            if (h10 == 7) {
                this.f60053h.r(2);
                h10 = this.f60053h.h(6);
                if (h10 < 7) {
                    r.i("Cea708Decoder", "Invalid extended service number: " + h10);
                }
            }
            if (h11 == 0) {
                if (h10 != 0) {
                    r.i("Cea708Decoder", "serviceNumber is non-zero (" + h10 + ") when blockSize is 0");
                }
            } else if (h10 != this.f60056k) {
                this.f60053h.s(h11);
            } else {
                int e10 = this.f60053h.e() + (h11 * 8);
                while (this.f60053h.e() < e10) {
                    int h12 = this.f60053h.h(8);
                    if (h12 == 16) {
                        int h13 = this.f60053h.h(8);
                        if (h13 <= 31) {
                            r(h13);
                        } else {
                            if (h13 <= 127) {
                                w(h13);
                            } else if (h13 <= 159) {
                                s(h13);
                            } else if (h13 <= 255) {
                                x(h13);
                            } else {
                                r.i("Cea708Decoder", "Invalid extended command: " + h13);
                            }
                            z10 = true;
                        }
                    } else if (h12 <= 31) {
                        p(h12);
                    } else {
                        if (h12 <= 127) {
                            u(h12);
                        } else if (h12 <= 159) {
                            q(h12);
                        } else if (h12 <= 255) {
                            v(h12);
                        } else {
                            r.i("Cea708Decoder", "Invalid base command: " + h12);
                        }
                        z10 = true;
                    }
                }
            }
        }
        if (z10) {
            this.f60059n = o();
        }
    }

    private void D() {
        for (int i9 = 0; i9 < 8; i9++) {
            this.f60057l[i9].l();
        }
    }

    private void n() {
        if (this.f60061p == null) {
            return;
        }
        C();
        this.f60061p = null;
    }

    private List<x2.b> o() {
        a c10;
        ArrayList arrayList = new ArrayList();
        for (int i9 = 0; i9 < 8; i9++) {
            if (!this.f60057l[i9].j() && this.f60057l[i9].k() && (c10 = this.f60057l[i9].c()) != null) {
                arrayList.add(c10);
            }
        }
        Collections.sort(arrayList, a.f60063c);
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList2.add(((a) arrayList.get(i10)).f60064a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    private void p(int i9) {
        if (i9 != 0) {
            if (i9 == 3) {
                this.f60059n = o();
            } else if (i9 != 8) {
                switch (i9) {
                    case 12:
                        D();
                        return;
                    case 13:
                        this.f60058m.a('\n');
                        return;
                    case 14:
                        return;
                    default:
                        if (i9 >= 17 && i9 <= 23) {
                            r.i("Cea708Decoder", "Currently unsupported COMMAND_EXT1 Command: " + i9);
                            this.f60053h.r(8);
                            return;
                        } else if (i9 >= 24 && i9 <= 31) {
                            r.i("Cea708Decoder", "Currently unsupported COMMAND_P16 Command: " + i9);
                            this.f60053h.r(16);
                            return;
                        } else {
                            r.i("Cea708Decoder", "Invalid C0 command: " + i9);
                            return;
                        }
                }
            } else {
                this.f60058m.b();
            }
        }
    }

    private void q(int i9) {
        b bVar;
        int i10 = 1;
        switch (i9) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 134:
            case 135:
                int i11 = i9 - 128;
                if (this.f60062q != i11) {
                    this.f60062q = i11;
                    this.f60058m = this.f60057l[i11];
                    return;
                }
                return;
            case TPOptionalID.OPTION_ID_BEFORE_LONG_DEMXUER_TYPE /* 136 */:
                while (i10 <= 8) {
                    if (this.f60053h.g()) {
                        this.f60057l[8 - i10].e();
                    }
                    i10++;
                }
                return;
            case 137:
                for (int i12 = 1; i12 <= 8; i12++) {
                    if (this.f60053h.g()) {
                        this.f60057l[8 - i12].p(true);
                    }
                }
                return;
            case 138:
                while (i10 <= 8) {
                    if (this.f60053h.g()) {
                        this.f60057l[8 - i10].p(false);
                    }
                    i10++;
                }
                return;
            case TPOptionalID.OPTION_ID_BEFORE_LONG_BUFFER_STRATEGY /* 139 */:
                for (int i13 = 1; i13 <= 8; i13++) {
                    if (this.f60053h.g()) {
                        this.f60057l[8 - i13].p(!bVar.k());
                    }
                }
                return;
            case 140:
                while (i10 <= 8) {
                    if (this.f60053h.g()) {
                        this.f60057l[8 - i10].l();
                    }
                    i10++;
                }
                return;
            case 141:
                this.f60053h.r(8);
                return;
            case 142:
                return;
            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_ORIGINAL_VIDEO_INFO_CALLBACK_FROM_SURFACE_LISTENER /* 143 */:
                D();
                return;
            case 144:
                if (!this.f60058m.i()) {
                    this.f60053h.r(16);
                    return;
                } else {
                    y();
                    return;
                }
            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_NEW_DRM_CLIENT /* 145 */:
                if (!this.f60058m.i()) {
                    this.f60053h.r(24);
                    return;
                } else {
                    z();
                    return;
                }
            case TPOptionalID.OPTION_ID_BEFORE_BOOL_ENABLE_IGNORE_VIDEO_STREAM_IN_COMMON_AUDIO_FORMATS /* 146 */:
                if (!this.f60058m.i()) {
                    this.f60053h.r(16);
                    return;
                } else {
                    A();
                    return;
                }
            case 147:
            case 148:
            case 149:
            case 150:
            default:
                r.i("Cea708Decoder", "Invalid C1 command: " + i9);
                return;
            case 151:
                if (!this.f60058m.i()) {
                    this.f60053h.r(32);
                    return;
                } else {
                    B();
                    return;
                }
            case 152:
            case ITPNativePlayerMessageCallback.INFO_LONG1_CLIP_EOS /* 153 */:
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
                int i14 = i9 - 152;
                t(i14);
                if (this.f60062q != i14) {
                    this.f60062q = i14;
                    this.f60058m = this.f60057l[i14];
                    return;
                }
                return;
        }
    }

    private void r(int i9) {
        if (i9 <= 7) {
            return;
        }
        if (i9 <= 15) {
            this.f60053h.r(8);
        } else if (i9 <= 23) {
            this.f60053h.r(16);
        } else if (i9 <= 31) {
            this.f60053h.r(24);
        }
    }

    private void s(int i9) {
        if (i9 <= 135) {
            this.f60053h.r(32);
        } else if (i9 <= 143) {
            this.f60053h.r(40);
        } else if (i9 <= 159) {
            this.f60053h.r(2);
            this.f60053h.r(this.f60053h.h(6) * 8);
        }
    }

    private void t(int i9) {
        b bVar = this.f60057l[i9];
        this.f60053h.r(2);
        boolean g10 = this.f60053h.g();
        boolean g11 = this.f60053h.g();
        boolean g12 = this.f60053h.g();
        int h10 = this.f60053h.h(3);
        boolean g13 = this.f60053h.g();
        int h11 = this.f60053h.h(7);
        int h12 = this.f60053h.h(8);
        int h13 = this.f60053h.h(4);
        int h14 = this.f60053h.h(4);
        this.f60053h.r(2);
        int h15 = this.f60053h.h(6);
        this.f60053h.r(2);
        bVar.f(g10, g11, g12, h10, g13, h11, h12, h14, h15, h13, this.f60053h.h(3), this.f60053h.h(3));
    }

    private void u(int i9) {
        if (i9 == 127) {
            this.f60058m.a((char) 9835);
        } else {
            this.f60058m.a((char) (i9 & 255));
        }
    }

    private void v(int i9) {
        this.f60058m.a((char) (i9 & 255));
    }

    private void w(int i9) {
        if (i9 == 32) {
            this.f60058m.a(' ');
        } else if (i9 == 33) {
            this.f60058m.a(Typography.nbsp);
        } else if (i9 == 37) {
            this.f60058m.a(Typography.ellipsis);
        } else if (i9 == 42) {
            this.f60058m.a((char) 352);
        } else if (i9 == 44) {
            this.f60058m.a((char) 338);
        } else if (i9 == 63) {
            this.f60058m.a((char) 376);
        } else if (i9 == 57) {
            this.f60058m.a(Typography.tm);
        } else if (i9 == 58) {
            this.f60058m.a((char) 353);
        } else if (i9 == 60) {
            this.f60058m.a((char) 339);
        } else if (i9 != 61) {
            switch (i9) {
                case 48:
                    this.f60058m.a((char) 9608);
                    return;
                case 49:
                    this.f60058m.a(Typography.leftSingleQuote);
                    return;
                case 50:
                    this.f60058m.a(Typography.rightSingleQuote);
                    return;
                case 51:
                    this.f60058m.a(Typography.leftDoubleQuote);
                    return;
                case 52:
                    this.f60058m.a(Typography.rightDoubleQuote);
                    return;
                case 53:
                    this.f60058m.a(Typography.bullet);
                    return;
                default:
                    switch (i9) {
                        case 118:
                            this.f60058m.a((char) 8539);
                            return;
                        case 119:
                            this.f60058m.a((char) 8540);
                            return;
                        case 120:
                            this.f60058m.a((char) 8541);
                            return;
                        case 121:
                            this.f60058m.a((char) 8542);
                            return;
                        case 122:
                            this.f60058m.a((char) 9474);
                            return;
                        case 123:
                            this.f60058m.a((char) 9488);
                            return;
                        case 124:
                            this.f60058m.a((char) 9492);
                            return;
                        case 125:
                            this.f60058m.a((char) 9472);
                            return;
                        case 126:
                            this.f60058m.a((char) 9496);
                            return;
                        case 127:
                            this.f60058m.a((char) 9484);
                            return;
                        default:
                            r.i("Cea708Decoder", "Invalid G2 character: " + i9);
                            return;
                    }
            }
        } else {
            this.f60058m.a((char) 8480);
        }
    }

    private void x(int i9) {
        if (i9 == 160) {
            this.f60058m.a((char) 13252);
            return;
        }
        r.i("Cea708Decoder", "Invalid G3 character: " + i9);
        this.f60058m.a('_');
    }

    private void y() {
        this.f60058m.m(this.f60053h.h(4), this.f60053h.h(2), this.f60053h.h(2), this.f60053h.g(), this.f60053h.g(), this.f60053h.h(3), this.f60053h.h(3));
    }

    private void z() {
        int h10 = b.h(this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2));
        int h11 = b.h(this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2));
        this.f60053h.r(2);
        this.f60058m.n(h10, h11, b.g(this.f60053h.h(2), this.f60053h.h(2), this.f60053h.h(2)));
    }

    @Override // y2.e, x2.i
    public /* bridge */ /* synthetic */ void a(long j10) {
        super.a(j10);
    }

    @Override // y2.e
    protected h d() {
        List<x2.b> list = this.f60059n;
        this.f60060o = list;
        return new f((List) com.google.android.exoplayer2.util.a.e(list));
    }

    @Override // y2.e
    protected void e(k kVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(kVar.f5708c);
        this.f60052g.N(byteBuffer.array(), byteBuffer.limit());
        while (this.f60052g.a() >= 3) {
            int D = this.f60052g.D() & 7;
            int i9 = D & 3;
            boolean z10 = (D & 4) == 4;
            byte D2 = (byte) this.f60052g.D();
            byte D3 = (byte) this.f60052g.D();
            if (i9 == 2 || i9 == 3) {
                if (z10) {
                    if (i9 == 3) {
                        n();
                        int i10 = (D2 & 192) >> 6;
                        int i11 = this.f60054i;
                        if (i11 != -1 && i10 != (i11 + 1) % 4) {
                            D();
                            r.i("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f60054i + " current=" + i10);
                        }
                        this.f60054i = i10;
                        int i12 = D2 & Utf8.REPLACEMENT_BYTE;
                        if (i12 == 0) {
                            i12 = 64;
                        }
                        C0696c c0696c = new C0696c(i10, i12);
                        this.f60061p = c0696c;
                        byte[] bArr = c0696c.f60094c;
                        int i13 = c0696c.f60095d;
                        c0696c.f60095d = i13 + 1;
                        bArr[i13] = D3;
                    } else {
                        com.google.android.exoplayer2.util.a.a(i9 == 2);
                        C0696c c0696c2 = this.f60061p;
                        if (c0696c2 == null) {
                            r.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0696c2.f60094c;
                            int i14 = c0696c2.f60095d;
                            int i15 = i14 + 1;
                            c0696c2.f60095d = i15;
                            bArr2[i14] = D2;
                            c0696c2.f60095d = i15 + 1;
                            bArr2[i15] = D3;
                        }
                    }
                    C0696c c0696c3 = this.f60061p;
                    if (c0696c3.f60095d == (c0696c3.f60093b * 2) - 1) {
                        n();
                    }
                }
            }
        }
    }

    @Override // y2.e
    @Nullable
    public /* bridge */ /* synthetic */ k f() throws SubtitleDecoderException {
        return super.c();
    }

    @Override // y2.e, b2.d
    public void flush() {
        super.flush();
        this.f60059n = null;
        this.f60060o = null;
        this.f60062q = 0;
        this.f60058m = this.f60057l[0];
        D();
        this.f60061p = null;
    }

    @Override // y2.e
    @Nullable
    public /* bridge */ /* synthetic */ l g() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    @Override // y2.e
    protected boolean j() {
        return this.f60059n != this.f60060o;
    }

    @Override // y2.e
    public /* bridge */ /* synthetic */ void k(k kVar) throws SubtitleDecoderException {
        super.b(kVar);
    }

    @Override // y2.e, b2.d
    public /* bridge */ /* synthetic */ void release() {
        super.release();
    }
}
