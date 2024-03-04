package io.grpc.netty.shaded.io.netty.handler.codec.http2;
/* loaded from: classes5.dex */
public final class f0 {

    /* renamed from: a  reason: collision with root package name */
    private short f44281a;

    public f0() {
    }

    public f0 a(boolean z10) {
        return n(z10, (short) 1);
    }

    public boolean b() {
        return i((short) 1);
    }

    public f0 c(boolean z10) {
        return n(z10, (short) 4);
    }

    public boolean d() {
        return i((short) 4);
    }

    public f0 e(boolean z10) {
        return n(z10, (short) 1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && f0.class == obj.getClass() && this.f44281a == ((f0) obj).f44281a;
    }

    public boolean f() {
        return i((short) 1);
    }

    public int g() {
        return m() ? 5 : 0;
    }

    public int h() {
        return k() ? 1 : 0;
    }

    public int hashCode() {
        return 31 + this.f44281a;
    }

    public boolean i(short s10) {
        return (s10 & this.f44281a) != 0;
    }

    public f0 j(boolean z10) {
        return n(z10, (short) 8);
    }

    public boolean k() {
        return i((short) 8);
    }

    public f0 l(boolean z10) {
        return n(z10, (short) 32);
    }

    public boolean m() {
        return i((short) 32);
    }

    public f0 n(boolean z10, short s10) {
        if (z10) {
            this.f44281a = (short) (this.f44281a | s10);
        } else {
            this.f44281a = (short) (this.f44281a & (~s10));
        }
        return this;
    }

    public short o() {
        return this.f44281a;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("value = ");
        sb2.append((int) this.f44281a);
        sb2.append(" (");
        if (b()) {
            sb2.append("ACK,");
        }
        if (d()) {
            sb2.append("END_OF_HEADERS,");
        }
        if (f()) {
            sb2.append("END_OF_STREAM,");
        }
        if (m()) {
            sb2.append("PRIORITY_PRESENT,");
        }
        if (k()) {
            sb2.append("PADDING_PRESENT,");
        }
        sb2.append(')');
        return sb2.toString();
    }

    public f0(short s10) {
        this.f44281a = s10;
    }
}
