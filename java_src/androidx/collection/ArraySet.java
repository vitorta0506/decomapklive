package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean DEBUG = false;
    private static final int[] INT = new int[0];
    private static final Object[] OBJECT = new Object[0];
    private static final String TAG = "ArraySet";
    @Nullable
    private static Object[] sBaseCache;
    private static int sBaseCacheSize;
    @Nullable
    private static Object[] sTwiceBaseCache;
    private static int sTwiceBaseCacheSize;
    Object[] mArray;
    private MapCollections<E, E> mCollections;
    private int[] mHashes;
    int mSize;

    public ArraySet() {
        this(0);
    }

    private void allocArrays(int i9) {
        if (i9 == 8) {
            synchronized (ArraySet.class) {
                Object[] objArr = sTwiceBaseCache;
                if (objArr != null) {
                    this.mArray = objArr;
                    sTwiceBaseCache = (Object[]) objArr[0];
                    this.mHashes = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    sTwiceBaseCacheSize--;
                    return;
                }
            }
        } else if (i9 == 4) {
            synchronized (ArraySet.class) {
                Object[] objArr2 = sBaseCache;
                if (objArr2 != null) {
                    this.mArray = objArr2;
                    sBaseCache = (Object[]) objArr2[0];
                    this.mHashes = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    sBaseCacheSize--;
                    return;
                }
            }
        }
        this.mHashes = new int[i9];
        this.mArray = new Object[i9];
    }

    private static void freeArrays(int[] iArr, Object[] objArr, int i9) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                if (sTwiceBaseCacheSize < 10) {
                    objArr[0] = sTwiceBaseCache;
                    objArr[1] = iArr;
                    for (int i10 = i9 - 1; i10 >= 2; i10--) {
                        objArr[i10] = null;
                    }
                    sTwiceBaseCache = objArr;
                    sTwiceBaseCacheSize++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                if (sBaseCacheSize < 10) {
                    objArr[0] = sBaseCache;
                    objArr[1] = iArr;
                    for (int i11 = i9 - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    sBaseCache = objArr;
                    sBaseCacheSize++;
                }
            }
        }
    }

    private MapCollections<E, E> getCollection() {
        if (this.mCollections == null) {
            this.mCollections = new MapCollections<E, E>() { // from class: androidx.collection.ArraySet.1
                @Override // androidx.collection.MapCollections
                protected void colClear() {
                    ArraySet.this.clear();
                }

                @Override // androidx.collection.MapCollections
                protected Object colGetEntry(int i9, int i10) {
                    return ArraySet.this.mArray[i9];
                }

                @Override // androidx.collection.MapCollections
                protected Map<E, E> colGetMap() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.collection.MapCollections
                protected int colGetSize() {
                    return ArraySet.this.mSize;
                }

                @Override // androidx.collection.MapCollections
                protected int colIndexOfKey(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // androidx.collection.MapCollections
                protected int colIndexOfValue(Object obj) {
                    return ArraySet.this.indexOf(obj);
                }

                @Override // androidx.collection.MapCollections
                protected void colPut(E e10, E e11) {
                    ArraySet.this.add(e10);
                }

                @Override // androidx.collection.MapCollections
                protected void colRemoveAt(int i9) {
                    ArraySet.this.removeAt(i9);
                }

                @Override // androidx.collection.MapCollections
                protected E colSetValue(int i9, E e10) {
                    throw new UnsupportedOperationException("not a map");
                }
            };
        }
        return this.mCollections;
    }

    private int indexOf(Object obj, int i9) {
        int i10 = this.mSize;
        if (i10 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpers.binarySearch(this.mHashes, i10, i9);
        if (binarySearch >= 0 && !obj.equals(this.mArray[binarySearch])) {
            int i11 = binarySearch + 1;
            while (i11 < i10 && this.mHashes[i11] == i9) {
                if (obj.equals(this.mArray[i11])) {
                    return i11;
                }
                i11++;
            }
            for (int i12 = binarySearch - 1; i12 >= 0 && this.mHashes[i12] == i9; i12--) {
                if (obj.equals(this.mArray[i12])) {
                    return i12;
                }
            }
            return ~i11;
        }
        return binarySearch;
    }

    private int indexOfNull() {
        int i9 = this.mSize;
        if (i9 == 0) {
            return -1;
        }
        int binarySearch = ContainerHelpers.binarySearch(this.mHashes, i9, 0);
        if (binarySearch >= 0 && this.mArray[binarySearch] != null) {
            int i10 = binarySearch + 1;
            while (i10 < i9 && this.mHashes[i10] == 0) {
                if (this.mArray[i10] == null) {
                    return i10;
                }
                i10++;
            }
            for (int i11 = binarySearch - 1; i11 >= 0 && this.mHashes[i11] == 0; i11--) {
                if (this.mArray[i11] == null) {
                    return i11;
                }
            }
            return ~i10;
        }
        return binarySearch;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e10) {
        int i9;
        int indexOf;
        if (e10 == null) {
            indexOf = indexOfNull();
            i9 = 0;
        } else {
            int hashCode = e10.hashCode();
            i9 = hashCode;
            indexOf = indexOf(e10, hashCode);
        }
        if (indexOf >= 0) {
            return false;
        }
        int i10 = ~indexOf;
        int i11 = this.mSize;
        int[] iArr = this.mHashes;
        if (i11 >= iArr.length) {
            int i12 = 4;
            if (i11 >= 8) {
                i12 = (i11 >> 1) + i11;
            } else if (i11 >= 4) {
                i12 = 8;
            }
            Object[] objArr = this.mArray;
            allocArrays(i12);
            int[] iArr2 = this.mHashes;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.mArray, 0, objArr.length);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
        int i13 = this.mSize;
        if (i10 < i13) {
            int[] iArr3 = this.mHashes;
            int i14 = i10 + 1;
            System.arraycopy(iArr3, i10, iArr3, i14, i13 - i10);
            Object[] objArr2 = this.mArray;
            System.arraycopy(objArr2, i10, objArr2, i14, this.mSize - i10);
        }
        this.mHashes[i10] = i9;
        this.mArray[i10] = e10;
        this.mSize++;
        return true;
    }

    public void addAll(@NonNull ArraySet<? extends E> arraySet) {
        int i9 = arraySet.mSize;
        ensureCapacity(this.mSize + i9);
        if (this.mSize != 0) {
            for (int i10 = 0; i10 < i9; i10++) {
                add(arraySet.valueAt(i10));
            }
        } else if (i9 > 0) {
            System.arraycopy(arraySet.mHashes, 0, this.mHashes, 0, i9);
            System.arraycopy(arraySet.mArray, 0, this.mArray, 0, i9);
            this.mSize = i9;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i9 = this.mSize;
        if (i9 != 0) {
            freeArrays(this.mHashes, this.mArray, i9);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public void ensureCapacity(int i9) {
        int[] iArr = this.mHashes;
        if (iArr.length < i9) {
            Object[] objArr = this.mArray;
            allocArrays(i9);
            int i10 = this.mSize;
            if (i10 > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, i10);
                System.arraycopy(objArr, 0, this.mArray, 0, this.mSize);
            }
            freeArrays(iArr, objArr, this.mSize);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i9 = 0; i9 < this.mSize; i9++) {
                try {
                    if (!set.contains(valueAt(i9))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.mHashes;
        int i9 = this.mSize;
        int i10 = 0;
        for (int i11 = 0; i11 < i9; i11++) {
            i10 += iArr[i11];
        }
        return i10;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return getCollection().getKeySet().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            removeAt(indexOf);
            return true;
        }
        return false;
    }

    public boolean removeAll(@NonNull ArraySet<? extends E> arraySet) {
        int i9 = arraySet.mSize;
        int i10 = this.mSize;
        for (int i11 = 0; i11 < i9; i11++) {
            remove(arraySet.valueAt(i11));
        }
        return i10 != this.mSize;
    }

    public E removeAt(int i9) {
        Object[] objArr = this.mArray;
        E e10 = (E) objArr[i9];
        int i10 = this.mSize;
        if (i10 <= 1) {
            freeArrays(this.mHashes, objArr, i10);
            this.mHashes = INT;
            this.mArray = OBJECT;
            this.mSize = 0;
        } else {
            int[] iArr = this.mHashes;
            if (iArr.length > 8 && i10 < iArr.length / 3) {
                allocArrays(i10 > 8 ? i10 + (i10 >> 1) : 8);
                this.mSize--;
                if (i9 > 0) {
                    System.arraycopy(iArr, 0, this.mHashes, 0, i9);
                    System.arraycopy(objArr, 0, this.mArray, 0, i9);
                }
                int i11 = this.mSize;
                if (i9 < i11) {
                    int i12 = i9 + 1;
                    System.arraycopy(iArr, i12, this.mHashes, i9, i11 - i9);
                    System.arraycopy(objArr, i12, this.mArray, i9, this.mSize - i9);
                }
            } else {
                int i13 = i10 - 1;
                this.mSize = i13;
                if (i9 < i13) {
                    int i14 = i9 + 1;
                    System.arraycopy(iArr, i14, iArr, i9, i13 - i9);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, i14, objArr2, i9, this.mSize - i9);
                }
                this.mArray[this.mSize] = null;
            }
        }
        return e10;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z10 = false;
        for (int i9 = this.mSize - 1; i9 >= 0; i9--) {
            if (!collection.contains(this.mArray[i9])) {
                removeAt(i9);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.mSize;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int i9 = this.mSize;
        Object[] objArr = new Object[i9];
        System.arraycopy(this.mArray, 0, objArr, 0, i9);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.mSize * 14);
        sb2.append('{');
        for (int i9 = 0; i9 < this.mSize; i9++) {
            if (i9 > 0) {
                sb2.append(", ");
            }
            E valueAt = valueAt(i9);
            if (valueAt != this) {
                sb2.append(valueAt);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    @Nullable
    public E valueAt(int i9) {
        return (E) this.mArray[i9];
    }

    public ArraySet(int i9) {
        if (i9 == 0) {
            this.mHashes = INT;
            this.mArray = OBJECT;
        } else {
            allocArrays(i9);
        }
        this.mSize = 0;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.mSize) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.mSize));
        }
        System.arraycopy(this.mArray, 0, tArr, 0, this.mSize);
        int length = tArr.length;
        int i9 = this.mSize;
        if (length > i9) {
            tArr[i9] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            z10 |= remove(it.next());
        }
        return z10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        ensureCapacity(this.mSize + collection.size());
        boolean z10 = false;
        for (E e10 : collection) {
            z10 |= add(e10);
        }
        return z10;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }
}
