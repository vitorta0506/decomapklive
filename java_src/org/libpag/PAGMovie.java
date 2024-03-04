package org.libpag;

import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGMovie extends PAGImage {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    private PAGMovie(long j10) {
        super(j10);
    }

    public static PAGMovie FromComposition(PAGComposition pAGComposition) {
        long MakeFromComposition = MakeFromComposition(pAGComposition);
        if (MakeFromComposition == 0) {
            return null;
        }
        return new PAGMovie(MakeFromComposition);
    }

    public static PAGMovie FromVideoPath(String str) {
        long MakeFromVideoPath = MakeFromVideoPath(str);
        if (MakeFromVideoPath == 0) {
            return null;
        }
        return new PAGMovie(MakeFromVideoPath);
    }

    private static native long MakeFromComposition(PAGComposition pAGComposition);

    private static native long MakeFromVideoPath(String str);

    private static native long MakeFromVideoPath(String str, long j10, long j11);

    private static native void nativeInit();

    public native long duration();

    public static PAGMovie FromVideoPath(String str, long j10, long j11) {
        long MakeFromVideoPath = MakeFromVideoPath(str, j10, j11);
        if (MakeFromVideoPath == 0) {
            return null;
        }
        return new PAGMovie(MakeFromVideoPath);
    }
}
