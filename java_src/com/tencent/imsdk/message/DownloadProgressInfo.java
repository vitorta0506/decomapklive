package com.tencent.imsdk.message;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class DownloadProgressInfo implements Serializable {
    private long currentSize;
    private long totalSize;

    public DownloadProgressInfo(long j10, long j11) {
        this.currentSize = j10;
        this.totalSize = j11;
    }

    public long getCurrentSize() {
        return this.currentSize;
    }

    public long getTotalSize() {
        return this.totalSize;
    }
}
