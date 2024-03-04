package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    private static final Object DELETED = new Object();
    private boolean mGarbage;
    private long[] mKeys;
    private int mSize;
    private Object[] mValues;

    public LongSparseArray() {
        this(10);
    }

    private void gc() {
        int i9 = this.mSize;
        long[] jArr = this.mKeys;
        Object[] objArr = this.mValues;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            Object obj = objArr[i11];
            if (obj != DELETED) {
                if (i11 != i10) {
                    jArr[i10] = jArr[i11];
                    objArr[i10] = obj;
                    objArr[i11] = null;
                }
                i10++;
            }
        }
        this.mGarbage = false;
        this.mSize = i10;
    }

    public void append(long j10, E e10) {
        int i9 = this.mSize;
        if (i9 != 0 && j10 <= this.mKeys[i9 - 1]) {
            put(j10, e10);
            return;
        }
        if (this.mGarbage && i9 >= this.mKeys.length) {
            gc();
        }
        int i10 = this.mSize;
        if (i10 >= this.mKeys.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i10 + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr = new Object[idealLongArraySize];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.mValues;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.mKeys = jArr;
            this.mValues = objArr;
        }
        this.mKeys[i10] = j10;
        this.mValues[i10] = e10;
        this.mSize = i10 + 1;
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

    public boolean containsKey(long j10) {
        return indexOfKey(j10) >= 0;
    }

    public boolean containsValue(E e10) {
        return indexOfValue(e10) >= 0;
    }

    @Deprecated
    public void delete(long j10) {
        remove(j10);
    }

    @Nullable
    public E get(long j10) {
        return get(j10, null);
    }

    public int indexOfKey(long j10) {
        if (this.mGarbage) {
            gc();
        }
        return ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
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

    public long keyAt(int i9) {
        if (this.mGarbage) {
            gc();
        }
        return this.mKeys[i9];
    }

    public void put(long j10, E e10) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
        if (binarySearch >= 0) {
            this.mValues[binarySearch] = e10;
            return;
        }
        int i9 = ~binarySearch;
        int i10 = this.mSize;
        if (i9 < i10) {
            Object[] objArr = this.mValues;
            if (objArr[i9] == DELETED) {
                this.mKeys[i9] = j10;
                objArr[i9] = e10;
                return;
            }
        }
        if (this.mGarbage && i10 >= this.mKeys.length) {
            gc();
            i9 = ~ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
        }
        int i11 = this.mSize;
        if (i11 >= this.mKeys.length) {
            int idealLongArraySize = ContainerHelpers.idealLongArraySize(i11 + 1);
            long[] jArr = new long[idealLongArraySize];
            Object[] objArr2 = new Object[idealLongArraySize];
            long[] jArr2 = this.mKeys;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.mValues;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.mKeys = jArr;
            this.mValues = objArr2;
        }
        int i12 = this.mSize;
        if (i12 - i9 != 0) {
            long[] jArr3 = this.mKeys;
            int i13 = i9 + 1;
            System.arraycopy(jArr3, i9, jArr3, i13, i12 - i9);
            Object[] objArr4 = this.mValues;
            System.arraycopy(objArr4, i9, objArr4, i13, this.mSize - i9);
        }
        this.mKeys[i9] = j10;
        this.mValues[i9] = e10;
        this.mSize++;
    }

    public void putAll(@NonNull LongSparseArray<? extends E> longSparseArray) {
        int size = longSparseArray.size();
        for (int i9 = 0; i9 < size; i9++) {
            put(longSparseArray.keyAt(i9), longSparseArray.valueAt(i9));
        }
    }

    @Nullable
    public E putIfAbsent(long j10, E e10) {
        E e11 = get(j10);
        if (e11 == null) {
            put(j10, e10);
        }
        return e11;
    }

    public void remove(long j10) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
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

    @Nullable
    public E replace(long j10, E e10) {
        int indexOfKey = indexOfKey(j10);
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

    public LongSparseArray(int i9) {
        this.mGarbage = false;
        if (i9 == 0) {
            this.mKeys = ContainerHelpers.EMPTY_LONGS;
            this.mValues = ContainerHelpers.EMPTY_OBJECTS;
            return;
        }
        int idealLongArraySize = ContainerHelpers.idealLongArraySize(i9);
        this.mKeys = new long[idealLongArraySize];
        this.mValues = new Object[idealLongArraySize];
    }

    /* renamed from: clone */
    public LongSparseArray<E> m0clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.mKeys = (long[]) this.mKeys.clone();
            longSparseArray.mValues = (Object[]) this.mValues.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public E get(long j10, E e10) {
        int binarySearch = ContainerHelpers.binarySearch(this.mKeys, this.mSize, j10);
        if (binarySearch >= 0) {
            Object[] objArr = this.mValues;
            if (objArr[binarySearch] != DELETED) {
                return (E) objArr[binarySearch];
            }
        }
        return e10;
    }

    public boolean replace(long j10, E e10, E e11) {
        int indexOfKey = indexOfKey(j10);
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

    public boolean remove(long j10, Object obj) {
        int indexOfKey = indexOfKey(j10);
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
