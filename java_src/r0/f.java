package r0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import e0.g;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?>> f57358a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f57359a;

        /* renamed from: b  reason: collision with root package name */
        final g<T> f57360b;

        a(@NonNull Class<T> cls, @NonNull g<T> gVar) {
            this.f57359a = cls;
            this.f57360b = gVar;
        }

        boolean a(@NonNull Class<?> cls) {
            return this.f57359a.isAssignableFrom(cls);
        }
    }

    public synchronized <Z> void a(@NonNull Class<Z> cls, @NonNull g<Z> gVar) {
        this.f57358a.add(new a<>(cls, gVar));
    }

    @Nullable
    public synchronized <Z> g<Z> b(@NonNull Class<Z> cls) {
        int size = this.f57358a.size();
        for (int i9 = 0; i9 < size; i9++) {
            a<?> aVar = this.f57358a.get(i9);
            if (aVar.a(cls)) {
                return (g<Z>) aVar.f57360b;
            }
        }
        return null;
    }
}
