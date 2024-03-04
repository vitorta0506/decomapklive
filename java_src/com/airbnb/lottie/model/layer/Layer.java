package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.Mask;
import i.j;
import i.k;
import i.l;
import java.util.List;
import java.util.Locale;
import org.light.utils.IOUtils;
/* loaded from: classes.dex */
public class Layer {

    /* renamed from: a  reason: collision with root package name */
    private final List<j.c> f3799a;

    /* renamed from: b  reason: collision with root package name */
    private final com.airbnb.lottie.d f3800b;

    /* renamed from: c  reason: collision with root package name */
    private final String f3801c;

    /* renamed from: d  reason: collision with root package name */
    private final long f3802d;

    /* renamed from: e  reason: collision with root package name */
    private final LayerType f3803e;

    /* renamed from: f  reason: collision with root package name */
    private final long f3804f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f3805g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Mask> f3806h;

    /* renamed from: i  reason: collision with root package name */
    private final l f3807i;

    /* renamed from: j  reason: collision with root package name */
    private final int f3808j;

    /* renamed from: k  reason: collision with root package name */
    private final int f3809k;

    /* renamed from: l  reason: collision with root package name */
    private final int f3810l;

    /* renamed from: m  reason: collision with root package name */
    private final float f3811m;

    /* renamed from: n  reason: collision with root package name */
    private final float f3812n;

    /* renamed from: o  reason: collision with root package name */
    private final int f3813o;

    /* renamed from: p  reason: collision with root package name */
    private final int f3814p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final j f3815q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final k f3816r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private final i.b f3817s;

    /* renamed from: t  reason: collision with root package name */
    private final List<n.a<Float>> f3818t;

    /* renamed from: u  reason: collision with root package name */
    private final MatteType f3819u;

    /* renamed from: v  reason: collision with root package name */
    private final boolean f3820v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final j.a f3821w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final l.j f3822x;

    /* loaded from: classes.dex */
    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* loaded from: classes.dex */
    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List<j.c> list, com.airbnb.lottie.d dVar, String str, long j10, LayerType layerType, long j11, @Nullable String str2, List<Mask> list2, l lVar, int i9, int i10, int i11, float f10, float f11, int i12, int i13, @Nullable j jVar, @Nullable k kVar, List<n.a<Float>> list3, MatteType matteType, @Nullable i.b bVar, boolean z10, @Nullable j.a aVar, @Nullable l.j jVar2) {
        this.f3799a = list;
        this.f3800b = dVar;
        this.f3801c = str;
        this.f3802d = j10;
        this.f3803e = layerType;
        this.f3804f = j11;
        this.f3805g = str2;
        this.f3806h = list2;
        this.f3807i = lVar;
        this.f3808j = i9;
        this.f3809k = i10;
        this.f3810l = i11;
        this.f3811m = f10;
        this.f3812n = f11;
        this.f3813o = i12;
        this.f3814p = i13;
        this.f3815q = jVar;
        this.f3816r = kVar;
        this.f3818t = list3;
        this.f3819u = matteType;
        this.f3817s = bVar;
        this.f3820v = z10;
        this.f3821w = aVar;
        this.f3822x = jVar2;
    }

    @Nullable
    public j.a a() {
        return this.f3821w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.airbnb.lottie.d b() {
        return this.f3800b;
    }

    @Nullable
    public l.j c() {
        return this.f3822x;
    }

    public long d() {
        return this.f3802d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<n.a<Float>> e() {
        return this.f3818t;
    }

    public LayerType f() {
        return this.f3803e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Mask> g() {
        return this.f3806h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MatteType h() {
        return this.f3819u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String i() {
        return this.f3801c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long j() {
        return this.f3804f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.f3814p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int l() {
        return this.f3813o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public String m() {
        return this.f3805g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<j.c> n() {
        return this.f3799a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int o() {
        return this.f3810l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int p() {
        return this.f3809k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int q() {
        return this.f3808j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float r() {
        return this.f3812n / this.f3800b.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public j s() {
        return this.f3815q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public k t() {
        return this.f3816r;
    }

    public String toString() {
        return y("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public i.b u() {
        return this.f3817s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float v() {
        return this.f3811m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l w() {
        return this.f3807i;
    }

    public boolean x() {
        return this.f3820v;
    }

    public String y(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(i());
        sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        Layer t10 = this.f3800b.t(j());
        if (t10 != null) {
            sb2.append("\t\tParents: ");
            sb2.append(t10.i());
            Layer t11 = this.f3800b.t(t10.j());
            while (t11 != null) {
                sb2.append("->");
                sb2.append(t11.i());
                t11 = this.f3800b.t(t11.j());
            }
            sb2.append(str);
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (!g().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(g().size());
            sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (q() != 0 && p() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(q()), Integer.valueOf(p()), Integer.valueOf(o())));
        }
        if (!this.f3799a.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (j.c cVar : this.f3799a) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(cVar);
                sb2.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
        }
        return sb2.toString();
    }
}
