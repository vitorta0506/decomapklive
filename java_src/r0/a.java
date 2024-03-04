package r0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<C0627a<?>> f57344a = new ArrayList();

    /* renamed from: r0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0627a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f57345a;

        /* renamed from: b  reason: collision with root package name */
        final e0.a<T> f57346b;

        C0627a(@NonNull Class<T> cls, @NonNull e0.a<T> aVar) {
            this.f57345a = cls;
            this.f57346b = aVar;
        }

        boolean a(@NonNull Class<?> cls) {
            return this.f57345a.isAssignableFrom(cls);
        }
    }

    public synchronized <T> void a(@NonNull Class<T> cls, @NonNull e0.a<T> aVar) {
        this.f57344a.add(new C0627a<>(cls, aVar));
    }

    @Nullable
    public synchronized <T> e0.a<T> b(@NonNull Class<T> cls) {
        for (C0627a<?> c0627a : this.f57344a) {
            if (c0627a.a(cls)) {
                return (e0.a<T>) c0627a.f57346b;
            }
        }
        return null;
    }
}
