package org.libpag;

import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGShapeLayer extends PAGLayer {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    public PAGShapeLayer(long j10) {
        super(j10);
    }

    private static native void nativeInit();
}
