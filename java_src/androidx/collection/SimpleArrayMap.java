package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;
/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    private static final int BASE_SIZE = 4;
    private static final int CACHE_SIZE = 10;
    private static final boolean CONCURRENT_MODIFICATION_EXCEPTIONS = true;
    private static final boolean DEBUG = false;
    private static final String TAG = "ArrayMap";
    @Nullable
    static Object[] mBaseCache;
    static int mBaseCacheSize;
    @Nullable
    static Object[] mTwiceBaseCache;
    static int mTwiceBaseCacheSize;
    Object[] mArray;
    int[] mHashes;
    int mSize;

    public SimpleArrayMap() {
        this.mHashes = ContainerHelpers.EMPTY_INTS;
        this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        this.mSize = 0;
    }

    private void allocArrays(int i9) {
        if (i9 == 8) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr = mTwiceBaseCache;
                if (objArr != null) {
                    this.mArray = objArr;
                    mTwiceBaseCache = (Object[]) objArr[0];
                    this.mHashes = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    mTwiceBaseCacheSize--;
                    return;
                }
            }
        } else if (i9 == 4) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr2 = mBaseCache;
                if (objArr2 != null) {
                    this.mArray = objArr2;
                    mBaseCache = (Object[]) objArr2[0];
                    this.mHashes = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    mBaseCacheSize--;
                    return;
                }
            }
        }
        this.mHashes = new int[i9];
        this.mArray = new Object[i9 << 1];
    }

    private static int binarySearchHashes(int[] iArr, int i9, int i10) {
        try {
            return ContainerHelpers.binarySearch(iArr, i9, i10);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void freeArrays(int[] iArr, Object[] objArr, int i9) {
        if (iArr.length == 8) {
            synchronized (SimpleArrayMap.class) {
                if (mTwiceBaseCacheSize < 10) {
                    objArr[0] = mTwiceBaseCache;
                    objArr[1] = iArr;
                    for (int i10 = (i9 << 1) - 1; i10 >= 2; i10--) {
                        objArr[i10] = null;
                    }
                    mTwiceBaseCache = objArr;
                    mTwiceBaseCacheSize++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (SimpleArrayMap.class) {
                if (mBaseCacheSize < 10) {
                    objArr[0] = mBaseCache;
                    objArr[1] = iArr;
                    for (int i11 = (i9 << 1) - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    mBaseCache = objArr;
                    mBaseCacheSize++;
                }
            }
        }
    }

    public void clear() {
        int i9 = this.mSize;
        if (i9 > 0) {
            int[] iArr = this.mHashes;
            Object[] objArr = this.mArray;
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
            this.mSize = 0;
            freeArrays(iArr, objArr, i9);
        }
        if (this.mSize > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return indexOfValue(obj) >= 0;
    }

    public void ensureCapacity(int i9) {
        int i10 = this.mSize;
        int[] iArr = this.mHashes;
        if (iArr.length < i9) {
            Object[] objArr = this.mArray;
            allocArrays(i9);
            if (this.mSize > 0) {
                System.arraycopy(iArr, 0, this.mHashes, 0, i10);
                System.arraycopy(objArr, 0, this.mArray, 0, i10 << 1);
            }
            freeArrays(iArr, objArr, i10);
        }
        if (this.mSize != i10) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimpleArrayMap) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
            if (size() != simpleArrayMap.size()) {
                return false;
            }
            for (int i9 = 0; i9 < this.mSize; i9++) {
                try {
                    K keyAt = keyAt(i9);
                    V valueAt = valueAt(i9);
                    Object obj2 = simpleArrayMap.get(keyAt);
                    if (valueAt == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(keyAt)) {
                            return false;
                        }
                    } else if (!valueAt.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.mSize; i10++) {
                try {
                    K keyAt2 = keyAt(i10);
                    V valueAt2 = valueAt(i10);
                    Object obj3 = map.get(keyAt2);
                    if (valueAt2 == null) {
                        if (obj3 != null || !map.containsKey(keyAt2)) {
                            return false;
                        }
                    } else if (!valueAt2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v10) {
        int indexOfKey = indexOfKey(obj);
        return indexOfKey >= 0 ? (V) this.mArray[(indexOfKey << 1) + 1] : v10;
    }

    public int hashCode() {
        int[] iArr = this.mHashes;
        Object[] objArr = this.mArray;
        int i9 = this.mSize;
        int i10 = 1;
        int i11 = 0;
        int i12 = 0;
        while (i11 < i9) {
            Object obj = objArr[i10];
            i12 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i11];
            i11++;
            i10 += 2;
        }
        return i12;
    }

    int indexOf(Object obj, int i9) {
        int i10 = this.mSize;
        if (i10 == 0) {
            return -1;
        }
        int binarySearchHashes = binarySearchHashes(this.mHashes, i10, i9);
        if (binarySearchHashes >= 0 && !obj.equals(this.mArray[binarySearchHashes << 1])) {
            int i11 = binarySearchHashes + 1;
            while (i11 < i10 && this.mHashes[i11] == i9) {
                if (obj.equals(this.mArray[i11 << 1])) {
                    return i11;
                }
                i11++;
            }
            for (int i12 = binarySearchHashes - 1; i12 >= 0 && this.mHashes[i12] == i9; i12--) {
                if (obj.equals(this.mArray[i12 << 1])) {
                    return i12;
                }
            }
            return ~i11;
        }
        return binarySearchHashes;
    }

    public int indexOfKey(@Nullable Object obj) {
        return obj == null ? indexOfNull() : indexOf(obj, obj.hashCode());
    }

    int indexOfNull() {
        int i9 = this.mSize;
        if (i9 == 0) {
            return -1;
        }
        int binarySearchHashes = binarySearchHashes(this.mHashes, i9, 0);
        if (binarySearchHashes >= 0 && this.mArray[binarySearchHashes << 1] != null) {
            int i10 = binarySearchHashes + 1;
            while (i10 < i9 && this.mHashes[i10] == 0) {
                if (this.mArray[i10 << 1] == null) {
                    return i10;
                }
                i10++;
            }
            for (int i11 = binarySearchHashes - 1; i11 >= 0 && this.mHashes[i11] == 0; i11--) {
                if (this.mArray[i11 << 1] == null) {
                    return i11;
                }
            }
            return ~i10;
        }
        return binarySearchHashes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int indexOfValue(Object obj) {
        int i9 = this.mSize * 2;
        Object[] objArr = this.mArray;
        if (obj == null) {
            for (int i10 = 1; i10 < i9; i10 += 2) {
                if (objArr[i10] == null) {
                    return i10 >> 1;
                }
            }
            return -1;
        }
        for (int i11 = 1; i11 < i9; i11 += 2) {
            if (obj.equals(objArr[i11])) {
                return i11 >> 1;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.mSize <= 0;
    }

    public K keyAt(int i9) {
        return (K) this.mArray[i9 << 1];
    }

    @Nullable
    public V put(K k10, V v10) {
        int i9;
        int indexOf;
        int i10 = this.mSize;
        if (k10 == null) {
            indexOf = indexOfNull();
            i9 = 0;
        } else {
            int hashCode = k10.hashCode();
            i9 = hashCode;
            indexOf = indexOf(k10, hashCode);
        }
        if (indexOf >= 0) {
            int i11 = (indexOf << 1) + 1;
            Object[] objArr = this.mArray;
            V v11 = (V) objArr[i11];
            objArr[i11] = v10;
            return v11;
        }
        int i12 = ~indexOf;
        int[] iArr = this.mHashes;
        if (i10 >= iArr.length) {
            int i13 = 4;
            if (i10 >= 8) {
                i13 = (i10 >> 1) + i10;
            } else if (i10 >= 4) {
                i13 = 8;
            }
            Object[] objArr2 = this.mArray;
            allocArrays(i13);
            if (i10 == this.mSize) {
                int[] iArr2 = this.mHashes;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.mArray, 0, objArr2.length);
                }
                freeArrays(iArr, objArr2, i10);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i12 < i10) {
            int[] iArr3 = this.mHashes;
            int i14 = i12 + 1;
            System.arraycopy(iArr3, i12, iArr3, i14, i10 - i12);
            Object[] objArr3 = this.mArray;
            System.arraycopy(objArr3, i12 << 1, objArr3, i14 << 1, (this.mSize - i12) << 1);
        }
        int i15 = this.mSize;
        if (i10 == i15) {
            int[] iArr4 = this.mHashes;
            if (i12 < iArr4.length) {
                iArr4[i12] = i9;
                Object[] objArr4 = this.mArray;
                int i16 = i12 << 1;
                objArr4[i16] = k10;
                objArr4[i16 + 1] = v10;
                this.mSize = i15 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(@NonNull SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int i9 = simpleArrayMap.mSize;
        ensureCapacity(this.mSize + i9);
        if (this.mSize != 0) {
            for (int i10 = 0; i10 < i9; i10++) {
                put(simpleArrayMap.keyAt(i10), simpleArrayMap.valueAt(i10));
            }
        } else if (i9 > 0) {
            System.arraycopy(simpleArrayMap.mHashes, 0, this.mHashes, 0, i9);
            System.arraycopy(simpleArrayMap.mArray, 0, this.mArray, 0, i9 << 1);
            this.mSize = i9;
        }
    }

    @Nullable
    public V putIfAbsent(K k10, V v10) {
        V v11 = get(k10);
        return v11 == null ? put(k10, v10) : v11;
    }

    @Nullable
    public V remove(Object obj) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            return removeAt(indexOfKey);
        }
        return null;
    }

    public V removeAt(int i9) {
        Object[] objArr = this.mArray;
        int i10 = i9 << 1;
        V v10 = (V) objArr[i10 + 1];
        int i11 = this.mSize;
        int i12 = 0;
        if (i11 <= 1) {
            freeArrays(this.mHashes, objArr, i11);
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            int i13 = i11 - 1;
            int[] iArr = this.mHashes;
            if (iArr.length > 8 && i11 < iArr.length / 3) {
                allocArrays(i11 > 8 ? i11 + (i11 >> 1) : 8);
                if (i11 != this.mSize) {
                    throw new ConcurrentModificationException();
                }
                if (i9 > 0) {
                    System.arraycopy(iArr, 0, this.mHashes, 0, i9);
                    System.arraycopy(objArr, 0, this.mArray, 0, i10);
                }
                if (i9 < i13) {
                    int i14 = i9 + 1;
                    int i15 = i13 - i9;
                    System.arraycopy(iArr, i14, this.mHashes, i9, i15);
                    System.arraycopy(objArr, i14 << 1, this.mArray, i10, i15 << 1);
                }
            } else {
                if (i9 < i13) {
                    int i16 = i9 + 1;
                    int i17 = i13 - i9;
                    System.arraycopy(iArr, i16, iArr, i9, i17);
                    Object[] objArr2 = this.mArray;
                    System.arraycopy(objArr2, i16 << 1, objArr2, i10, i17 << 1);
                }
                Object[] objArr3 = this.mArray;
                int i18 = i13 << 1;
                objArr3[i18] = null;
                objArr3[i18 + 1] = null;
            }
            i12 = i13;
        }
        if (i11 == this.mSize) {
            this.mSize = i12;
            return v10;
        }
        throw new ConcurrentModificationException();
    }

    @Nullable
    public V replace(K k10, V v10) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            return setValueAt(indexOfKey, v10);
        }
        return null;
    }

    public V setValueAt(int i9, V v10) {
        int i10 = (i9 << 1) + 1;
        Object[] objArr = this.mArray;
        V v11 = (V) objArr[i10];
        objArr[i10] = v10;
        return v11;
    }

    public int size() {
        return this.mSize;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.mSize * 28);
        sb2.append('{');
        for (int i9 = 0; i9 < this.mSize; i9++) {
            if (i9 > 0) {
                sb2.append(", ");
            }
            K keyAt = keyAt(i9);
            if (keyAt != this) {
                sb2.append(keyAt);
            } else {
                sb2.append("(this Map)");
            }
            sb2.append('=');
            V valueAt = valueAt(i9);
            if (valueAt != this) {
                sb2.append(valueAt);
            } else {
                sb2.append("(this Map)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    public V valueAt(int i9) {
        return (V) this.mArray[(i9 << 1) + 1];
    }

    public boolean remove(Object obj, Object obj2) {
        int indexOfKey = indexOfKey(obj);
        if (indexOfKey >= 0) {
            V valueAt = valueAt(indexOfKey);
            if (obj2 == valueAt || (obj2 != null && obj2.equals(valueAt))) {
                removeAt(indexOfKey);
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean replace(K k10, V v10, V v11) {
        int indexOfKey = indexOfKey(k10);
        if (indexOfKey >= 0) {
            V valueAt = valueAt(indexOfKey);
            if (valueAt == v10 || (v10 != null && v10.equals(valueAt))) {
                setValueAt(indexOfKey, v11);
                return true;
            }
            return false;
        }
        return false;
    }

    public SimpleArrayMap(int i9) {
        if (i9 == 0) {
            this.mHashes = ContainerHelpers.EMPTY_INTS;
            this.mArray = ContainerHelpers.EMPTY_OBJECTS;
        } else {
            allocArrays(i9);
        }
        this.mSize = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            putAll(simpleArrayMap);
        }
    }
}
