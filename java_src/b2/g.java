package b2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f1135a;

    /* renamed from: b  reason: collision with root package name */
    public final k1 f1136b;

    /* renamed from: c  reason: collision with root package name */
    public final k1 f1137c;

    /* renamed from: d  reason: collision with root package name */
    public final int f1138d;

    /* renamed from: e  reason: collision with root package name */
    public final int f1139e;

    public g(String str, k1 k1Var, k1 k1Var2, int i9, int i10) {
        com.google.android.exoplayer2.util.a.a(i9 == 0 || i10 == 0);
        this.f1135a = com.google.android.exoplayer2.util.a.d(str);
        this.f1136b = (k1) com.google.android.exoplayer2.util.a.e(k1Var);
        this.f1137c = (k1) com.google.android.exoplayer2.util.a.e(k1Var2);
        this.f1138d = i9;
        this.f1139e = i10;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f1138d == gVar.f1138d && this.f1139e == gVar.f1139e && this.f1135a.equals(gVar.f1135a) && this.f1136b.equals(gVar.f1136b) && this.f1137c.equals(gVar.f1137c);
    }

    public int hashCode() {
        return ((((((((527 + this.f1138d) * 31) + this.f1139e) * 31) + this.f1135a.hashCode()) * 31) + this.f1136b.hashCode()) * 31) + this.f1137c.hashCode();
    }
}
