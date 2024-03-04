package h;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class h<T> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    T f40236a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    T f40237b;

    private static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public void b(T t10, T t11) {
        this.f40236a = t10;
        this.f40237b = t11;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return a(pair.first, this.f40236a) && a(pair.second, this.f40237b);
        }
        return false;
    }

    public int hashCode() {
        T t10 = this.f40236a;
        int hashCode = t10 == null ? 0 : t10.hashCode();
        T t11 = this.f40237b;
        return hashCode ^ (t11 != null ? t11.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.f40236a) + " " + String.valueOf(this.f40237b) + "}";
    }
}
