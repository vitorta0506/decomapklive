package org.libpag;

import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public abstract class VideoDecoder {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
    }

    public static native void RegisterSoftwareDecoderFactory(long j10);

    public static native void SetMaxHardwareDecoderCount(int i9);

    public static native void SetSoftwareToHardwareEnabled(boolean z10);
}
