package androidx.databinding;

import java.util.List;
/* loaded from: classes.dex */
public interface ObservableList<T> extends List<T> {

    /* loaded from: classes.dex */
    public static abstract class OnListChangedCallback<T extends ObservableList> {
        public abstract void onChanged(T t10);

        public abstract void onItemRangeChanged(T t10, int i9, int i10);

        public abstract void onItemRangeInserted(T t10, int i9, int i10);

        public abstract void onItemRangeMoved(T t10, int i9, int i10, int i11);

        public abstract void onItemRangeRemoved(T t10, int i9, int i10);
    }

    void addOnListChangedCallback(OnListChangedCallback<? extends ObservableList<T>> onListChangedCallback);

    void removeOnListChangedCallback(OnListChangedCallback<? extends ObservableList<T>> onListChangedCallback);
}
