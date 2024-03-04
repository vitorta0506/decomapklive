package x2;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.h;
/* loaded from: classes.dex */
public final class b implements com.google.android.exoplayer2.h {

    /* renamed from: r  reason: collision with root package name */
    public static final b f59544r = new C0686b().o("").a();

    /* renamed from: s  reason: collision with root package name */
    public static final h.a<b> f59545s = new h.a() { // from class: x2.a
        @Override // com.google.android.exoplayer2.h.a
        public final com.google.android.exoplayer2.h a(Bundle bundle) {
            b c10;
            c10 = b.c(bundle);
            return c10;
        }
    };
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f59546a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final Layout.Alignment f59547b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f59548c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f59549d;

    /* renamed from: e  reason: collision with root package name */
    public final float f59550e;

    /* renamed from: f  reason: collision with root package name */
    public final int f59551f;

    /* renamed from: g  reason: collision with root package name */
    public final int f59552g;

    /* renamed from: h  reason: collision with root package name */
    public final float f59553h;

    /* renamed from: i  reason: collision with root package name */
    public final int f59554i;

    /* renamed from: j  reason: collision with root package name */
    public final float f59555j;

    /* renamed from: k  reason: collision with root package name */
    public final float f59556k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f59557l;

    /* renamed from: m  reason: collision with root package name */
    public final int f59558m;

    /* renamed from: n  reason: collision with root package name */
    public final int f59559n;

    /* renamed from: o  reason: collision with root package name */
    public final float f59560o;

    /* renamed from: p  reason: collision with root package name */
    public final int f59561p;

    /* renamed from: q  reason: collision with root package name */
    public final float f59562q;

    /* renamed from: x2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0686b {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f59563a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f59564b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private Layout.Alignment f59565c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private Layout.Alignment f59566d;

        /* renamed from: e  reason: collision with root package name */
        private float f59567e;

        /* renamed from: f  reason: collision with root package name */
        private int f59568f;

        /* renamed from: g  reason: collision with root package name */
        private int f59569g;

        /* renamed from: h  reason: collision with root package name */
        private float f59570h;

        /* renamed from: i  reason: collision with root package name */
        private int f59571i;

        /* renamed from: j  reason: collision with root package name */
        private int f59572j;

        /* renamed from: k  reason: collision with root package name */
        private float f59573k;

        /* renamed from: l  reason: collision with root package name */
        private float f59574l;

        /* renamed from: m  reason: collision with root package name */
        private float f59575m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f59576n;
        @ColorInt

        /* renamed from: o  reason: collision with root package name */
        private int f59577o;

        /* renamed from: p  reason: collision with root package name */
        private int f59578p;

        /* renamed from: q  reason: collision with root package name */
        private float f59579q;

        public b a() {
            return new b(this.f59563a, this.f59565c, this.f59566d, this.f59564b, this.f59567e, this.f59568f, this.f59569g, this.f59570h, this.f59571i, this.f59572j, this.f59573k, this.f59574l, this.f59575m, this.f59576n, this.f59577o, this.f59578p, this.f59579q);
        }

        public C0686b b() {
            this.f59576n = false;
            return this;
        }

        public int c() {
            return this.f59569g;
        }

        public int d() {
            return this.f59571i;
        }

        @Nullable
        public CharSequence e() {
            return this.f59563a;
        }

        public C0686b f(Bitmap bitmap) {
            this.f59564b = bitmap;
            return this;
        }

        public C0686b g(float f10) {
            this.f59575m = f10;
            return this;
        }

        public C0686b h(float f10, int i9) {
            this.f59567e = f10;
            this.f59568f = i9;
            return this;
        }

        public C0686b i(int i9) {
            this.f59569g = i9;
            return this;
        }

        public C0686b j(@Nullable Layout.Alignment alignment) {
            this.f59566d = alignment;
            return this;
        }

        public C0686b k(float f10) {
            this.f59570h = f10;
            return this;
        }

        public C0686b l(int i9) {
            this.f59571i = i9;
            return this;
        }

        public C0686b m(float f10) {
            this.f59579q = f10;
            return this;
        }

        public C0686b n(float f10) {
            this.f59574l = f10;
            return this;
        }

        public C0686b o(CharSequence charSequence) {
            this.f59563a = charSequence;
            return this;
        }

        public C0686b p(@Nullable Layout.Alignment alignment) {
            this.f59565c = alignment;
            return this;
        }

        public C0686b q(float f10, int i9) {
            this.f59573k = f10;
            this.f59572j = i9;
            return this;
        }

        public C0686b r(int i9) {
            this.f59578p = i9;
            return this;
        }

        public C0686b s(@ColorInt int i9) {
            this.f59577o = i9;
            this.f59576n = true;
            return this;
        }

        public C0686b() {
            this.f59563a = null;
            this.f59564b = null;
            this.f59565c = null;
            this.f59566d = null;
            this.f59567e = -3.4028235E38f;
            this.f59568f = Integer.MIN_VALUE;
            this.f59569g = Integer.MIN_VALUE;
            this.f59570h = -3.4028235E38f;
            this.f59571i = Integer.MIN_VALUE;
            this.f59572j = Integer.MIN_VALUE;
            this.f59573k = -3.4028235E38f;
            this.f59574l = -3.4028235E38f;
            this.f59575m = -3.4028235E38f;
            this.f59576n = false;
            this.f59577o = ViewCompat.MEASURED_STATE_MASK;
            this.f59578p = Integer.MIN_VALUE;
        }

