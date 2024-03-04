package eh;

import com.google.common.collect.ImmutableList;
import com.google.protobuf.Duration;
import eh.l2;
import io.grpc.Status;
import java.util.Objects;
/* loaded from: classes5.dex */
final class e0 extends l2.a.AbstractC0399a.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f38730a;

    /* renamed from: b  reason: collision with root package name */
    private final ImmutableList<Status.Code> f38731b;

    /* renamed from: c  reason: collision with root package name */
    private final Duration f38732c;

    /* renamed from: d  reason: collision with root package name */
    private final Duration f38733d;

    /* renamed from: e  reason: collision with root package name */
    private final Duration f38734e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(int i9, ImmutableList<Status.Code> immutableList, Duration duration, Duration duration2, Duration duration3) {
        this.f38730a = i9;
        Objects.requireNonNull(immutableList, "Null retryableStatusCodes");
        this.f38731b = immutableList;
        Objects.requireNonNull(duration, "Null initialBackoff");
        this.f38732c = duration;
        Objects.requireNonNull(duration2, "Null maxBackoff");
        this.f38733d = duration2;
        this.f38734e = duration3;
    }

    @Override // eh.l2.a.AbstractC0399a.c
    Duration b() {
        return this.f38732c;
    }

    @Override // eh.l2.a.AbstractC0399a.c
    int c() {
        return this.f38730a;
    }

    @Override // eh.l2.a.AbstractC0399a.c
    Duration d() {
        return this.f38733d;
    }

    @Override // eh.l2.a.AbstractC0399a.c
    Duration e() {
        return this.f38734e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l2.a.AbstractC0399a.c) {
            l2.a.AbstractC0399a.c cVar = (l2.a.AbstractC0399a.c) obj;
            if (this.f38730a == cVar.c() && this.f38731b.equals(cVar.f()) && this.f38732c.equals(cVar.b()) && this.f38733d.equals(cVar.d())) {
                Duration duration = this.f38734e;
                if (duration == null) {
                    if (cVar.e() == null) {
                        return true;
                    }
                } else if (duration.equals(cVar.e())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // eh.l2.a.AbstractC0399a.c
    ImmutableList<Status.Code> f() {
        return this.f38731b;
    }

    public int hashCode() {
        int hashCode = (((((((this.f38730a ^ 1000003) * 1000003) ^ this.f38731b.hashCode()) * 1000003) ^ this.f38732c.hashCode()) * 1000003) ^ this.f38733d.hashCode()) * 1000003;
        Duration duration = this.f38734e;
        return hashCode ^ (duration == null ? 0 : duration.hashCode());
    }

    public String toString() {
        return "RetryPolicy{maxAttempts=" + this.f38730a + ", retryableStatusCodes=" + this.f38731b + ", initialBackoff=" + this.f38732c + ", maxBackoff=" + this.f38733d + ", perAttemptRecvTimeout=" + this.f38734e + "}";
    }
}
