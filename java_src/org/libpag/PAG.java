package org.libpag;

import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAG {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
    }

    public static native String SDKVersion();
}
