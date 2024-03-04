package org.libpag;

import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGImageLayer extends PAGLayer {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    public PAGImageLayer(long j10) {
        super(j10);
    }

    public static PAGImageLayer Make(int i9, int i10, long j10) {
        long nativeMake = nativeMake(i9, i10, j10);
        if (nativeMake == 0) {
            return null;
        }
        return new PAGImageLayer(nativeMake);
    }

    private static native void nativeInit();

    private static native long nativeMake(int i9, int i10, long j10);

    private native void replaceImage(long j10);

    public native long contentDuration();

    public native PAGVideoRange[] getVideoRanges();

    public void replaceImage(PAGImage pAGImage) {
        replaceImage(pAGImage == null ? 0L : pAGImage.nativeContext);
    }
}
