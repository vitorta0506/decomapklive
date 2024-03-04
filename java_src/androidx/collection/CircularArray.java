package androidx.collection;
/* loaded from: classes.dex */
public final class CircularArray<E> {
    private int mCapacityBitmask;
    private E[] mElements;
    private int mHead;
    private int mTail;

    public CircularArray() {
        this(8);
    }

    private void doubleCapacity() {
        E[] eArr = this.mElements;
        int length = eArr.length;
        int i9 = this.mHead;
        int i10 = length - i9;
        int i11 = length << 1;
        if (i11 >= 0) {
            E[] eArr2 = (E[]) new Object[i11];
            System.arraycopy(eArr, i9, eArr2, 0, i10);
            System.arraycopy(this.mElements, 0, eArr2, i10, this.mHead);
            this.mElements = eArr2;
            this.mHead = 0;
            this.mTail = length;
            this.mCapacityBitmask = i11 - 1;
            return;
        }
        throw new RuntimeException("Max array capacity exceeded");
    }

    public void addFirst(E e10) {
        int i9 = (this.mHead - 1) & this.mCapacityBitmask;
        this.mHead = i9;
        this.mElements[i9] = e10;
        if (i9 == this.mTail) {
            doubleCapacity();
        }
    }

    public void addLast(E e10) {
        E[] eArr = this.mElements;
        int i9 = this.mTail;
        eArr[i9] = e10;
        int i10 = this.mCapacityBitmask & (i9 + 1);
        this.mTail = i10;
        if (i10 == this.mHead) {
            doubleCapacity();
        }
    }

    public void clear() {
        removeFromStart(size());
    }

    public E get(int i9) {
        if (i9 >= 0 && i9 < size()) {
            return this.mElements[this.mCapacityBitmask & (this.mHead + i9)];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getFirst() {
        int i9 = this.mHead;
        if (i9 != this.mTail) {
            return this.mElements[i9];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E getLast() {
        int i9 = this.mHead;
        int i10 = this.mTail;
        if (i9 != i10) {
            return this.mElements[(i10 - 1) & this.mCapacityBitmask];
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public boolean isEmpty() {
        return this.mHead == this.mTail;
    }

    public E popFirst() {
        int i9 = this.mHead;
        if (i9 != this.mTail) {
            E[] eArr = this.mElements;
            E e10 = eArr[i9];
            eArr[i9] = null;
            this.mHead = (i9 + 1) & this.mCapacityBitmask;
            return e10;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public E popLast() {
        int i9 = this.mHead;
        int i10 = this.mTail;
        if (i9 != i10) {
            int i11 = this.mCapacityBitmask & (i10 - 1);
            E[] eArr = this.mElements;
            E e10 = eArr[i11];
            eArr[i11] = null;
            this.mTail = i11;
            return e10;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromEnd(int i9) {
        int i10;
        if (i9 <= 0) {
            return;
        }
        if (i9 <= size()) {
            int i11 = this.mTail;
            int i12 = i9 < i11 ? i11 - i9 : 0;
            int i13 = i12;
            while (true) {
                i10 = this.mTail;
                if (i13 >= i10) {
                    break;
                }
                this.mElements[i13] = null;
                i13++;
            }
            int i14 = i10 - i12;
            int i15 = i9 - i14;
            this.mTail = i10 - i14;
            if (i15 > 0) {
                int length = this.mElements.length;
                this.mTail = length;
                int i16 = length - i15;
                for (int i17 = i16; i17 < this.mTail; i17++) {
                    this.mElements[i17] = null;
                }
                this.mTail = i16;
                return;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public void removeFromStart(int i9) {
        if (i9 <= 0) {
            return;
        }
        if (i9 <= size()) {
            int length = this.mElements.length;
            int i10 = this.mHead;
            if (i9 < length - i10) {
                length = i10 + i9;
            }
            while (i10 < length) {
                this.mElements[i10] = null;
                i10++;
            }
            int i11 = this.mHead;
            int i12 = length - i11;
            int i13 = i9 - i12;
            this.mHead = this.mCapacityBitmask & (i11 + i12);
            if (i13 > 0) {
                for (int i14 = 0; i14 < i13; i14++) {
                    this.mElements[i14] = null;
                }
                this.mHead = i13;
                return;
            }
            return;
        }
        throw new ArrayIndexOutOfBoundsException();
    }

    public int size() {
        return (this.mTail - this.mHead) & this.mCapacityBitmask;
    }

    public CircularArray(int i9) {
        if (i9 < 1) {
            throw new IllegalArgumentException("capacity must be >= 1");
        }
        if (i9 <= 1073741824) {
            i9 = Integer.bitCount(i9) != 1 ? Integer.highestOneBit(i9 - 1) << 1 : i9;
            this.mCapacityBitmask = i9 - 1;
            this.mElements = (E[]) new Object[i9];
            return;
        }
        throw new IllegalArgumentException("capacity must be <= 2^30");
    }
}
