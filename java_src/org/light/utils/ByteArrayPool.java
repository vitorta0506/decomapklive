package org.light.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes7.dex */
public class ByteArrayPool {
    private static ByteArrayPool maxBufPoolInstance;
    private List<byte[]> mBuffersByLastUse = new LinkedList();
    private List<byte[]> mBuffersBySize = new ArrayList(64);
    private int mCurrentSize = 0;
    private final int mSizeLimit;
    private static ByteArrayPool genericInstance = new ByteArrayPool(102400);
    protected static final Comparator<byte[]> BUF_COMPARATOR = new Comparator<byte[]>() { // from class: org.light.utils.ByteArrayPool.1
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    public ByteArrayPool(int i9) {
        this.mSizeLimit = i9;
    }

    public static ByteArrayPool getGenericInstance() {
        return genericInstance;
    }

    public static ByteArrayPool getMaxBufInstance() {
        if (maxBufPoolInstance == null) {
            synchronized (ByteArrayPool.class) {
                if (maxBufPoolInstance == null) {
                    maxBufPoolInstance = new ByteArrayPool(1024000);
                }
            }
        }
        return maxBufPoolInstance;
    }

    private synchronized void trim() {
        while (this.mCurrentSize > this.mSizeLimit) {
            byte[] remove = this.mBuffersByLastUse.remove(0);
            this.mBuffersBySize.remove(remove);
            this.mCurrentSize -= remove.length;
        }
    }

    public synchronized byte[] getBuf(int i9) {
        for (int i10 = 0; i10 < this.mBuffersBySize.size(); i10++) {
            byte[] bArr = this.mBuffersBySize.get(i10);
            if (bArr.length >= i9) {
                this.mCurrentSize -= bArr.length;
                this.mBuffersBySize.remove(i10);
                this.mBuffersByLastUse.remove(bArr);
                return bArr;
            }
        }
        return new byte[i9];
    }

    public synchronized void returnBuf(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.mSizeLimit) {
                this.mBuffersByLastUse.add(bArr);
                int binarySearch = Collections.binarySearch(this.mBuffersBySize, bArr, BUF_COMPARATOR);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.mBuffersBySize.add(binarySearch, bArr);
                this.mCurrentSize += bArr.length;
                trim();
            }
        }
    }
}
