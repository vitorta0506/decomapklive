package c2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.k1;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes.dex */
public interface e0 {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f1484a;

        /* renamed from: b  reason: collision with root package name */
        public final byte[] f1485b;

        /* renamed from: c  reason: collision with root package name */
        public final int f1486c;

        /* renamed from: d  reason: collision with root package name */
        public final int f1487d;

        public a(int i9, byte[] bArr, int i10, int i11) {
            this.f1484a = i9;
            this.f1485b = bArr;
            this.f1486c = i10;
            this.f1487d = i11;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f1484a == aVar.f1484a && this.f1486c == aVar.f1486c && this.f1487d == aVar.f1487d && Arrays.equals(this.f1485b, aVar.f1485b);
        }

        public int hashCode() {
            return (((((this.f1484a * 31) + Arrays.hashCode(this.f1485b)) * 31) + this.f1486c) * 31) + this.f1487d;
        }
    }

    void a(com.google.android.exoplayer2.util.b0 b0Var, int i9);

    int b(j3.f fVar, int i9, boolean z10) throws IOException;

    void c(long j10, int i9, int i10, int i11, @Nullable a aVar);

    void d(k1 k1Var);

    int e(j3.f fVar, int i9, boolean z10, int i10) throws IOException;

    void f(com.google.android.exoplayer2.util.b0 b0Var, int i9, int i10);
}
