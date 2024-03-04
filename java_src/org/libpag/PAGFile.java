package org.libpag;

import android.content.res.AssetManager;
import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGFile extends PAGComposition {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    private PAGFile(long j10) {
        super(j10);
    }

    public static PAGFile Load(String str) {
        return LoadFromPath(str);
    }

    private static native PAGFile LoadFromAssets(AssetManager assetManager, String str);

    private static native PAGFile LoadFromBytes(byte[] bArr, int i9);

    private static native PAGFile LoadFromPath(String str);

    public static native int MaxSupportedTagLevel();

    private static final native void nativeInit();

    public native PAGFile copyOriginal();

    public native PAGLayer[] getLayersByEditableIndex(int i9, int i10);

    public native PAGText getTextData(int i9);

    public native void nativeReplaceImage(int i9, long j10);

    public native int numImages();

    public native int numTexts();

    public native int numVideos();

    public native String path();

    public void replaceImage(int i9, PAGImage pAGImage) {
        if (pAGImage == null) {
            nativeReplaceImage(i9, 0L);
        } else {
            nativeReplaceImage(i9, pAGImage.nativeContext);
        }
    }

    public native void replaceText(int i9, PAGText pAGText);

    public native void setDuration(long j10);

    public native void setTimeStretchMode(int i9);

    public native int tagLevel();

    public native int timeStretchMode();

    public static PAGFile Load(byte[] bArr) {
        return LoadFromBytes(bArr, bArr.length);
    }

    public static PAGFile Load(AssetManager assetManager, String str) {
        return LoadFromAssets(assetManager, str);
    }
}
