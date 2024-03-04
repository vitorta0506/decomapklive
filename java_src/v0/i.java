package v0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private Class<?> f58617a;

    /* renamed from: b  reason: collision with root package name */
    private Class<?> f58618b;

    /* renamed from: c  reason: collision with root package name */
    private Class<?> f58619c;

    public i() {
    }

    public void a(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        this.f58617a = cls;
        this.f58618b = cls2;
        this.f58619c = cls3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f58617a.equals(iVar.f58617a) && this.f58618b.equals(iVar.f58618b) && k.d(this.f58619c, iVar.f58619c);
    }

    public int hashCode() {
        int hashCode = ((this.f58617a.hashCode() * 31) + this.f58618b.hashCode()) * 31;
        Class<?> cls = this.f58619c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f58617a + ", second=" + this.f58618b + '}';
    }

    public i(@NonNull Class<?> cls, @NonNull Class<?> cls2, @Nullable Class<?> cls3) {
        a(cls, cls2, cls3);
    }
}
