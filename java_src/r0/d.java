package r0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import v0.i;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<i> f57351a = new AtomicReference<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayMap<i, List<Class<?>>> f57352b = new ArrayMap<>();

    @Nullable
    public List<Class<?>> a(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3) {
        List<Class<?>> list;
        i andSet = this.f57351a.getAndSet(null);
        if (andSet == null) {
            andSet = new i(cls, cls2, cls3);
        } else {
            andSet.a(cls, cls2, cls3);
        }
        synchronized (this.f57352b) {
            list = this.f57352b.get(andSet);
        }
        this.f57351a.set(andSet);
        return list;
    }

    public void b(@NonNull Class<?> cls, @NonNull Class<?> cls2, @NonNull Class<?> cls3, @NonNull List<Class<?>> list) {
        synchronized (this.f57352b) {
            this.f57352b.put(new i(cls, cls2, cls3), list);
        }
    }
}
