package m2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import com.google.android.exoplayer2.util.l0;
import com.guochao.faceshow.aaspring.utils.EventTrackingUtils;
import java.util.Arrays;
import java.util.Collections;
import kotlin.UByte;
import m2.i0;
/* loaded from: classes.dex */
public final class o implements m {

    /* renamed from: l  reason: collision with root package name */
    private static final float[] f54605l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final k0 f54606a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.b0 f54607b;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final u f54610e;

    /* renamed from: f  reason: collision with root package name */
    private b f54611f;

    /* renamed from: g  reason: collision with root package name */
    private long f54612g;

    /* renamed from: h  reason: collision with root package name */
    private String f54613h;

    /* renamed from: i  reason: collision with root package name */
    private c2.e0 f54614i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54615j;

    /* renamed from: c  reason: collision with root package name */
    private final boolean[] f54608c = new boolean[4];

    /* renamed from: d  reason: collision with root package name */
    private final a f54609d = new a(128);

    /* renamed from: k  reason: collision with root package name */
    private long f54616k = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: f  reason: collision with root package name */
        private static final byte[] f54617f = {0, 0, 1};

        /* renamed from: a  reason: collision with root package name */
        private boolean f54618a;

        /* renamed from: b  reason: collision with root package name */
        private int f54619b;

        /* renamed from: c  reason: collision with root package name */
        public int f54620c;

        /* renamed from: d  reason: collision with root package name */
        public int f54621d;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f54622e;

        public a(int i9) {
            this.f54622e = new byte[i9];
        }

        public void a(byte[] bArr, int i9, int i10) {
            if (this.f54618a) {
                int i11 = i10 - i9;
                byte[] bArr2 = this.f54622e;
                int length = bArr2.length;
                int i12 = this.f54620c;
                if (length < i12 + i11) {
                    this.f54622e = Arrays.copyOf(bArr2, (i12 + i11) * 2);
                }
                System.arraycopy(bArr, i9, this.f54622e, this.f54620c, i11);
                this.f54620c += i11;
            }
        }

