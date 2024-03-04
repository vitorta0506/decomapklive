package tg;

import java.util.Map;
/* loaded from: classes5.dex */
public interface e<V> extends Map<Integer, V> {

    /* loaded from: classes5.dex */
    public interface a<V> {
        int key();

        V value();
    }

    Iterable<a<V>> entries();

    V get(int i9);

    V n0(int i9, V v10);

    V remove(int i9);
}
