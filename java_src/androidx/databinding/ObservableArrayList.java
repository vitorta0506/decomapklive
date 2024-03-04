package androidx.databinding;

import androidx.databinding.ObservableList;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public class ObservableArrayList<T> extends ArrayList<T> implements ObservableList<T> {
    private transient ListChangeRegistry mListeners = new ListChangeRegistry();

    private void notifyAdd(int i9, int i10) {
        ListChangeRegistry listChangeRegistry = this.mListeners;
        if (listChangeRegistry != null) {
            listChangeRegistry.notifyInserted(this, i9, i10);
        }
    }

    private void notifyRemove(int i9, int i10) {
        ListChangeRegistry listChangeRegistry = this.mListeners;
        if (listChangeRegistry != null) {
            listChangeRegistry.notifyRemoved(this, i9, i10);
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(T t10) {
        super.add(t10);
        notifyAdd(size() - 1, 1);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends T> collection) {
        int size = size();
        boolean addAll = super.addAll(collection);
        if (addAll) {
            notifyAdd(size, size() - size);
        }
        return addAll;
    }

    @Override // androidx.databinding.ObservableList
    public void addOnListChangedCallback(ObservableList.OnListChangedCallback onListChangedCallback) {
        if (this.mListeners == null) {
            this.mListeners = new ListChangeRegistry();
        }
        this.mListeners.add(onListChangedCallback);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int size = size();
        super.clear();
        if (size != 0) {
            notifyRemove(0, size);
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T remove(int i9) {
        T t10 = (T) super.remove(i9);
        notifyRemove(i9, 1);
        return t10;
    }

    @Override // androidx.databinding.ObservableList
    public void removeOnListChangedCallback(ObservableList.OnListChangedCallback onListChangedCallback) {
        ListChangeRegistry listChangeRegistry = this.mListeners;
        if (listChangeRegistry != null) {
            listChangeRegistry.remove(onListChangedCallback);
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    protected void removeRange(int i9, int i10) {
        super.removeRange(i9, i10);
        notifyRemove(i9, i10 - i9);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T set(int i9, T t10) {
        T t11 = (T) super.set(i9, t10);
        ListChangeRegistry listChangeRegistry = this.mListeners;
        if (listChangeRegistry != null) {
            listChangeRegistry.notifyChanged(this, i9, 1);
        }
        return t11;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i9, T t10) {
        super.add(i9, t10);
        notifyAdd(i9, 1);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            remove(indexOf);
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i9, Collection<? extends T> collection) {
        boolean addAll = super.addAll(i9, collection);
        if (addAll) {
            notifyAdd(i9, collection.size());
        }
        return addAll;
    }
}
