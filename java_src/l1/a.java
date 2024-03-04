package l1;

import androidx.annotation.Nullable;
import com.google.android.datatransport.Priority;
import java.util.Objects;
/* loaded from: classes.dex */
final class a<T> extends c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Integer f54110a;

    /* renamed from: b  reason: collision with root package name */
    private final T f54111b;

    /* renamed from: c  reason: collision with root package name */
    private final Priority f54112c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@Nullable Integer num, T t10, Priority priority) {
        this.f54110a = num;
        Objects.requireNonNull(t10, "Null payload");
        this.f54111b = t10;
        Objects.requireNonNull(priority, "Null priority");
        this.f54112c = priority;
    }

    @Override // l1.c
    @Nullable
    public Integer a() {
        return this.f54110a;
    }

    @Override // l1.c
    public T b() {
        return this.f54111b;
    }

    @Override // l1.c
    public Priority c() {
        return this.f54112c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            Integer num = this.f54110a;
            if (num != null ? num.equals(cVar.a()) : cVar.a() == null) {
                if (this.f54111b.equals(cVar.b()) && this.f54112c.equals(cVar.c())) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.f54110a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f54111b.hashCode()) * 1000003) ^ this.f54112c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f54110a + ", payload=" + this.f54111b + ", priority=" + this.f54112c + "}";
    }
}
