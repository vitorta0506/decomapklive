package com.huawei.hms.common.data;

import com.huawei.hms.common.internal.Preconditions;
/* loaded from: classes4.dex */
public class SingleRefDBInnerIter<T> extends DBInnerIter<T> {
    public SingleRefDBInnerIter(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.huawei.hms.common.data.DBInnerIter, java.util.Iterator
    public T next() {
        if (hasNext()) {
            int i9 = this.index + 1;
            this.index = i9;
            if (i9 == 0) {
                Preconditions.checkState(this.dataBuffer.get(0) instanceof DataBufferRef, "DataBuffer reference of type " + this.dataBuffer.get(0).getClass() + " is not movable");
                ((DataBufferRef) this.dataBuffer.get(0)).getWindowIndex(this.index);
            }
            return (T) this.dataBuffer.get(0);
        }
        return null;
    }
}
