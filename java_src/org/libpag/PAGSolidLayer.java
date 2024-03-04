package org.libpag;

import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGSolidLayer extends PAGLayer {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    public PAGSolidLayer(long j10) {
        super(j10);
    }

    private static native void nativeInit();

    public native void setSolidColor(int i9);

    public native int solidColor();
}
