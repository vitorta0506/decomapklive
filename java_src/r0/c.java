package r0;

import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.engine.s;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;
import o0.g;
/* loaded from: classes.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static final s<?, ?, ?> f57348c = new s<>(Object.class, Object.class, Object.class, Collections.singletonList(new i(Object.class, Object.class, Object.class, Collections.emptyList(), new g(), null)), null);

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<v0.i, s<?, ?, ?>> f57349a = new ArrayMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<v0.i> f57350b = new AtomicReference<>();

    private v0.i b(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        v0.i andSet = this.f57350b.getAndSet(null);
        if (andSet == null) {
            andSet = new v0.i();
        }
        andSet.a(cls, cls2, cls3);
        return andSet;
    }

    @Nullable
    public <Data, TResource, Transcode> s<Data, TResource, Transcode> a(Class<Data> cls, Class<TResource> cls2, Class<Transcode> cls3) {
        s<Data, TResource, Transcode> sVar;
        v0.i b10 = b(cls, cls2, cls3);
        synchronized (this.f57349a) {
            sVar = (s<Data, TResource, Transcode>) this.f57349a.get(b10);
        }
        this.f57350b.set(b10);
        return sVar;
    }

    public boolean c(@Nullable s<?, ?, ?> sVar) {
        return f57348c.equals(sVar);
    }

    public void d(Class<?> cls, Class<?> cls2, Class<?> cls3, @Nullable s<?, ?, ?> sVar) {
        synchronized (this.f57349a) {
            ArrayMap<v0.i, s<?, ?, ?>> arrayMap = this.f57349a;
            v0.i iVar = new v0.i(cls, cls2, cls3);
            if (sVar == null) {
                sVar = f57348c;
            }
            arrayMap.put(iVar, sVar);
        }
    }
}
