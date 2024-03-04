package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
final class o {

    /* renamed from: a  reason: collision with root package name */
    q[] f44396a;

    /* renamed from: b  reason: collision with root package name */
    int f44397b;

    /* renamed from: c  reason: collision with root package name */
    int f44398c;

    /* renamed from: d  reason: collision with root package name */
    private long f44399d;

    /* renamed from: e  reason: collision with root package name */
    private long f44400e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(long j10) {
        g(j10);
    }

    public void a(q qVar) {
        long j10;
        long a10 = qVar.a();
        if (a10 > this.f44400e) {
            c();
            return;
        }
        while (true) {
            long j11 = this.f44400e;
            j10 = this.f44399d;
            if (j11 - j10 >= a10) {
                break;
            }
            f();
        }
        q[] qVarArr = this.f44396a;
        int i9 = this.f44397b;
        int i10 = i9 + 1;
        this.f44397b = i10;
        qVarArr[i9] = qVar;
        this.f44399d = j10 + a10;
        if (i10 == qVarArr.length) {
            this.f44397b = 0;
        }
    }

    public long b() {
        return this.f44400e;
    }

    public void c() {
        while (true) {
            int i9 = this.f44398c;
            if (i9 != this.f44397b) {
                q[] qVarArr = this.f44396a;
                int i10 = i9 + 1;
                this.f44398c = i10;
                qVarArr[i9] = null;
                if (i10 == qVarArr.length) {
                    this.f44398c = 0;
                }
            } else {
                this.f44397b = 0;
                this.f44398c = 0;
                this.f44399d = 0L;
                return;
            }
        }
    }

    public q d(int i9) {
        if (i9 > 0 && i9 <= e()) {
            int i10 = this.f44397b - i9;
            if (i10 < 0) {
                q[] qVarArr = this.f44396a;
                return qVarArr[i10 + qVarArr.length];
            }
            return this.f44396a[i10];
        }
        throw new IndexOutOfBoundsException("Index " + i9 + " out of bounds for length " + e());
    }

    public int e() {
        int i9 = this.f44397b;
        int i10 = this.f44398c;
        return i9 < i10 ? (this.f44396a.length - i10) + i9 : i9 - i10;
    }

    public q f() {
        q qVar = this.f44396a[this.f44398c];
        if (qVar == null) {
            return null;
        }
        this.f44399d -= qVar.a();
        q[] qVarArr = this.f44396a;
        int i9 = this.f44398c;
        int i10 = i9 + 1;
        this.f44398c = i10;
        qVarArr[i9] = null;
        if (i10 == qVarArr.length) {
            this.f44398c = 0;
        }
        return qVar;
    }

    public void g(long j10) {
        int i9 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i9 >= 0 && j10 <= 4294967295L) {
            if (this.f44400e == j10) {
                return;
            }
            this.f44400e = j10;
            if (i9 == 0) {
                c();
            } else {
                while (this.f44399d > j10) {
                    f();
                }
            }
            int i10 = (int) (j10 / 32);
            if (j10 % 32 != 0) {
                i10++;
            }
            q[] qVarArr = this.f44396a;
            if (qVarArr == null || qVarArr.length != i10) {
                q[] qVarArr2 = new q[i10];
                int e10 = e();
                if (this.f44396a != null) {
                    int i11 = this.f44398c;
                    for (int i12 = 0; i12 < e10; i12++) {
                        q[] qVarArr3 = this.f44396a;
                        int i13 = i11 + 1;
                        qVarArr2[i12] = qVarArr3[i11];
                        i11 = i13 == qVarArr3.length ? 0 : i13;
                    }
                }
                this.f44398c = 0;
                this.f44397b = 0 + e10;
                this.f44396a = qVarArr2;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("capacity is invalid: " + j10);
    }
}
