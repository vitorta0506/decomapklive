package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes.dex */
public class SharedValues {
    public static final int UNSET = -1;
    private SparseIntArray mValues = new SparseIntArray();
    private HashMap<Integer, HashSet<WeakReference<SharedValuesListener>>> mValuesListeners = new HashMap<>();

    /* loaded from: classes.dex */
    public interface SharedValuesListener {
        void onNewValue(int i9, int i10, int i11);
    }

    public void addListener(int i9, SharedValuesListener sharedValuesListener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(i9));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.mValuesListeners.put(Integer.valueOf(i9), hashSet);
        }
        hashSet.add(new WeakReference<>(sharedValuesListener));
    }

    public void clearListeners() {
        this.mValuesListeners.clear();
    }

    public void fireNewValue(int i9, int i10) {
        int i11 = this.mValues.get(i9, -1);
        if (i11 == i10) {
            return;
        }
        this.mValues.put(i9, i10);
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(i9));
        if (hashSet == null) {
            return;
        }
        Iterator<WeakReference<SharedValuesListener>> it = hashSet.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            SharedValuesListener sharedValuesListener = it.next().get();
            if (sharedValuesListener != null) {
                sharedValuesListener.onNewValue(i9, i10, i11);
            } else {
                z10 = true;
            }
        }
        if (z10) {
            ArrayList arrayList = new ArrayList();
            Iterator<WeakReference<SharedValuesListener>> it2 = hashSet.iterator();
            while (it2.hasNext()) {
                WeakReference<SharedValuesListener> next = it2.next();
                if (next.get() == null) {
                    arrayList.add(next);
                }
            }
            hashSet.removeAll(arrayList);
        }
    }

    public int getValue(int i9) {
        return this.mValues.get(i9, -1);
    }

    public void removeListener(int i9, SharedValuesListener sharedValuesListener) {
        HashSet<WeakReference<SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(i9));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<WeakReference<SharedValuesListener>> it = hashSet.iterator();
        while (it.hasNext()) {
            WeakReference<SharedValuesListener> next = it.next();
            SharedValuesListener sharedValuesListener2 = next.get();
            if (sharedValuesListener2 == null || sharedValuesListener2 == sharedValuesListener) {
                arrayList.add(next);
            }
        }
        hashSet.removeAll(arrayList);
    }

    public void removeListener(SharedValuesListener sharedValuesListener) {
        for (Integer num : this.mValuesListeners.keySet()) {
            removeListener(num.intValue(), sharedValuesListener);
        }
    }
}
