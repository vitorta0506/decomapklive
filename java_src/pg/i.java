package pg;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import pg.i;
/* loaded from: classes5.dex */
public interface i<K, V, T extends i<K, V, T>> extends Iterable<Map.Entry<K, V>> {
    T K0(K k10, long j10);

    T Z0(K k10, V v10);

    List<V> d0(K k10);

    V get(K k10);

    @Override // java.lang.Iterable
    Iterator<Map.Entry<K, V>> iterator();

    int size();
}
