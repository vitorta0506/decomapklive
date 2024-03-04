package o0;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final List<a<?, ?>> f55463a = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a<Z, R> {

        /* renamed from: a  reason: collision with root package name */
        final Class<Z> f55464a;

        /* renamed from: b  reason: collision with root package name */
        final Class<R> f55465b;

        /* renamed from: c  reason: collision with root package name */
        final e<Z, R> f55466c;

        a(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
            this.f55464a = cls;
            this.f55465b = cls2;
            this.f55466c = eVar;
        }

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f55464a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f55465b);
        }
    }

    @NonNull
    public synchronized <Z, R> e<Z, R> a(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return g.b();
        }
        for (a<?, ?> aVar : this.f55463a) {
            if (aVar.a(cls, cls2)) {
                return (e<Z, R>) aVar.f55466c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    @NonNull
    public synchronized <Z, R> List<Class<R>> b(@NonNull Class<Z> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (a<?, ?> aVar : this.f55463a) {
            if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f55465b)) {
                arrayList.add(aVar.f55465b);
            }
        }
        return arrayList;
    }

    public synchronized <Z, R> void c(@NonNull Class<Z> cls, @NonNull Class<R> cls2, @NonNull e<Z, R> eVar) {
        this.f55463a.add(new a<>(cls, cls2, eVar));
    }
}
