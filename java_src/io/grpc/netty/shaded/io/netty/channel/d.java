package io.grpc.netty.shaded.io.netty.channel;

import io.grpc.netty.shaded.io.netty.channel.g0;
import io.grpc.netty.shaded.io.netty.channel.v0;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public class d extends g0 {

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f43568g;
    @Deprecated

    /* renamed from: h  reason: collision with root package name */
    public static final d f43569h;

    /* renamed from: d  reason: collision with root package name */
    private final int f43570d;

    /* renamed from: e  reason: collision with root package name */
    private final int f43571e;

    /* renamed from: f  reason: collision with root package name */
    private final int f43572f;

    /* loaded from: classes5.dex */
    private final class a extends g0.a {

        /* renamed from: j  reason: collision with root package name */
        private final int f43573j;

        /* renamed from: k  reason: collision with root package name */
        private final int f43574k;

        /* renamed from: l  reason: collision with root package name */
        private int f43575l;

        /* renamed from: m  reason: collision with root package name */
        private int f43576m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f43577n;

        a(int i9, int i10, int i11) {
            super();
            this.f43573j = i9;
            this.f43574k = i10;
            this.f43575l = d.h(i11);
            this.f43576m = d.f43568g[this.f43575l];
        }

        private void o(int i9) {
            if (i9 <= d.f43568g[Math.max(0, this.f43575l - 1)]) {
                if (this.f43577n) {
                    this.f43575l = Math.max(this.f43575l - 1, this.f43573j);
                    this.f43576m = d.f43568g[this.f43575l];
                    this.f43577n = false;
                    return;
                }
                this.f43577n = true;
            } else if (i9 >= this.f43576m) {
                this.f43575l = Math.min(this.f43575l + 4, this.f43574k);
                this.f43576m = d.f43568g[this.f43575l];
                this.f43577n = false;
            }
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.g0.a, io.grpc.netty.shaded.io.netty.channel.v0.c
        public void d() {
            o(n());
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.g0.a, io.grpc.netty.shaded.io.netty.channel.v0.c
        public void h(int i9) {
            if (i9 == j()) {
                o(i9);
            }
            super.h(i9);
        }

        @Override // io.grpc.netty.shaded.io.netty.channel.v0.c
        public int i() {
            return this.f43576m;
        }
    }

    static {
        int i9;
        ArrayList arrayList = new ArrayList();
        int i10 = 16;
        while (true) {
            if (i10 >= 512) {
                break;
            }
            arrayList.add(Integer.valueOf(i10));
            i10 += 16;
        }
        for (i9 = 512; i9 > 0; i9 <<= 1) {
            arrayList.add(Integer.valueOf(i9));
        }
        f43568g = new int[arrayList.size()];
        int i11 = 0;
        while (true) {
            int[] iArr = f43568g;
            if (i11 < iArr.length) {
                iArr[i11] = ((Integer) arrayList.get(i11)).intValue();
                i11++;
            } else {
                f43569h = new d();
                return;
            }
        }
    }

    public d() {
        this(64, 2048, 65536);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(int i9) {
        int length = f43568g.length - 1;
        int i10 = 0;
        while (length >= i10) {
            if (length == i10) {
                return length;
            }
            int i11 = (i10 + length) >>> 1;
            int[] iArr = f43568g;
            int i12 = iArr[i11];
            int i13 = i11 + 1;
            if (i9 > iArr[i13]) {
                i10 = i13;
            } else if (i9 >= i12) {
                return i9 == i12 ? i11 : i13;
            } else {
                length = i11 - 1;
            }
        }
        return i10;
    }

    @Override // io.grpc.netty.shaded.io.netty.channel.v0
    public v0.c a() {
        return new a(this.f43570d, this.f43571e, this.f43572f);
    }

    public d(int i9, int i10, int i11) {
        io.grpc.netty.shaded.io.netty.util.internal.s.l(i9, "minimum");
        if (i10 < i9) {
            throw new IllegalArgumentException("initial: " + i10);
        } else if (i11 >= i10) {
            int h10 = h(i9);
            int[] iArr = f43568g;
            if (iArr[h10] < i9) {
                this.f43570d = h10 + 1;
            } else {
                this.f43570d = h10;
            }
            int h11 = h(i11);
            if (iArr[h11] > i11) {
                this.f43571e = h11 - 1;
            } else {
                this.f43571e = h11;
            }
            this.f43572f = i10;
        } else {
            throw new IllegalArgumentException("maximum: " + i11);
        }
    }
}
