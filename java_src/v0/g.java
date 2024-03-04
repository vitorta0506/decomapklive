package v0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class g<T, Y> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<T, a<Y>> f58610a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b  reason: collision with root package name */
    private final long f58611b;

    /* renamed from: c  reason: collision with root package name */
    private long f58612c;

    /* renamed from: d  reason: collision with root package name */
    private long f58613d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a<Y> {

        /* renamed from: a  reason: collision with root package name */
        final Y f58614a;

        /* renamed from: b  reason: collision with root package name */
        final int f58615b;

        a(Y y10, int i9) {
            this.f58614a = y10;
            this.f58615b = i9;
        }
    }

    public g(long j10) {
        this.f58611b = j10;
        this.f58612c = j10;
    }

    private void f() {
        m(this.f58612c);
    }

    public void b() {
        m(0L);
    }

    @Nullable
    public synchronized Y g(@NonNull T t10) {
        a<Y> aVar;
        aVar = this.f58610a.get(t10);
        return aVar != null ? aVar.f58614a : null;
    }

    public synchronized long h() {
        return this.f58612c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int i(@Nullable Y y10) {
        return 1;
    }

    protected void j(@NonNull T t10, @Nullable Y y10) {
    }

    @Nullable
    public synchronized Y k(@NonNull T t10, @Nullable Y y10) {
        int i9 = i(y10);
        long j10 = i9;
        if (j10 >= this.f58612c) {
            j(t10, y10);
            return null;
        }
        if (y10 != null) {
            this.f58613d += j10;
        }
        a<Y> put = this.f58610a.put(t10, y10 == null ? null : new a<>(y10, i9));
        if (put != null) {
            this.f58613d -= put.f58615b;
            if (!put.f58614a.equals(y10)) {
                j(t10, put.f58614a);
            }
        }
        f();
        return put != null ? put.f58614a : null;
    }

    @Nullable
    public synchronized Y l(@NonNull T t10) {
        a<Y> remove = this.f58610a.remove(t10);
        if (remove == null) {
            return null;
        }
        this.f58613d -= remove.f58615b;
        return remove.f58614a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public synchronized void m(long j10) {
        while (this.f58613d > j10) {
            Iterator<Map.Entry<T, a<Y>>> it = this.f58610a.entrySet().iterator();
            Map.Entry<T, a<Y>> next = it.next();
            a<Y> value = next.getValue();
            this.f58613d -= value.f58615b;
            T key = next.getKey();
            it.remove();
            j(key, value.f58614a);
        }
    }
}
