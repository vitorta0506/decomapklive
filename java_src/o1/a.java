package o1;

import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Objects;
import o1.e;
/* loaded from: classes.dex */
final class a extends e {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable<n1.i> f55468a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f55469b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends e.a {

        /* renamed from: a  reason: collision with root package name */
        private Iterable<n1.i> f55470a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f55471b;

        @Override // o1.e.a
        public e a() {
            String str = "";
            if (this.f55470a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f55470a, this.f55471b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // o1.e.a
        public e.a b(Iterable<n1.i> iterable) {
            Objects.requireNonNull(iterable, "Null events");
            this.f55470a = iterable;
            return this;
        }

        @Override // o1.e.a
        public e.a c(@Nullable byte[] bArr) {
            this.f55471b = bArr;
            return this;
        }
    }

    @Override // o1.e
    public Iterable<n1.i> b() {
        return this.f55468a;
    }

    @Override // o1.e
    @Nullable
    public byte[] c() {
        return this.f55469b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.f55468a.equals(eVar.b())) {
                if (Arrays.equals(this.f55469b, eVar instanceof a ? ((a) eVar).f55469b : eVar.c())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f55468a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f55469b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f55468a + ", extras=" + Arrays.toString(this.f55469b) + "}";
    }

    private a(Iterable<n1.i> iterable, @Nullable byte[] bArr) {
        this.f55468a = iterable;
        this.f55469b = bArr;
    }
}
