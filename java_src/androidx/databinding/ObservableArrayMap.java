package androidx.databinding;

import androidx.collection.ArrayMap;
import androidx.databinding.ObservableMap;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ObservableArrayMap<K, V> extends ArrayMap<K, V> implements ObservableMap<K, V> {
    private transient MapChangeRegistry mListeners;

    private void notifyChange(Object obj) {
        MapChangeRegistry mapChangeRegistry = this.mListeners;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.notifyCallbacks(this, 0, obj);
        }
    }

    @Override // androidx.databinding.ObservableMap
    public void addOnMapChangedCallback(ObservableMap.OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback) {
        if (this.mListeners == null) {
            this.mListeners = new MapChangeRegistry();
        }
        this.mListeners.add(onMapChangedCallback);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        if (isEmpty()) {
            return;
        }
        super.clear();
        notifyChange(null);
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k10, V v10) {
        super.put(k10, v10);
        notifyChange(k10);
        return v10;
    }

    @Override // androidx.collection.ArrayMap
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            int indexOfKey = indexOfKey(it.next());
            if (indexOfKey >= 0) {
                z10 = true;
                removeAt(indexOfKey);
            }
        }
        return z10;
    }

    @Override // androidx.collection.SimpleArrayMap
    public V removeAt(int i9) {
        K keyAt = keyAt(i9);
        V v10 = (V) super.removeAt(i9);
        if (v10 != null) {
            notifyChange(keyAt);
        }
        return v10;
    }

    @Override // androidx.databinding.ObservableMap
    public void removeOnMapChangedCallback(ObservableMap.OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback) {
        MapChangeRegistry mapChangeRegistry = this.mListeners;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.remove(onMapChangedCallback);
        }
    }

    @Override // androidx.collection.ArrayMap
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int size = size() - 1; size >= 0; size--) {
            if (!collection.contains(keyAt(size))) {
                removeAt(size);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // androidx.collection.SimpleArrayMap
    public V setValueAt(int i9, V v10) {
        K keyAt = keyAt(i9);
        V v11 = (V) super.setValueAt(i9, v10);
        notifyChange(keyAt);
        return v11;
    }
}