        public boolean b(int i9, int i10) {
            int i11 = this.f54619b;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i9 == 179 || i9 == 181) {
                                this.f54620c -= i10;
                                this.f54618a = false;
                                return true;
                            }
                        } else if ((i9 & 240) != 32) {
                            com.google.android.exoplayer2.util.r.i("H263Reader", "Unexpected start code value");
                            c();
                        } else {
                            this.f54621d = this.f54620c;
                            this.f54619b = 4;
                        }
                    } else if (i9 > 31) {
                        com.google.android.exoplayer2.util.r.i("H263Reader", "Unexpected start code value");
                        c();
                    } else {
                        this.f54619b = 3;
                    }
                } else if (i9 != 181) {
                    com.google.android.exoplayer2.util.r.i("H263Reader", "Unexpected start code value");
                    c();
                } else {
                    this.f54619b = 2;
                }
            } else if (i9 == 176) {
                this.f54619b = 1;
                this.f54618a = true;
            }
            byte[] bArr = f54617f;
            a(bArr, 0, bArr.length);
            return false;
        }

        public void c() {
            this.f54618a = false;
            this.f54620c = 0;
            this.f54619b = 0;
        }
    }

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final c2.e0 f54623a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f54624b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f54625c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f54626d;

        /* renamed from: e  reason: collision with root package name */
        private int f54627e;

        /* renamed from: f  reason: collision with root package name */
        private int f54628f;

        /* renamed from: g  reason: collision with root package name */
        private long f54629g;

        /* renamed from: h  reason: collision with root package name */
        private long f54630h;

        public b(c2.e0 e0Var) {
            this.f54623a = e0Var;
        }

        public void a(byte[] bArr, int i9, int i10) {
            if (this.f54625c) {
                int i11 = this.f54628f;
                int i12 = (i9 + 1) - i11;
                if (i12 < i10) {
                    this.f54626d = ((bArr[i12] & 192) >> 6) == 0;
                    this.f54625c = false;
                    return;
                }
                this.f54628f = i11 + (i10 - i9);
            }
        }

        public void b(long j10, int i9, boolean z10) {
            if (this.f54627e == 182 && z10 && this.f54624b) {
                long j11 = this.f54630h;
                if (j11 != -9223372036854775807L) {
                    this.f54623a.c(j11, this.f54626d ? 1 : 0, (int) (j10 - this.f54629g), i9, null);
                }
            }
            if (this.f54627e != 179) {
                this.f54629g = j10;
            }
        }

        public void c(int i9, long j10) {
            this.f54627e = i9;
            this.f54626d = false;
            this.f54624b = i9 == 182 || i9 == 179;
            this.f54625c = i9 == 182;
            this.f54628f = 0;
            this.f54630h = j10;
        }

        public void d() {
            this.f54624b = false;
            this.f54625c = false;
            this.f54626d = false;
            this.f54627e = -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(@Nullable k0 k0Var) {
        this.f54606a = k0Var;
        if (k0Var != null) {
            this.f54610e = new u(EventTrackingUtils.EVENT_TRACKING_RESULT_CODE, 128);
            this.f54607b = new com.google.android.exoplayer2.util.b0();
            return;
        }
        this.f54610e = null;
        this.f54607b = null;
    }

    private static k1 a(a aVar, int i9, String str) {
        byte[] copyOf = Arrays.copyOf(aVar.f54622e, aVar.f54620c);
        com.google.android.exoplayer2.util.a0 a0Var = new com.google.android.exoplayer2.util.a0(copyOf);
        a0Var.s(i9);
        a0Var.s(4);
        a0Var.q();
        a0Var.r(8);
        if (a0Var.g()) {
            a0Var.r(4);
            a0Var.r(3);
        }
        int h10 = a0Var.h(4);
        float f10 = 1.0f;
        if (h10 == 15) {
            int h11 = a0Var.h(8);
            int h12 = a0Var.h(8);
            if (h12 == 0) {
                com.google.android.exoplayer2.util.r.i("H263Reader", "Invalid aspect ratio");
            } else {
                f10 = h11 / h12;
            }
        } else {
            float[] fArr = f54605l;
            if (h10 < fArr.length) {
                f10 = fArr[h10];
            } else {
                com.google.android.exoplayer2.util.r.i("H263Reader", "Invalid aspect ratio");
            }
        }
        if (a0Var.g()) {
            a0Var.r(2);
            a0Var.r(1);
            if (a0Var.g()) {
                a0Var.r(15);
                a0Var.q();
                a0Var.r(15);
                a0Var.q();
                a0Var.r(15);
                a0Var.q();
                a0Var.r(3);
                a0Var.r(11);
                a0Var.q();
                a0Var.r(15);
                a0Var.q();
            }
        }
        if (a0Var.h(2) != 0) {
            com.google.android.exoplayer2.util.r.i("H263Reader", "Unhandled video object layer shape");
        }
        a0Var.q();
        int h13 = a0Var.h(16);
        a0Var.q();
        if (a0Var.g()) {
            if (h13 == 0) {
                com.google.android.exoplayer2.util.r.i("H263Reader", "Invalid vop_increment_time_resolution");
            } else {
                int i10 = 0;
                for (int i11 = h13 - 1; i11 > 0; i11 >>= 1) {
                    i10++;
                }
                a0Var.r(i10);
            }
        }
        a0Var.q();
        int h14 = a0Var.h(13);
        a0Var.q();
        int h15 = a0Var.h(13);
        a0Var.q();
        a0Var.q();
        return new k1.b().S(str).e0("video/mp4v-es").j0(h14).Q(h15).a0(f10).T(Collections.singletonList(copyOf)).E();
    }

    @Override // m2.m
    public void b(com.google.android.exoplayer2.util.b0 b0Var) {
        com.google.android.exoplayer2.util.a.h(this.f54611f);
        com.google.android.exoplayer2.util.a.h(this.f54614i);
        int e10 = b0Var.e();
        int f10 = b0Var.f();
        byte[] d10 = b0Var.d();
        this.f54612g += b0Var.a();
        this.f54614i.a(b0Var, b0Var.a());
        while (true) {
            int c10 = com.google.android.exoplayer2.util.w.c(d10, e10, f10, this.f54608c);
            if (c10 == f10) {
                break;
            }
            int i9 = c10 + 3;
            int i10 = b0Var.d()[i9] & UByte.MAX_VALUE;
            int i11 = c10 - e10;
            int i12 = 0;
            if (!this.f54615j) {
                if (i11 > 0) {
                    this.f54609d.a(d10, e10, c10);
                }
                if (this.f54609d.b(i10, i11 < 0 ? -i11 : 0)) {
                    c2.e0 e0Var = this.f54614i;
                    a aVar = this.f54609d;
                    e0Var.d(a(aVar, aVar.f54621d, (String) com.google.android.exoplayer2.util.a.e(this.f54613h)));
                    this.f54615j = true;
                }
            }
            this.f54611f.a(d10, e10, c10);
            u uVar = this.f54610e;
            if (uVar != null) {
                if (i11 > 0) {
                    uVar.a(d10, e10, c10);
                } else {
                    i12 = -i11;
                }
                if (this.f54610e.b(i12)) {
                    u uVar2 = this.f54610e;
                    ((com.google.android.exoplayer2.util.b0) l0.j(this.f54607b)).N(this.f54610e.f54749d, com.google.android.exoplayer2.util.w.q(uVar2.f54749d, uVar2.f54750e));
                    ((k0) l0.j(this.f54606a)).a(this.f54616k, this.f54607b);
                }
                if (i10 == 178 && b0Var.d()[c10 + 2] == 1) {
                    this.f54610e.e(i10);
                }
            }
            int i13 = f10 - c10;
            this.f54611f.b(this.f54612g - i13, i13, this.f54615j);
            this.f54611f.c(i10, this.f54616k);
            e10 = i9;
        }
        if (!this.f54615j) {
            this.f54609d.a(d10, e10, f10);
        }
        this.f54611f.a(d10, e10, f10);
        u uVar3 = this.f54610e;
        if (uVar3 != null) {
            uVar3.a(d10, e10, f10);
        }
    }

    @Override // m2.m
    public void c() {
        com.google.android.exoplayer2.util.w.a(this.f54608c);
        this.f54609d.c();
        b bVar = this.f54611f;
        if (bVar != null) {
            bVar.d();
        }
        u uVar = this.f54610e;
        if (uVar != null) {
            uVar.d();
        }
        this.f54612g = 0L;
        this.f54616k = -9223372036854775807L;
    }

    @Override // m2.m
    public void d(c2.n nVar, i0.d dVar) {
        dVar.a();
        this.f54613h = dVar.b();
        c2.e0 q10 = nVar.q(dVar.c(), 2);
        this.f54614i = q10;
        this.f54611f = new b(q10);
        k0 k0Var = this.f54606a;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }

    @Override // m2.m
    public void e() {
    }

    @Override // m2.m
    public void f(long j10, int i9) {
        if (j10 != -9223372036854775807L) {
            this.f54616k = j10;
        }
    }
}
