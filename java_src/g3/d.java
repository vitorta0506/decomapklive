package g3;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public final class d {
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int f39904f;

    /* renamed from: h  reason: collision with root package name */
    private int f39906h;

    /* renamed from: o  reason: collision with root package name */
    private float f39913o;

    /* renamed from: a  reason: collision with root package name */
    private String f39899a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f39900b = "";

    /* renamed from: c  reason: collision with root package name */
    private Set<String> f39901c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private String f39902d = "";
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f39903e = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f39905g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f39907i = false;

    /* renamed from: j  reason: collision with root package name */
    private int f39908j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f39909k = -1;

    /* renamed from: l  reason: collision with root package name */
    private int f39910l = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f39911m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f39912n = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f39914p = -1;

    /* renamed from: q  reason: collision with root package name */
    private boolean f39915q = false;

    private static int B(int i9, String str, @Nullable String str2, int i10) {
        if (str.isEmpty() || i9 == -1) {
            return i9;
        }
        if (str.equals(str2)) {
            return i9 + i10;
        }
        return -1;
    }

    public d A(boolean z10) {
        this.f39909k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f39907i) {
            return this.f39906h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f39915q;
    }

    public int c() {
        if (this.f39905g) {
            return this.f39904f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    @Nullable
    public String d() {
        return this.f39903e;
    }

    public float e() {
        return this.f39913o;
    }

    public int f() {
        return this.f39912n;
    }

    public int g() {
        return this.f39914p;
    }

    public int h(@Nullable String str, @Nullable String str2, Set<String> set, @Nullable String str3) {
        if (this.f39899a.isEmpty() && this.f39900b.isEmpty() && this.f39901c.isEmpty() && this.f39902d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int B = B(B(B(0, this.f39899a, str, BasicMeasure.EXACTLY), this.f39900b, str2, 2), this.f39902d, str3, 4);
        if (B == -1 || !set.containsAll(this.f39901c)) {
            return 0;
        }
        return B + (this.f39901c.size() * 4);
    }

    public int i() {
        int i9 = this.f39910l;
        if (i9 == -1 && this.f39911m == -1) {
            return -1;
        }
        return (i9 == 1 ? 1 : 0) | (this.f39911m == 1 ? 2 : 0);
    }

    public boolean j() {
        return this.f39907i;
    }

    public boolean k() {
        return this.f39905g;
    }

    public boolean l() {
        return this.f39908j == 1;
    }

    public boolean m() {
        return this.f39909k == 1;
    }

    public d n(int i9) {
        this.f39906h = i9;
        this.f39907i = true;
        return this;
    }

    public d o(boolean z10) {
        this.f39910l = z10 ? 1 : 0;
        return this;
    }

    public d p(boolean z10) {
        this.f39915q = z10;
        return this;
    }

    public d q(int i9) {
        this.f39904f = i9;
        this.f39905g = true;
        return this;
    }

    public d r(@Nullable String str) {
        this.f39903e = str == null ? null : com.google.common.base.c.f(str);
        return this;
    }

    public d s(float f10) {
        this.f39913o = f10;
        return this;
    }

    public d t(int i9) {
        this.f39912n = i9;
        return this;
    }

    public d u(boolean z10) {
        this.f39911m = z10 ? 1 : 0;
        return this;
    }

    public d v(int i9) {
        this.f39914p = i9;
        return this;
    }

    public void w(String[] strArr) {
        this.f39901c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f39899a = str;
    }

    public void y(String str) {
        this.f39900b = str;
    }

    public void z(String str) {
        this.f39902d = str;
    }
}
