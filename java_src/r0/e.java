package r0;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f57353a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, List<a<?, ?>>> f57354b = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a<T, R> {

        /* renamed from: a  reason: collision with root package name */
        private final Class<T> f57355a;

        /* renamed from: b  reason: collision with root package name */
        final Class<R> f57356b;

        /* renamed from: c  reason: collision with root package name */
        final e0.f<T, R> f57357c;

        public a(@NonNull Class<T> cls, @NonNull Class<R> cls2, e0.f<T, R> fVar) {
            this.f57355a = cls;
            this.f57356b = cls2;
            this.f57357c = fVar;
        }

        public boolean a(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            return this.f57355a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f57356b);
        }
    }

    @NonNull
    private synchronized List<a<?, ?>> c(@NonNull String str) {
        List<a<?, ?>> list;
        if (!this.f57353a.contains(str)) {
            this.f57353a.add(str);
        }
        list = this.f57354b.get(str);
        if (list == null) {
            list = new ArrayList<>();
            this.f57354b.put(str, list);
        }
        return list;
    }

    public synchronized <T, R> void a(@NonNull String str, @NonNull e0.f<T, R> fVar, @NonNull Class<T> cls, @NonNull Class<R> cls2) {
        c(str).add(new a<>(cls, cls2, fVar));
    }

    @NonNull
    public synchronized <T, R> List<e0.f<T, R>> b(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f57353a) {
            List<a<?, ?>> list = this.f57354b.get(str);
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2)) {
                        arrayList.add(aVar.f57357c);
                    }
                }
            }
        }
        return arrayList;
    }

    @NonNull
    public synchronized <T, R> List<Class<R>> d(@NonNull Class<T> cls, @NonNull Class<R> cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (String str : this.f57353a) {
            List<a<?, ?>> list = this.f57354b.get(str);
            if (list != null) {
                for (a<?, ?> aVar : list) {
                    if (aVar.a(cls, cls2) && !arrayList.contains(aVar.f57356b)) {
                        arrayList.add(aVar.f57356b);
                    }
                }
            }
        }
        return arrayList;
    }

    public synchronized void e(@NonNull List<String> list) {
        ArrayList<String> arrayList = new ArrayList(this.f57353a);
        this.f57353a.clear();
        for (String str : list) {
            this.f57353a.add(str);
        }
        for (String str2 : arrayList) {
            if (!list.contains(str2)) {
                this.f57353a.add(str2);
            }
        }
    }
}
