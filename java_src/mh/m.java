package mh;

import java.util.Arrays;
/* loaded from: classes7.dex */
public final class m {

    /* renamed from: b  reason: collision with root package name */
    public static final m f55128b = b((byte) 0);

    /* renamed from: a  reason: collision with root package name */
    private final byte f55129a;

    /* loaded from: classes7.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private byte f55130a;

        public m a() {
            return m.b(this.f55130a);
        }

        public b b(boolean z10) {
            if (z10) {
                this.f55130a = (byte) (this.f55130a | 1);
            } else {
                this.f55130a = (byte) (this.f55130a & (-2));
            }
            return this;
        }

        private b(byte b10) {
            this.f55130a = b10;
        }
    }

    private m(byte b10) {
        this.f55129a = b10;
    }

    public static b a() {
        return new b((byte) 0);
    }

    public static m b(byte b10) {
        return new m(b10);
    }

    private boolean c(int i9) {
        return (i9 & this.f55129a) != 0;
    }

    public boolean d() {
        return c(1);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof m) && this.f55129a == ((m) obj).f55129a;
    }

    public int hashCode() {
        return Arrays.hashCode(new byte[]{this.f55129a});
    }

    public String toString() {
        return "TraceOptions{sampled=" + d() + "}";
    }
}
