package c2;

import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public interface b0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final c0 f1464a;

        /* renamed from: b  reason: collision with root package name */
        public final c0 f1465b;

        public a(c0 c0Var) {
            this(c0Var, c0Var);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f1464a.equals(aVar.f1464a) && this.f1465b.equals(aVar.f1465b);
        }

        public int hashCode() {
            return (this.f1464a.hashCode() * 31) + this.f1465b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f1464a);
            if (this.f1464a.equals(this.f1465b)) {
                str = "";
            } else {
                str = ", " + this.f1465b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }

        public a(c0 c0Var, c0 c0Var2) {
            this.f1464a = (c0) com.google.android.exoplayer2.util.a.e(c0Var);
            this.f1465b = (c0) com.google.android.exoplayer2.util.a.e(c0Var2);
        }
    }

    /* loaded from: classes.dex */
    public static class b implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final long f1466a;

        /* renamed from: b  reason: collision with root package name */
        private final a f1467b;

        public b(long j10) {
            this(j10, 0L);
        }

        @Override // c2.b0
        public a c(long j10) {
            return this.f1467b;
        }

        @Override // c2.b0
        public boolean e() {
            return false;
        }

        @Override // c2.b0
        public long i() {
            return this.f1466a;
        }

        public b(long j10, long j11) {
            this.f1466a = j10;
            this.f1467b = new a(j11 == 0 ? c0.f1468c : new c0(0L, j11));
        }
    }

    a c(long j10);

    boolean e();

    long i();
}
