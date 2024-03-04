package n1;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.android.datatransport.Priority;
import java.util.Arrays;
import java.util.Objects;
import n1.o;
/* loaded from: classes.dex */
final class d extends o {

    /* renamed from: a  reason: collision with root package name */
    private final String f55247a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f55248b;

    /* renamed from: c  reason: collision with root package name */
    private final Priority f55249c;

    /* loaded from: classes.dex */
    static final class b extends o.a {

        /* renamed from: a  reason: collision with root package name */
        private String f55250a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f55251b;

        /* renamed from: c  reason: collision with root package name */
        private Priority f55252c;

        @Override // n1.o.a
        public o a() {
            String str = "";
            if (this.f55250a == null) {
                str = " backendName";
            }
            if (this.f55252c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new d(this.f55250a, this.f55251b, this.f55252c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // n1.o.a
        public o.a b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f55250a = str;
            return this;
        }

        @Override // n1.o.a
        public o.a c(@Nullable byte[] bArr) {
            this.f55251b = bArr;
            return this;
        }

        @Override // n1.o.a
        public o.a d(Priority priority) {
            Objects.requireNonNull(priority, "Null priority");
            this.f55252c = priority;
            return this;
        }
    }

    @Override // n1.o
    public String b() {
        return this.f55247a;
    }

    @Override // n1.o
    @Nullable
    public byte[] c() {
        return this.f55248b;
    }

    @Override // n1.o
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Priority d() {
        return this.f55249c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f55247a.equals(oVar.b())) {
                if (Arrays.equals(this.f55248b, oVar instanceof d ? ((d) oVar).f55248b : oVar.c()) && this.f55249c.equals(oVar.d())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f55247a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f55248b)) * 1000003) ^ this.f55249c.hashCode();
    }

    private d(String str, @Nullable byte[] bArr, Priority priority) {
        this.f55247a = str;
        this.f55248b = bArr;
        this.f55249c = priority;
    }
}
