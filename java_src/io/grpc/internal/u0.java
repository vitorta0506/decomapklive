package io.grpc.internal;

import io.grpc.Status;
import io.grpc.h0;
import io.grpc.internal.a;
import io.grpc.s0;
import java.nio.charset.Charset;
import okhttp3.internal.http2.Header;
/* loaded from: classes5.dex */
public abstract class u0 extends a.c {

    /* renamed from: w  reason: collision with root package name */
    private static final h0.a<Integer> f43075w;

    /* renamed from: x  reason: collision with root package name */
    private static final s0.i<Integer> f43076x;

    /* renamed from: s  reason: collision with root package name */
    private Status f43077s;

    /* renamed from: t  reason: collision with root package name */
    private io.grpc.s0 f43078t;

    /* renamed from: u  reason: collision with root package name */
    private Charset f43079u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f43080v;

    /* loaded from: classes5.dex */
    class a implements h0.a<Integer> {
        a() {
        }

        @Override // io.grpc.s0.l
        /* renamed from: c */
        public Integer b(byte[] bArr) {
            if (bArr.length >= 3) {
                return Integer.valueOf(((bArr[0] - 48) * 100) + ((bArr[1] - 48) * 10) + (bArr[2] - 48));
            }
            throw new NumberFormatException("Malformed status code " + new String(bArr, io.grpc.h0.f42330a));
        }

        @Override // io.grpc.s0.l
        /* renamed from: d */
        public byte[] a(Integer num) {
            throw new UnsupportedOperationException();
        }
    }

    static {
        a aVar = new a();
        f43075w = aVar;
        f43076x = io.grpc.h0.b(Header.RESPONSE_STATUS_UTF8, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public u0(int i9, i2 i2Var, p2 p2Var) {
        super(i9, i2Var, p2Var);
        this.f43079u = com.google.common.base.e.f12356c;
    }

    private static Charset Q(io.grpc.s0 s0Var) {
        String str = (String) s0Var.k(GrpcUtil.f42350i);
        if (str != null) {
            String[] split = str.split("charset=", 2);
            try {
                return Charset.forName(split[split.length - 1].trim());
            } catch (Exception unused) {
            }
        }
        return com.google.common.base.e.f12356c;
    }

    private Status S(io.grpc.s0 s0Var) {
        Status r10;
        Status status = (Status) s0Var.k(io.grpc.k0.f43351b);
        if (status != null) {
            return status.r((String) s0Var.k(io.grpc.k0.f43350a));
        }
        if (this.f43080v) {
            return Status.f41706h.r("missing GRPC status in response");
        }
        Integer num = (Integer) s0Var.k(f43076x);
        if (num != null) {
            r10 = GrpcUtil.n(num.intValue());
        } else {
            r10 = Status.f41718t.r("missing HTTP status code");
        }
        return r10.f("missing GRPC status, inferred error from HTTP status code");
    }

    private static void T(io.grpc.s0 s0Var) {
        s0Var.i(f43076x);
        s0Var.i(io.grpc.k0.f43351b);
        s0Var.i(io.grpc.k0.f43350a);
    }

    private Status X(io.grpc.s0 s0Var) {
        Integer num = (Integer) s0Var.k(f43076x);
        if (num == null) {
            return Status.f41718t.r("Missing HTTP status code");
        }
        String str = (String) s0Var.k(GrpcUtil.f42350i);
        if (GrpcUtil.o(str)) {
            return null;
        }
        Status n9 = GrpcUtil.n(num.intValue());
        return n9.f("invalid content-type: " + str);
    }

    protected abstract void R(Status status, boolean z10, io.grpc.s0 s0Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public void U(v1 v1Var, boolean z10) {
        Status status = this.f43077s;
        if (status != null) {
            this.f43077s = status.f("DATA-----------------------------\n" + w1.e(v1Var, this.f43079u));
            v1Var.close();
            if (this.f43077s.o().length() > 1000 || z10) {
                R(this.f43077s, false, this.f43078t);
            }
        } else if (!this.f43080v) {
            R(Status.f41718t.r("headers not received before payload"), false, new io.grpc.s0());
        } else {
            int n9 = v1Var.n();
            E(v1Var);
            if (z10) {
                if (n9 > 0) {
                    this.f43077s = Status.f41718t.r("Received unexpected EOS on non-empty DATA frame from server");
                } else {
                    this.f43077s = Status.f41718t.r("Received unexpected EOS on empty DATA frame from server");
                }
                io.grpc.s0 s0Var = new io.grpc.s0();
                this.f43078t = s0Var;
                P(this.f43077s, false, s0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Finally extract failed */
    public void V(io.grpc.s0 s0Var) {
        com.google.common.base.o.t(s0Var, "headers");
        Status status = this.f43077s;
        if (status != null) {
            this.f43077s = status.f("headers: " + s0Var);
            return;
        }
        try {
            if (this.f43080v) {
                Status r10 = Status.f41718t.r("Received headers twice");
                this.f43077s = r10;
                if (r10 != null) {
                    this.f43077s = r10.f("headers: " + s0Var);
                    this.f43078t = s0Var;
                    this.f43079u = Q(s0Var);
                    return;
                }
                return;
            }
            Integer num = (Integer) s0Var.k(f43076x);
            if (num != null && num.intValue() >= 100 && num.intValue() < 200) {
                Status status2 = this.f43077s;
                if (status2 != null) {
                    this.f43077s = status2.f("headers: " + s0Var);
                    this.f43078t = s0Var;
                    this.f43079u = Q(s0Var);
                    return;
                }
                return;
            }
            this.f43080v = true;
            Status X = X(s0Var);
            this.f43077s = X;
            if (X != null) {
                if (X != null) {
                    this.f43077s = X.f("headers: " + s0Var);
                    this.f43078t = s0Var;
                    this.f43079u = Q(s0Var);
                    return;
                }
                return;
            }
            T(s0Var);
            F(s0Var);
            Status status3 = this.f43077s;
            if (status3 != null) {
                this.f43077s = status3.f("headers: " + s0Var);
                this.f43078t = s0Var;
                this.f43079u = Q(s0Var);
            }
        } catch (Throwable th2) {
            Status status4 = this.f43077s;
            if (status4 != null) {
                this.f43077s = status4.f("headers: " + s0Var);
                this.f43078t = s0Var;
                this.f43079u = Q(s0Var);
            }
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void W(io.grpc.s0 s0Var) {
        com.google.common.base.o.t(s0Var, "trailers");
        if (this.f43077s == null && !this.f43080v) {
            Status X = X(s0Var);
            this.f43077s = X;
            if (X != null) {
                this.f43078t = s0Var;
            }
        }
        Status status = this.f43077s;
        if (status != null) {
            Status f10 = status.f("trailers: " + s0Var);
            this.f43077s = f10;
            R(f10, false, this.f43078t);
            return;
        }
        Status S = S(s0Var);
        T(s0Var);
        H(s0Var, S);
    }

    @Override // io.grpc.internal.a.c, io.grpc.internal.l1.b
    public /* bridge */ /* synthetic */ void d(boolean z10) {
        super.d(z10);
    }
}
