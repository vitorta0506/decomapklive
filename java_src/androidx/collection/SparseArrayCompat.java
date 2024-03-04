package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private int[] mKeys;
    private int mSize;
    private Object[] mValues;

    public SparseArrayCompat() {
        this(10);
    }

    private void gc() {
        int i9 = this.mSize;
        int[] iArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            Object obj = objArr[i11];
            if (obj != DELETED) {
                if (i11 != i10) {
                    iArr[i10] = iArr[i11];
                    objArr[i10] = obj;
                    objArr[i11] = null;
                }
                i10++;
            }
        }
        this.mGarbage = false;
        this.mSize = i10;
    }

    public void append(int i9, E e10) {
        int i10 = this.mSize;
        if (i10 != 0 && i9 <= this.mKeys[i10 - 1]) {
            put(i9, e10);
            return;
        }
        if (this.mGarbage && i10 >= this.mKeys.length) {
            gc();
        }
        int i11 = this.mSize;
        if (i11 >= this.mKeys.length) {
            int idealIntArraySize = ContainerHelpers.idealIntArraySize(i11 + 1);
            int[] iArr = new int[idealIntArraySize];
            Object[] objArr = new Object[idealIntArraySize];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = iArr;
            this.mValues = objArr;
        }
        this.mKeys[i11] = i9;
        this.mValues[i11] = e10;
        this.mSize = i11 + 1;
    }

    public void clear() {
        int i9 = this.mSize;
        Object[] objArr = this.mValues;
        for (int i10 = 0; i10 < i9; i10++) {
            objArr[i10] = null;
        }
        this.mSize = 0;
        this.mGarbage = false;
    }

    public boolean containsKey(int i9) {
        return indexOfKey(i9) >= 0;
    }

    public boolean containsValue(E e10) {
        return indexOfValue(e10) >= 0;
    }

    @Deprecated
    public void delete(int i9) {
        remove(i9);
    }

    @Nullable
    public E get(int i9) {
        return get(i9, null);
    }

    public int indexOfKey(int i9) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, i9);
    }

    public int indexOfValue(E e10) {
        if (this.mGarbage) {
            gc();
        }
        for (int i9 = 0; i9 < this.mSize; i9++) {
            if (this.mValues[i9] == e10) {
                return i9;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int i9) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i9];
    }

    public void put(int i9, E e10) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i9);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = e10;
            return;
        }
        int i10 = ~binarySearch;
        int i11 = this.mSize;
        if (i10 < i11) {
            Object[] objArr = this.mValues;
            if (objArr[i10] == DELETED) {
                this.mKeys[i10] = i9;
                objArr[i10] = e10;
                return;
            }
        }
        if (this.mGarbage && i11 >= this.mKeys.length) {
            gc();
            i10 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, i9);
        }
        int i12 = this.mSize;
        if (i12 >= this.mKeys.length) {
            int idealIntArraySize = ContainerHelpers.idealIntArraySize(i12 + 1);
            int[] iArr = new int[idealIntArraySize];
            Object[] objArr2 = new Object[idealIntArraySize];
            int[] iArr2 = this.mKeys;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = iArr;
            this.mValues = objArr2;
        }
        int i13 = this.mSize;
        if (i13 - i10 != 0) {
            int[] iArr3 = this.mKeys;
            int i14 = i10 + 1;
            System.arraycopy(iArr3, i10, iArr3, i14, i13 - i10);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, i10, objArr4, i14, this.mSize - i10);
        }
        this.mKeys[i10] = i9;
        this.mValues[i10] = e10;
        this.mSize++;
    }

    public void putAll(@NonNull SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int i9 = 0; i9 < size; i9++) {
            put(sparseArrayCompat.keyAt(i9), sparseArrayCompat.valueAt(i9));
        }
    }

    @Nullable
    public E putIfAbsent(int i9, E e10) {
        E e11 = get(i9);
        if (e11 == null) {
            put(i9, e10);
        }
        return e11;
    }

    public void remove(int i9) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i9);
        if (binarySearch >= 0) {
            Object[] objArr = this.mValues;
            Object obj = objArr[binarySearch];
            Object obj2 = DELETED;
            if (obj != obj2) {
                objArr[binarySearch] = obj2;
                this.mGarbage = true;
            }
        }
    }

    public void removeAt(int i9) {
        Object[] objArr = this.mValues;
        Object obj = objArr[i9];
        Object obj2 = DELETED;
        if (obj != obj2) {
            objArr[i9] = obj2;
            this.mGarbage = true;
        }
    }

    public void removeAtRange(int i9, int i10) {
        int min = Math.min(this.mSize, i10 + i9);
        while (i9 < min) {
            removeAt(i9);
            i9++;
        }
    }

    @Nullable
    public E replace(int i9, E e10) {
        int indexOfKey = indexOfKey(i9);
        if (indexOfKey >= 0) {
            Object[] objArr = this.mValues;
            E e11 = (E) objArr[indexOfKey];
            objArr[indexOfKey] = e10;
            return e11;
        }
        return null;
    }

    public void setValueAt(int i9, E e10) {
        if (this.mGarbage) {
            gc();
        }
        this.mValues[i9] = e10;
    }

    public int size() {
        if (this.mGarbage) {
            gc();
        }
        return this.mSize;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.mSize * 28);
        sb2.append('{');
        for (int i9 = 0; i9 < this.mSize; i9++) {
            if (i9 > 0) {
                sb2.append(", ");
            }
            sb2.append(keyAt(i9));
            sb2.append('=');
            E valueAt = valueAt(i9);
            if (valueAt != this) {
                sb2.append(valueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public E valueAt(int i9) {
        if (this.mGarbage) {
            gc();
        }
        return (E) this.mValues[i9];
    }

    public SparseArrayCompat(int i9) {
        this.mGarbage = false;
        if (i9 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_INTS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
            return;
        }
        int idealIntArraySize = ContainerHelpers.idealIntArraySize(i9);
        this.mKeys = new int[idealIntArraySize];
        this.mValues = new Object[idealIntArraySize];
    }

    /* renamed from: clone */
    public SparseArrayCompat<E> m2clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.mKeys = (int[]) this.mKeys.clone();
            sparseArrayCompat.mValues = (Object[]) this.mValues.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public E get(int i9, E e10) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, i9);
        if (binarySearch >= 0) {
            Object[] objArr = this.mValues;
            if (objArr[binarySearch] != DELETED) {
                return (E) objArr[binarySearch];
            }
        }
        return e10;
    }

    public boolean replace(int i9, E e10, E e11) {
        int indexOfKey = indexOfKey(i9);
        if (indexOfKey >= 0) {
            Object obj = this.mValues[indexOfKey];
            if (obj == e10 || (e10 != null && e10.equals(obj))) {
                this.mValues[indexOfKey] = e11;
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean remove(int i9, Object obj) {
        int indexOfKey = indexOfKey(i9);
        if (indexOfKey >= 0) {
            E valueAt = valueAt(indexOfKey);
            if (obj == valueAt || (obj != null && obj.equals(valueAt))) {
                removeAt(indexOfKey);
                return true;
            }
            return false;
        }
        return false;
    }
}
