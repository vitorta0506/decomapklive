package y2;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.r;
import com.tencent.thumbplayer.api.TPOptionalID;
import com.tencent.thumbplayer.core.common.TPCodecParamers;
import com.tencent.thumbplayer.core.player.TPNativePlayerInitConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
import x2.b;
import x2.h;
import x2.k;
import x2.l;
/* loaded from: classes.dex */
public final class a extends e {

    /* renamed from: h  reason: collision with root package name */
    private final int f60023h;

    /* renamed from: i  reason: collision with root package name */
    private final int f60024i;

    /* renamed from: j  reason: collision with root package name */
    private final int f60025j;

    /* renamed from: k  reason: collision with root package name */
    private final long f60026k;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private List<x2.b> f60029n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private List<x2.b> f60030o;

    /* renamed from: p  reason: collision with root package name */
    private int f60031p;

    /* renamed from: q  reason: collision with root package name */
    private int f60032q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f60033r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f60034s;

    /* renamed from: t  reason: collision with root package name */
    private byte f60035t;

    /* renamed from: u  reason: collision with root package name */
    private byte f60036u;

    /* renamed from: w  reason: collision with root package name */
    private boolean f60038w;

    /* renamed from: x  reason: collision with root package name */
    private long f60039x;

    /* renamed from: y  reason: collision with root package name */
    private static final int[] f60020y = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: z  reason: collision with root package name */
    private static final int[] f60021z = {0, 4, 8, 12, 16, 20, 24, 28};
    private static final int[] A = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    private static final int[] B = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, TPCodecParamers.TP_PROFILE_MJPEG_JPEG_LS, 209, 241, 9632};
    private static final int[] C = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, TPCodecParamers.TP_PROFILE_H264_HIGH_444_PREDICTIVE, 251};
    private static final int[] D = {193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_PROGRESSIVE_DCT, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, TPOptionalID.OPTION_ID_BEFORE_BOOL_RELEASE_MEDIA_CODEC_WHEN_SET_SURFACE, 171, 187};
    private static final int[] E = {TPCodecParamers.TP_PROFILE_MJPEG_HUFFMAN_LOSSLESS, 227, 205, 204, 236, 210, 242, TPNativePlayerInitConfig.BOOL_ENABLE_MEDIA_CODEC_REUSE, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    private static final boolean[] F = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: g  reason: collision with root package name */
    private final b0 f60022g = new b0();

    /* renamed from: l  reason: collision with root package name */
    private final ArrayList<C0694a> f60027l = new ArrayList<>();

    /* renamed from: m  reason: collision with root package name */
    private C0694a f60028m = new C0694a(0, 4);

    /* renamed from: v  reason: collision with root package name */
    private int f60037v = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0694a {

        /* renamed from: a  reason: collision with root package name */
        private final List<C0695a> f60040a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final List<SpannableString> f60041b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private final StringBuilder f60042c = new StringBuilder();

        /* renamed from: d  reason: collision with root package name */
        private int f60043d;

        /* renamed from: e  reason: collision with root package name */
        private int f60044e;

        /* renamed from: f  reason: collision with root package name */
        private int f60045f;

        /* renamed from: g  reason: collision with root package name */
        private int f60046g;

        /* renamed from: h  reason: collision with root package name */
        private int f60047h;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: y2.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static class C0695a {

            /* renamed from: a  reason: collision with root package name */
            public final int f60048a;

            /* renamed from: b  reason: collision with root package name */
            public final boolean f60049b;

            /* renamed from: c  reason: collision with root package name */
            public int f60050c;

            public C0695a(int i9, boolean z10, int i10) {
                this.f60048a = i9;
                this.f60049b = z10;
                this.f60050c = i10;
            }
        }

        public C0694a(int i9, int i10) {
            j(i9);
            this.f60047h = i10;
        }

        private SpannableString h() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f60042c);
            int length = spannableStringBuilder.length();
            int i9 = 0;
            int i10 = -1;
            int i11 = -1;
            int i12 = 0;
            int i13 = -1;
            int i14 = -1;
            boolean z10 = false;
            while (i9 < this.f60040a.size()) {
                C0695a c0695a = this.f60040a.get(i9);
                boolean z11 = c0695a.f60049b;
                int i15 = c0695a.f60048a;
                if (i15 != 8) {
                    boolean z12 = i15 == 7;
                    if (i15 != 7) {
                        i14 = a.A[i15];
                    }
                    z10 = z12;
                }
                int i16 = c0695a.f60050c;
                i9++;
                if (i16 != (i9 < this.f60040a.size() ? this.f60040a.get(i9).f60050c : length)) {
                    if (i10 != -1 && !z11) {
                        q(spannableStringBuilder, i10, i16);
                        i10 = -1;
                    } else if (i10 == -1 && z11) {
                        i10 = i16;
                    }
                    if (i11 != -1 && !z10) {
                        o(spannableStringBuilder, i11, i16);
                        i11 = -1;
                    } else if (i11 == -1 && z10) {
                        i11 = i16;
                    }
                    if (i14 != i13) {
                        n(spannableStringBuilder, i12, i16, i13);
                        i13 = i14;
                        i12 = i16;
                    }
                }
            }
            if (i10 != -1 && i10 != length) {
                q(spannableStringBuilder, i10, length);
            }
            if (i11 != -1 && i11 != length) {
                o(spannableStringBuilder, i11, length);
            }
            if (i12 != length) {
                n(spannableStringBuilder, i12, length, i13);
            }
            return new SpannableString(spannableStringBuilder);
        }

        private static void n(SpannableStringBuilder spannableStringBuilder, int i9, int i10, int i11) {
            if (i11 == -1) {
                return;
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i11), i9, i10, 33);
        }

        private static void o(SpannableStringBuilder spannableStringBuilder, int i9, int i10) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i9, i10, 33);
        }

        private static void q(SpannableStringBuilder spannableStringBuilder, int i9, int i10) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i9, i10, 33);
        }

        public void e(char c10) {
            if (this.f60042c.length() < 32) {
                this.f60042c.append(c10);
            }
        }

        public void f() {
            int length = this.f60042c.length();
            if (length > 0) {
                this.f60042c.delete(length - 1, length);
                for (int size = this.f60040a.size() - 1; size >= 0; size--) {
                    C0695a c0695a = this.f60040a.get(size);
                    int i9 = c0695a.f60050c;
                    if (i9 != length) {
                        return;
                    }
                    c0695a.f60050c = i9 - 1;
                }
            }
        }

        @Nullable
        public x2.b g(int i9) {
            float f10;
            int i10 = this.f60044e + this.f60045f;
            int i11 = 32 - i10;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i12 = 0; i12 < this.f60041b.size(); i12++) {
                spannableStringBuilder.append(l0.O0(this.f60041b.get(i12), i11));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append(l0.O0(h(), i11));
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int length = i11 - spannableStringBuilder.length();
            int i13 = i10 - length;
            if (i9 == Integer.MIN_VALUE) {
                if (this.f60046g != 2 || (Math.abs(i13) >= 3 && length >= 0)) {
                    i9 = (this.f60046g != 2 || i13 <= 0) ? 0 : 2;
                } else {
                    i9 = 1;
                }
            }
            if (i9 != 1) {
                if (i9 == 2) {
                    i10 = 32 - length;
                }
                f10 = ((i10 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f10 = 0.5f;
            }
            int i14 = this.f60043d;
            if (i14 > 7) {
                i14 = (i14 - 15) - 2;
            } else if (this.f60046g == 1) {
                i14 -= this.f60047h - 1;
            }
            return new b.C0686b().o(spannableStringBuilder).p(Layout.Alignment.ALIGN_NORMAL).h(i14, 1).k(f10).l(i9).a();
        }

        public boolean i() {
            return this.f60040a.isEmpty() && this.f60041b.isEmpty() && this.f60042c.length() == 0;
        }

        public void j(int i9) {
            this.f60046g = i9;
            this.f60040a.clear();
            this.f60041b.clear();
            this.f60042c.setLength(0);
            this.f60043d = 15;
            this.f60044e = 0;
            this.f60045f = 0;
        }

        public void k() {
            this.f60041b.add(h());
            this.f60042c.setLength(0);
            this.f60040a.clear();
            int min = Math.min(this.f60047h, this.f60043d);
            while (this.f60041b.size() >= min) {
                this.f60041b.remove(0);
            }
        }

        public void l(int i9) {
            this.f60046g = i9;
        }

        public void m(int i9) {
            this.f60047h = i9;
        }

        public void p(int i9, boolean z10) {
            this.f60040a.add(new C0695a(i9, z10, this.f60042c.length()));
        }
    }

    public a(String str, int i9, long j10) {
        this.f60026k = j10 > 0 ? j10 * 1000 : -9223372036854775807L;
        this.f60023h = "application/x-mp4-cea-608".equals(str) ? 2 : 3;
        if (i9 == 1) {
            this.f60025j = 0;
            this.f60024i = 0;
        } else if (i9 == 2) {
            this.f60025j = 1;
            this.f60024i = 0;
        } else if (i9 == 3) {
            this.f60025j = 0;
            this.f60024i = 1;
        } else if (i9 != 4) {
            r.i("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f60025j = 0;
            this.f60024i = 0;
        } else {
            this.f60025j = 1;
            this.f60024i = 1;
        }
        L(0);
        K();
        this.f60038w = true;
        this.f60039x = -9223372036854775807L;
    }

    private static boolean A(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 32;
    }

    private static boolean B(byte b10, byte b11) {
        return (b10 & 246) == 20 && (b11 & 240) == 32;
    }

    private static boolean C(byte b10, byte b11) {
        return (b10 & 240) == 16 && (b11 & 192) == 64;
    }

    private static boolean D(byte b10) {
        return (b10 & 240) == 16;
    }

    private boolean E(boolean z10, byte b10, byte b11) {
        if (z10 && D(b10)) {
            if (this.f60034s && this.f60035t == b10 && this.f60036u == b11) {
                this.f60034s = false;
                return true;
            }
            this.f60034s = true;
            this.f60035t = b10;
            this.f60036u = b11;
        } else {
            this.f60034s = false;
        }
        return false;
    }

    private static boolean F(byte b10) {
        return (b10 & 247) == 20;
    }

    private static boolean G(byte b10, byte b11) {
        return (b10 & 247) == 17 && (b11 & 240) == 48;
    }

    private static boolean H(byte b10, byte b11) {
        return (b10 & 247) == 23 && b11 >= 33 && b11 <= 35;
    }

    private static boolean I(byte b10) {
        return 1 <= b10 && b10 <= 15;
    }

    private void J(byte b10, byte b11) {
        if (I(b10)) {
            this.f60038w = false;
        } else if (F(b10)) {
            if (b11 != 32 && b11 != 47) {
                switch (b11) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b11) {
                            case 41:
                                break;
                            case 42:
                            case 43:
                                this.f60038w = false;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.f60038w = true;
        }
    }

    private void K() {
        this.f60028m.j(this.f60031p);
        this.f60027l.clear();
        this.f60027l.add(this.f60028m);
    }

    private void L(int i9) {
        int i10 = this.f60031p;
        if (i10 == i9) {
            return;
        }
        this.f60031p = i9;
        if (i9 == 3) {
            for (int i11 = 0; i11 < this.f60027l.size(); i11++) {
                this.f60027l.get(i11).l(i9);
            }
            return;
        }
        K();
        if (i10 == 3 || i9 == 1 || i9 == 0) {
            this.f60029n = Collections.emptyList();
        }
    }

    private void M(int i9) {
        this.f60032q = i9;
        this.f60028m.m(i9);
    }

    private boolean N() {
        return (this.f60026k == -9223372036854775807L || this.f60039x == -9223372036854775807L || i() - this.f60039x < this.f60026k) ? false : true;
    }

    private boolean O(byte b10) {
        if (y(b10)) {
            this.f60037v = p(b10);
        }
        return this.f60037v == this.f60025j;
    }

    private static char o(byte b10) {
        return (char) B[(b10 & ByteCompanionObject.MAX_VALUE) - 32];
    }

    private static int p(byte b10) {
        return (b10 >> 3) & 1;
    }

    private List<x2.b> q() {
        int size = this.f60027l.size();
        ArrayList arrayList = new ArrayList(size);
        int i9 = 2;
        for (int i10 = 0; i10 < size; i10++) {
            x2.b g10 = this.f60027l.get(i10).g(Integer.MIN_VALUE);
            arrayList.add(g10);
            if (g10 != null) {
                i9 = Math.min(i9, g10.f59554i);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i11 = 0; i11 < size; i11++) {
            x2.b bVar = (x2.b) arrayList.get(i11);
            if (bVar != null) {
                if (bVar.f59554i != i9) {
                    bVar = (x2.b) com.google.android.exoplayer2.util.a.e(this.f60027l.get(i11).g(i9));
                }
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    private static char r(byte b10) {
        return (char) D[b10 & 31];
    }

    private static char s(byte b10) {
        return (char) E[b10 & 31];
    }

    private static char t(byte b10, byte b11) {
        if ((b10 & 1) == 0) {
            return r(b11);
        }
        return s(b11);
    }

    private static char u(byte b10) {
        return (char) C[b10 & 15];
    }

    private void v(byte b10) {
        this.f60028m.e(' ');
        this.f60028m.p((b10 >> 1) & 7, (b10 & 1) == 1);
    }

    private void w(byte b10) {
        if (b10 == 32) {
            L(2);
        } else if (b10 != 41) {
            switch (b10) {
                case 37:
                    L(1);
                    M(2);
                    return;
                case 38:
                    L(1);
                    M(3);
                    return;
                case 39:
                    L(1);
                    M(4);
                    return;
                default:
                    int i9 = this.f60031p;
                    if (i9 == 0) {
                        return;
                    }
                    if (b10 != 33) {
                        switch (b10) {
                            case 44:
                                this.f60029n = Collections.emptyList();
                                int i10 = this.f60031p;
                                if (i10 == 1 || i10 == 3) {
                                    K();
                                    return;
                                }
                                return;
                            case 45:
                                if (i9 != 1 || this.f60028m.i()) {
                                    return;
                                }
                                this.f60028m.k();
                                return;
                            case 46:
                                K();
                                return;
                            case 47:
                                this.f60029n = q();
                                K();
                                return;
                            default:
                                return;
                        }
                    }
                    this.f60028m.f();
                    return;
            }
        } else {
            L(3);
        }
    }

    private void x(byte b10, byte b11) {
        int i9 = f60020y[b10 & 7];
        if ((b11 & 32) != 0) {
            i9++;
        }
        if (i9 != this.f60028m.f60043d) {
            if (this.f60031p != 1 && !this.f60028m.i()) {
                C0694a c0694a = new C0694a(this.f60031p, this.f60032q);
                this.f60028m = c0694a;
                this.f60027l.add(c0694a);
            }
            this.f60028m.f60043d = i9;
        }
        boolean z10 = (b11 & 16) == 16;
        boolean z11 = (b11 & 1) == 1;
        int i10 = (b11 >> 1) & 7;
        this.f60028m.p(z10 ? 8 : i10, z11);
        if (z10) {
            this.f60028m.f60044e = f60021z[i10];
        }
    }

    private static boolean y(byte b10) {
        return (b10 & 224) == 0;
    }

    private static boolean z(byte b10, byte b11) {
        return (b10 & 246) == 18 && (b11 & 224) == 32;
    }

    @Override // y2.e, x2.i
    public /* bridge */ /* synthetic */ void a(long j10) {
        super.a(j10);
    }

    @Override // y2.e
    protected h d() {
        List<x2.b> list = this.f60029n;
        this.f60030o = list;
        return new f((List) com.google.android.exoplayer2.util.a.e(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x006e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0018 A[SYNTHETIC] */
    @Override // y2.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void e(x2.k r10) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: y2.a.e(x2.k):void");
    }

    @Override // y2.e
    @Nullable
    public /* bridge */ /* synthetic */ k f() throws SubtitleDecoderException {
        return super.c();
    }

    @Override // y2.e, b2.d
    public void flush() {
        super.flush();
        this.f60029n = null;
        this.f60030o = null;
        L(0);
        M(4);
        K();
        this.f60033r = false;
        this.f60034s = false;
        this.f60035t = (byte) 0;
        this.f60036u = (byte) 0;
        this.f60037v = 0;
        this.f60038w = true;
        this.f60039x = -9223372036854775807L;
    }

    @Override // y2.e, b2.d
    @Nullable
    /* renamed from: g */
    public l dequeueOutputBuffer() throws SubtitleDecoderException {
        l h10;
        l dequeueOutputBuffer = super.dequeueOutputBuffer();
        if (dequeueOutputBuffer != null) {
            return dequeueOutputBuffer;
        }
        if (!N() || (h10 = h()) == null) {
            return null;
        }
        this.f60029n = Collections.emptyList();
        this.f60039x = -9223372036854775807L;
        h10.q(i(), d(), Long.MAX_VALUE);
        return h10;
    }

    @Override // y2.e
    protected boolean j() {
        return this.f60029n != this.f60030o;
    }

    @Override // y2.e
    public /* bridge */ /* synthetic */ void k(k kVar) throws SubtitleDecoderException {
        super.b(kVar);
    }

    @Override // y2.e, b2.d
    public void release() {
    }
}
