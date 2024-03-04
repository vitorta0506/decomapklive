package m2;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;
import m2.i0;
/* loaded from: classes.dex */
public final class j implements i0.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f54562a;

    /* renamed from: b  reason: collision with root package name */
    private final List<k1> f54563b;

    public j(int i9) {
        this(i9, ImmutableList.of());
    }

    private d0 c(i0.b bVar) {
        return new d0(e(bVar));
    }

    private k0 d(i0.b bVar) {
        return new k0(e(bVar));
    }

    private List<k1> e(i0.b bVar) {
        String str;
        int i9;
        if (f(32)) {
            return this.f54563b;
        }
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(bVar.f54556d);
        List<k1> list = this.f54563b;
        while (b0Var.a() > 0) {
            int D = b0Var.D();
            int e10 = b0Var.e() + b0Var.D();
            if (D == 134) {
                list = new ArrayList<>();
                int D2 = b0Var.D() & 31;
                for (int i10 = 0; i10 < D2; i10++) {
                    String A = b0Var.A(3);
                    int D3 = b0Var.D();
                    boolean z10 = (D3 & 128) != 0;
                    if (z10) {
                        i9 = D3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i9 = 1;
                    }
                    byte D4 = (byte) b0Var.D();
                    b0Var.Q(1);
                    List<byte[]> list2 = null;
                    if (z10) {
                        list2 = com.google.android.exoplayer2.util.e.b((D4 & 64) != 0);
                    }
                    list.add(new k1.b().e0(str).V(A).F(i9).T(list2).E());
                }
            }
            b0Var.P(e10);
        }
        return list;
    }

    private boolean f(int i9) {
        return (i9 & this.f54562a) != 0;
    }

    @Override // m2.i0.c
    public SparseArray<i0> a() {
        return new SparseArray<>();
    }

    @Override // m2.i0.c
    @Nullable
    public i0 b(int i9, i0.b bVar) {
        if (i9 != 2) {
            if (i9 == 3 || i9 == 4) {
                return new w(new t(bVar.f54554b));
            }
            if (i9 != 21) {
                if (i9 == 27) {
                    if (f(4)) {
                        return null;
                    }
                    return new w(new p(c(bVar), f(1), f(8)));
                } else if (i9 != 36) {
                    if (i9 != 89) {
                        if (i9 != 138) {
                            if (i9 != 172) {
                                if (i9 != 257) {
                                    if (i9 != 134) {
                                        if (i9 != 135) {
                                            switch (i9) {
                                                case 15:
                                                    if (f(2)) {
                                                        return null;
                                                    }
                                                    return new w(new i(false, bVar.f54554b));
                                                case 16:
                                                    return new w(new o(d(bVar)));
                                                case 17:
                                                    if (f(2)) {
                                                        return null;
                                                    }
                                                    return new w(new s(bVar.f54554b));
                                                default:
                                                    switch (i9) {
                                                        case 128:
                                                            break;
                                                        case 129:
                                                            break;
                                                        case 130:
                                                            if (!f(64)) {
                                                                return null;
                                                            }
                                                            break;
                                                        default:
                                                            return null;
                                                    }
                                            }
                                        }
                                        return new w(new c(bVar.f54554b));
                                    } else if (f(16)) {
                                        return null;
                                    } else {
                                        return new c0(new v("application/x-scte35"));
                                    }
                                }
                                return new c0(new v("application/vnd.dvb.ait"));
                            }
                            return new w(new f(bVar.f54554b));
                        }
                        return new w(new k(bVar.f54554b));
                    }
                    return new w(new l(bVar.f54555c));
                } else {
                    return new w(new q(c(bVar)));
                }
            }
            return new w(new r());
        }
        return new w(new n(d(bVar)));
    }

    public j(int i9, List<k1> list) {
        this.f54562a = i9;
        this.f54563b = list;
    }
}
