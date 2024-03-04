package com.airbnb.lottie;

import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class d {

    /* renamed from: c  reason: collision with root package name */
    private Map<String, List<Layer>> f3620c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, g> f3621d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, h.b> f3622e;

    /* renamed from: f  reason: collision with root package name */
    private List<h.g> f3623f;

    /* renamed from: g  reason: collision with root package name */
    private SparseArrayCompat<h.c> f3624g;

    /* renamed from: h  reason: collision with root package name */
    private LongSparseArray<Layer> f3625h;

    /* renamed from: i  reason: collision with root package name */
    private List<Layer> f3626i;

    /* renamed from: j  reason: collision with root package name */
    private Rect f3627j;

    /* renamed from: k  reason: collision with root package name */
    private float f3628k;

    /* renamed from: l  reason: collision with root package name */
    private float f3629l;

    /* renamed from: m  reason: collision with root package name */
    private float f3630m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f3631n;

    /* renamed from: a  reason: collision with root package name */
    private final n f3618a = new n();

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<String> f3619b = new HashSet<>();

    /* renamed from: o  reason: collision with root package name */
    private int f3632o = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void a(String str) {
        m.d.c(str);
        this.f3619b.add(str);
    }

    public Rect b() {
        return this.f3627j;
    }

    public SparseArrayCompat<h.c> c() {
        return this.f3624g;
    }

    public float d() {
        return (e() / this.f3630m) * 1000.0f;
    }

    public float e() {
        return this.f3629l - this.f3628k;
    }

    public float f() {
        return this.f3629l;
    }

    public Map<String, h.b> g() {
        return this.f3622e;
    }

    public float h(float f10) {
        return m.g.k(this.f3628k, this.f3629l, f10);
    }

    public float i() {
        return this.f3630m;
    }

    public Map<String, g> j() {
        return this.f3621d;
    }

    public List<Layer> k() {
        return this.f3626i;
    }

    @Nullable
    public h.g l(String str) {
        int size = this.f3623f.size();
        for (int i9 = 0; i9 < size; i9++) {
            h.g gVar = this.f3623f.get(i9);
            if (gVar.a(str)) {
                return gVar;
            }
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int m() {
        return this.f3632o;
    }

    public n n() {
        return this.f3618a;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public List<Layer> o(String str) {
        return this.f3620c.get(str);
    }

    public float p() {
        return this.f3628k;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean q() {
        return this.f3631n;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void r(int i9) {
        this.f3632o += i9;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void s(Rect rect, float f10, float f11, float f12, List<Layer> list, LongSparseArray<Layer> longSparseArray, Map<String, List<Layer>> map, Map<String, g> map2, SparseArrayCompat<h.c> sparseArrayCompat, Map<String, h.b> map3, List<h.g> list2) {
        this.f3627j = rect;
        this.f3628k = f10;
        this.f3629l = f11;
        this.f3630m = f12;
        this.f3626i = list;
        this.f3625h = longSparseArray;
        this.f3620c = map;
        this.f3621d = map2;
        this.f3624g = sparseArrayCompat;
        this.f3622e = map3;
        this.f3623f = list2;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Layer t(long j10) {
        return this.f3625h.get(j10);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        for (Layer layer : this.f3626i) {
            sb2.append(layer.y("\t"));
        }
        return sb2.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void u(boolean z10) {
        this.f3631n = z10;
    }

    public void v(boolean z10) {
        this.f3618a.b(z10);
    }
}