        private C0686b(b bVar) {
            this.f59563a = bVar.f59546a;
            this.f59564b = bVar.f59549d;
            this.f59565c = bVar.f59547b;
            this.f59566d = bVar.f59548c;
            this.f59567e = bVar.f59550e;
            this.f59568f = bVar.f59551f;
            this.f59569g = bVar.f59552g;
            this.f59570h = bVar.f59553h;
            this.f59571i = bVar.f59554i;
            this.f59572j = bVar.f59559n;
            this.f59573k = bVar.f59560o;
            this.f59574l = bVar.f59555j;
            this.f59575m = bVar.f59556k;
            this.f59576n = bVar.f59557l;
            this.f59577o = bVar.f59558m;
            this.f59578p = bVar.f59561p;
            this.f59579q = bVar.f59562q;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b c(Bundle bundle) {
        C0686b c0686b = new C0686b();
        CharSequence charSequence = bundle.getCharSequence(d(0));
        if (charSequence != null) {
            c0686b.o(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(d(1));
        if (alignment != null) {
            c0686b.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(d(2));
        if (alignment2 != null) {
            c0686b.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(d(3));
        if (bitmap != null) {
            c0686b.f(bitmap);
        }
        if (bundle.containsKey(d(4)) && bundle.containsKey(d(5))) {
            c0686b.h(bundle.getFloat(d(4)), bundle.getInt(d(5)));
        }
        if (bundle.containsKey(d(6))) {
            c0686b.i(bundle.getInt(d(6)));
        }
        if (bundle.containsKey(d(7))) {
            c0686b.k(bundle.getFloat(d(7)));
        }
        if (bundle.containsKey(d(8))) {
            c0686b.l(bundle.getInt(d(8)));
        }
        if (bundle.containsKey(d(10)) && bundle.containsKey(d(9))) {
            c0686b.q(bundle.getFloat(d(10)), bundle.getInt(d(9)));
        }
        if (bundle.containsKey(d(11))) {
            c0686b.n(bundle.getFloat(d(11)));
        }
        if (bundle.containsKey(d(12))) {
            c0686b.g(bundle.getFloat(d(12)));
        }
        if (bundle.containsKey(d(13))) {
            c0686b.s(bundle.getInt(d(13)));
        }
        if (!bundle.getBoolean(d(14), false)) {
            c0686b.b();
        }
        if (bundle.containsKey(d(15))) {
            c0686b.r(bundle.getInt(d(15)));
        }
        if (bundle.containsKey(d(16))) {
            c0686b.m(bundle.getFloat(d(16)));
        }
        return c0686b.a();
    }

    private static String d(int i9) {
        return Integer.toString(i9, 36);
    }

    public C0686b b() {
        return new C0686b();
    }

    public boolean equals(@Nullable Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return TextUtils.equals(this.f59546a, bVar.f59546a) && this.f59547b == bVar.f59547b && this.f59548c == bVar.f59548c && ((bitmap = this.f59549d) != null ? !((bitmap2 = bVar.f59549d) == null || !bitmap.sameAs(bitmap2)) : bVar.f59549d == null) && this.f59550e == bVar.f59550e && this.f59551f == bVar.f59551f && this.f59552g == bVar.f59552g && this.f59553h == bVar.f59553h && this.f59554i == bVar.f59554i && this.f59555j == bVar.f59555j && this.f59556k == bVar.f59556k && this.f59557l == bVar.f59557l && this.f59558m == bVar.f59558m && this.f59559n == bVar.f59559n && this.f59560o == bVar.f59560o && this.f59561p == bVar.f59561p && this.f59562q == bVar.f59562q;
    }

    public int hashCode() {
        return com.google.common.base.l.b(this.f59546a, this.f59547b, this.f59548c, this.f59549d, Float.valueOf(this.f59550e), Integer.valueOf(this.f59551f), Integer.valueOf(this.f59552g), Float.valueOf(this.f59553h), Integer.valueOf(this.f59554i), Float.valueOf(this.f59555j), Float.valueOf(this.f59556k), Boolean.valueOf(this.f59557l), Integer.valueOf(this.f59558m), Integer.valueOf(this.f59559n), Float.valueOf(this.f59560o), Integer.valueOf(this.f59561p), Float.valueOf(this.f59562q));
    }

    private b(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f10, int i9, int i10, float f11, int i11, int i12, float f12, float f13, float f14, boolean z10, int i13, int i14, float f15) {
        if (charSequence == null) {
            com.google.android.exoplayer2.util.a.e(bitmap);
        } else {
            com.google.android.exoplayer2.util.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f59546a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f59546a = charSequence.toString();
        } else {
            this.f59546a = null;
        }
        this.f59547b = alignment;
        this.f59548c = alignment2;
        this.f59549d = bitmap;
        this.f59550e = f10;
        this.f59551f = i9;
        this.f59552g = i10;
        this.f59553h = f11;
        this.f59554i = i11;
        this.f59555j = f13;
        this.f59556k = f14;
        this.f59557l = z10;
        this.f59558m = i13;
        this.f59559n = i12;
        this.f59560o = f12;
        this.f59561p = i14;
        this.f59562q = f15;
    }
}
