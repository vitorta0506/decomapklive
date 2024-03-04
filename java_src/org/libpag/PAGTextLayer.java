package org.libpag;

import org.extra.tools.LibraryLoadUtils;
/* loaded from: classes7.dex */
public class PAGTextLayer extends PAGLayer {
    static {
        LibraryLoadUtils.loadLibrary("libpag");
        nativeInit();
    }

    public PAGTextLayer(long j10) {
        super(j10);
    }

    private static native void nativeInit();

    private native void setFont(String str, String str2);

    public native int fillColor();

    public native PAGFont font();

    public native float fontSize();

    public native void setFillColor(int i9);

    public void setFont(PAGFont pAGFont) {
        setFont(pAGFont.fontFamily, pAGFont.fontStyle);
    }

    public native void setFontSize(float f10);

    public native void setStrokeColor(int i9);

    public native void setText(String str);

    public native int strokeColor();

    public native String text();
}
