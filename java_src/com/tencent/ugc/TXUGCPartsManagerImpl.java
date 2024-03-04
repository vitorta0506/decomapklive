package com.tencent.ugc;

import com.tencent.liteav.base.annotations.JNINamespace;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@JNINamespace("liteav::ugc")
/* loaded from: classes4.dex */
public class TXUGCPartsManagerImpl implements TXUGCPartsManager {
    private long mNativePartsManager;

    public TXUGCPartsManagerImpl(long j10) {
        this.mNativePartsManager = j10;
    }

    private static native void nativeAddPart(long j10, String str, long j11);

    private static native void nativeDeleteAllParts(long j10);

    private static native void nativeDeleteLastPart(long j10);

    private static native void nativeDeletePart(long j10, int i9);

    private static native void nativeDestroy(long j10);

    private static native int nativeGetDuration(long j10);

    private static native String[] nativeGetPartsPathList(long j10);

    private static native void nativeInsertPart(long j10, String str, int i9);

    @Override // com.tencent.ugc.TXUGCPartsManager
    public void addClipInfo(PartInfo partInfo) {
        long j10 = this.mNativePartsManager;
        if (j10 != 0) {
            nativeAddPart(j10, partInfo.getPath(), partInfo.getDuration());
        }
    }

    @Override // com.tencent.ugc.TXUGCPartsManager
    public void deleteAllParts() {
        long j10 = this.mNativePartsManager;
        if (j10 != 0) {
            nativeDeleteAllParts(j10);
        }
    }

    @Override // com.tencent.ugc.TXUGCPartsManager
    public void deleteLastPart() {
        long j10 = this.mNativePartsManager;
        if (j10 != 0) {
            nativeDeleteLastPart(j10);
        }
    }

    @Override // com.tencent.ugc.TXUGCPartsManager
    public void deletePart(int i9) {
        long j10 = this.mNativePartsManager;
        if (j10 != 0) {
            nativeDeletePart(j10, i9);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        long j10 = this.mNativePartsManager;
        if (j10 != 0) {
            nativeDestroy(j10);
            this.mNativePartsManager = 0L;
        }
    }

    @Override // com.tencent.ugc.TXUGCPartsManager
    public int getDuration() {
        long j10 = this.mNativePartsManager;
        if (j10 != 0) {
            return nativeGetDuration(j10);
        }
        return 0;
    }

    @Override // com.tencent.ugc.TXUGCPartsManager
    public List<String> getPartsPathList() {
        String[] nativeGetPartsPathList;
        ArrayList arrayList = new ArrayList();
        long j10 = this.mNativePartsManager;
        if (j10 != 0 && (nativeGetPartsPathList = nativeGetPartsPathList(j10)) != null && nativeGetPartsPathList.length != 0) {
            arrayList.addAll(Arrays.asList(nativeGetPartsPathList));
        }
        return arrayList;
    }

    @Override // com.tencent.ugc.TXUGCPartsManager
    public void insertPart(String str, int i9) {
        long j10 = this.mNativePartsManager;
        if (j10 != 0) {
            nativeInsertPart(j10, str, i9);
        }
    }
}
