package com.google.android.renderscript;

import android.graphics.Bitmap;
import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J<\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J&\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\b\b\u0002\u0010 \u001a\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J>\u0010\u001e\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010 \u001a\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J.\u0010#\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u00042\b\b\u0002\u0010%\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007JN\u0010#\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u00042\b\b\u0002\u0010%\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J$\u0010(\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J<\u0010(\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\t\u0010*\u001a\u00020\nH\u0082 J\u0011\u0010+\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0082 J\u001c\u0010,\u001a\u00020-2\u0006\u0010\u001f\u001a\u00020\u00142\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J4\u0010,\u001a\u00020-2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J(\u0010.\u001a\u00020-2\u0006\u0010\u001f\u001a\u00020\u00142\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J@\u0010.\u001a\u00020-2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J$\u0010/\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u00100\u001a\u0002012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J4\u0010/\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00100\u001a\u0002012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J$\u00102\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u00103\u001a\u0002042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J4\u00102\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00103\u001a\u0002042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007JC\u00105\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u001c2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J3\u00106\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 JK\u00107\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J3\u00109\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J[\u0010;\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00192\u0006\u0010'\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J;\u0010<\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 JK\u0010=\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00192\u0006\u0010)\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J3\u0010>\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u0010)\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 JC\u0010?\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00108\u001a\u00020-2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J+\u0010@\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u00108\u001a\u00020-2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 JK\u0010A\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00108\u001a\u00020-2\u0006\u0010)\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J3\u0010B\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u00108\u001a\u00020-2\u0006\u0010)\u001a\u00020\u00042\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J[\u0010C\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u00108\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010D\u001a\u00020\u00192\u0006\u0010E\u001a\u00020\u00192\u0006\u0010F\u001a\u00020\u00192\u0006\u0010G\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J[\u0010H\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u00108\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u001c2\u0006\u0010J\u001a\u00020\u001c2\u0006\u0010K\u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 JK\u0010L\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u00103\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u001c2\u0006\u0010J\u001a\u00020\u001c2\u0006\u0010K\u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 JK\u0010M\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\u0006\u0010D\u001a\u00020\u00192\u0006\u0010E\u001a\u00020\u00192\u0006\u0010F\u001a\u00020\u00192\u0006\u0010G\u001a\u00020\u00192\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 JS\u0010N\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010O\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u00192\u0006\u0010Q\u001a\u00020\u001c2\u0006\u0010R\u001a\u00020\u001c2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J+\u0010S\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010:\u001a\u00020\u00142\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0082 J9\u0010T\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u00108\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010U\u001a\u00020\u001cH\u0082 J9\u0010V\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\n2\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020\u00142\u0006\u0010W\u001a\u00020\u001cH\u0082 J,\u0010X\u001a\u00020\u00142\u0006\u0010\u001f\u001a\u00020\u00142\u0006\u0010Q\u001a\u00020\u001c2\u0006\u0010R\u001a\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007JD\u0010X\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\u001c2\u0006\u0010O\u001a\u00020\u001c2\u0006\u0010P\u001a\u00020\u001c2\u0006\u0010Q\u001a\u00020\u001c2\u0006\u0010R\u001a\u00020\u001c2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u0006\u0010Y\u001a\u00020\u0010J&\u0010Z\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010U\u001a\u00020[J&\u0010\\\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010U\u001a\u00020[R\u0011\u0010\u0003\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0006¨\u0006]"}, d2 = {"Lcom/google/android/renderscript/Toolkit;", "", "()V", "greyScaleColorMatrix", "", "getGreyScaleColorMatrix", "()[F", "identityMatrix", "getIdentityMatrix", "nativeHandle", "", "rgbToYuvMatrix", "getRgbToYuvMatrix", "yuvToRgbMatrix", "getYuvToRgbMatrix", "blend", "", "mode", "Lcom/google/android/renderscript/BlendingMode;", "sourceBitmap", "Landroid/graphics/Bitmap;", "destBitmap", "restriction", "Lcom/google/android/renderscript/Range2d;", "sourceArray", "", "destArray", "sizeX", "", "sizeY", "blur", "inputBitmap", "radius", "inputArray", "vectorSize", "colorMatrix", "matrix", "addVector", "inputVectorSize", "outputVectorSize", "convolve", "coefficients", "createNative", "destroyNative", "histogram", "", "histogramDot", "lut", "table", "Lcom/google/android/renderscript/LookupTable;", "lut3d", "cube", "Lcom/google/android/renderscript/Rgba3dArray;", "nativeBlend", "nativeBlendBitmap", "nativeBlur", "outputArray", "nativeBlurBitmap", "outputBitmap", "nativeColorMatrix", "nativeColorMatrixBitmap", "nativeConvolve", "nativeConvolveBitmap", "nativeHistogram", "nativeHistogramBitmap", "nativeHistogramDot", "nativeHistogramDotBitmap", "nativeLut", "red", "green", "blue", "alpha", "nativeLut3d", "cubeSizeX", "cubeSizeY", "cubeSizeZ", "nativeLut3dBitmap", "nativeLutBitmap", "nativeResize", "inputSizeX", "inputSizeY", "outputSizeX", "outputSizeY", "nativeResizeBitmap", "nativeYuvToRgb", "format", "nativeYuvToRgbBitmap", "value", "resize", "shutdown", "yuvToRgb", "Lcom/google/android/renderscript/YuvFormat;", "yuvToRgbBitmap", "renderscript-toolkit_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2.dex */
public final class Toolkit {
    @NotNull
    public static final Toolkit INSTANCE;
    private static long nativeHandle;

    static {
        Toolkit toolkit = new Toolkit();
        INSTANCE = toolkit;
        System.loadLibrary("renderscript-toolkit");
        nativeHandle = toolkit.createNative();
    }

    private Toolkit() {
    }

    public static /* synthetic */ void blend$default(Toolkit toolkit, BlendingMode blendingMode, byte[] bArr, byte[] bArr2, int i9, int i10, Range2d range2d, int i11, Object obj) {
        if ((i11 & 32) != 0) {
            range2d = null;
        }
        toolkit.blend(blendingMode, bArr, bArr2, i9, i10, range2d);
    }

    public static /* synthetic */ byte[] blur$default(Toolkit toolkit, byte[] bArr, int i9, int i10, int i11, int i12, Range2d range2d, int i13, Object obj) {
        int i14 = (i13 & 16) != 0 ? 5 : i12;
        if ((i13 & 32) != 0) {
            range2d = null;
        }
        return toolkit.blur(bArr, i9, i10, i11, i14, range2d);
    }

    public static /* synthetic */ byte[] colorMatrix$default(Toolkit toolkit, byte[] bArr, int i9, int i10, int i11, int i12, float[] fArr, float[] fArr2, Range2d range2d, int i13, Object obj) {
        return toolkit.colorMatrix(bArr, i9, i10, i11, i12, fArr, (i13 & 64) != 0 ? new float[]{0.0f, 0.0f, 0.0f, 0.0f} : fArr2, (i13 & 128) != 0 ? null : range2d);
    }

    public static /* synthetic */ byte[] convolve$default(Toolkit toolkit, byte[] bArr, int i9, int i10, int i11, float[] fArr, Range2d range2d, int i12, Object obj) {
        if ((i12 & 32) != 0) {
            range2d = null;
        }
        return toolkit.convolve(bArr, i9, i10, i11, fArr, range2d);
    }

    private final native long createNative();

    private final native void destroyNative(long j10);

    public static /* synthetic */ int[] histogram$default(Toolkit toolkit, byte[] bArr, int i9, int i10, int i11, Range2d range2d, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            range2d = null;
        }
        return toolkit.histogram(bArr, i9, i10, i11, range2d);
    }

    public static /* synthetic */ int[] histogramDot$default(Toolkit toolkit, byte[] bArr, int i9, int i10, int i11, float[] fArr, Range2d range2d, int i12, Object obj) {
        return toolkit.histogramDot(bArr, i9, i10, i11, (i12 & 16) != 0 ? null : fArr, (i12 & 32) != 0 ? null : range2d);
    }

    public static /* synthetic */ byte[] lut$default(Toolkit toolkit, byte[] bArr, int i9, int i10, LookupTable lookupTable, Range2d range2d, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            range2d = null;
        }
        return toolkit.lut(bArr, i9, i10, lookupTable, range2d);
    }

    public static /* synthetic */ byte[] lut3d$default(Toolkit toolkit, byte[] bArr, int i9, int i10, Rgba3dArray rgba3dArray, Range2d range2d, int i11, Object obj) {
        if ((i11 & 16) != 0) {
            range2d = null;
        }
        return toolkit.lut3d(bArr, i9, i10, rgba3dArray, range2d);
    }

    private final native void nativeBlend(long j10, int i9, byte[] bArr, byte[] bArr2, int i10, int i11, Range2d range2d);

    private final native void nativeBlendBitmap(long j10, int i9, Bitmap bitmap, Bitmap bitmap2, Range2d range2d);

    private final native void nativeBlur(long j10, byte[] bArr, int i9, int i10, int i11, int i12, byte[] bArr2, Range2d range2d);

    private final native void nativeBlurBitmap(long j10, Bitmap bitmap, Bitmap bitmap2, int i9, Range2d range2d);

    private final native void nativeColorMatrix(long j10, byte[] bArr, int i9, int i10, int i11, byte[] bArr2, int i12, float[] fArr, float[] fArr2, Range2d range2d);

    private final native void nativeColorMatrixBitmap(long j10, Bitmap bitmap, Bitmap bitmap2, float[] fArr, float[] fArr2, Range2d range2d);

    private final native void nativeConvolve(long j10, byte[] bArr, int i9, int i10, int i11, byte[] bArr2, float[] fArr, Range2d range2d);

    private final native void nativeConvolveBitmap(long j10, Bitmap bitmap, Bitmap bitmap2, float[] fArr, Range2d range2d);

    private final native void nativeHistogram(long j10, byte[] bArr, int i9, int i10, int i11, int[] iArr, Range2d range2d);

    private final native void nativeHistogramBitmap(long j10, Bitmap bitmap, int[] iArr, Range2d range2d);

    private final native void nativeHistogramDot(long j10, byte[] bArr, int i9, int i10, int i11, int[] iArr, float[] fArr, Range2d range2d);

    private final native void nativeHistogramDotBitmap(long j10, Bitmap bitmap, int[] iArr, float[] fArr, Range2d range2d);

    private final native void nativeLut(long j10, byte[] bArr, byte[] bArr2, int i9, int i10, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, Range2d range2d);

    private final native void nativeLut3d(long j10, byte[] bArr, byte[] bArr2, int i9, int i10, byte[] bArr3, int i11, int i12, int i13, Range2d range2d);

    private final native void nativeLut3dBitmap(long j10, Bitmap bitmap, Bitmap bitmap2, byte[] bArr, int i9, int i10, int i11, Range2d range2d);

    private final native void nativeLutBitmap(long j10, Bitmap bitmap, Bitmap bitmap2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, Range2d range2d);

    private final native void nativeResize(long j10, byte[] bArr, int i9, int i10, int i11, byte[] bArr2, int i12, int i13, Range2d range2d);

    private final native void nativeResizeBitmap(long j10, Bitmap bitmap, Bitmap bitmap2, Range2d range2d);

    private final native void nativeYuvToRgb(long j10, byte[] bArr, byte[] bArr2, int i9, int i10, int i11);

    private final native void nativeYuvToRgbBitmap(long j10, byte[] bArr, int i9, int i10, Bitmap bitmap, int i11);

    public static /* synthetic */ byte[] resize$default(Toolkit toolkit, byte[] bArr, int i9, int i10, int i11, int i12, int i13, Range2d range2d, int i14, Object obj) {
        return toolkit.resize(bArr, i9, i10, i11, i12, i13, (i14 & 64) != 0 ? null : range2d);
    }

    @JvmOverloads
    public final void blend(@NotNull BlendingMode blendingMode, @NotNull Bitmap bitmap, @NotNull Bitmap bitmap2) {
        blend$default(this, blendingMode, bitmap, bitmap2, null, 8, null);
    }

    @JvmOverloads
    public final void blend(@NotNull BlendingMode blendingMode, @NotNull byte[] bArr, @NotNull byte[] bArr2, int i9, int i10) {
        blend$default(this, blendingMode, bArr, bArr2, i9, i10, null, 32, null);
    }

    @JvmOverloads
    public final void blend(@NotNull BlendingMode mode, @NotNull byte[] sourceArray, @NotNull byte[] destArray, int i9, int i10, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(sourceArray, "sourceArray");
        Intrinsics.checkNotNullParameter(destArray, "destArray");
        int i11 = i9 * i10 * 4;
        if (sourceArray.length >= i11) {
            if (destArray.length >= i11) {
                ToolkitKt.validateRestriction("blend", i9, i10, range2d);
                nativeBlend(nativeHandle, mode.getValue(), sourceArray, destArray, i9, i10, range2d);
                return;
            }
            throw new IllegalArgumentException(("RenderScript Toolkit blend. sourceArray is too small for the given dimensions. " + i9 + '*' + i10 + "*4 < " + sourceArray.length + JwtParser.SEPARATOR_CHAR).toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit blend. sourceArray is too small for the given dimensions. " + i9 + '*' + i10 + "*4 < " + sourceArray.length + JwtParser.SEPARATOR_CHAR).toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap blur(@NotNull Bitmap bitmap) {
        return blur$default(this, bitmap, 0, null, 6, null);
    }

    @JvmOverloads
    @NotNull
    public final Bitmap blur(@NotNull Bitmap bitmap, int i9) {
        return blur$default(this, bitmap, i9, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] blur(@NotNull byte[] bArr, int i9, int i10, int i11) {
        return blur$default(this, bArr, i9, i10, i11, 0, null, 48, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] blur(@NotNull byte[] bArr, int i9, int i10, int i11, int i12) {
        return blur$default(this, bArr, i9, i10, i11, i12, null, 32, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] blur(@NotNull byte[] inputArray, int i9, int i10, int i11, int i12, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        boolean z10 = false;
        if (i9 == 1 || i9 == 4) {
            if (!(inputArray.length >= (i10 * i11) * i9)) {
                throw new IllegalArgumentException(("RenderScript Toolkit blur. inputArray is too small for the given dimensions. " + i10 + '*' + i11 + '*' + i9 + " < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
            }
            if (1 <= i12 && 25 >= i12) {
                z10 = true;
            }
            if (z10) {
                ToolkitKt.validateRestriction("blur", i10, i11, range2d);
                byte[] bArr = new byte[inputArray.length];
                nativeBlur(nativeHandle, inputArray, i9, i10, i11, i12, bArr, range2d);
                return bArr;
            }
            throw new IllegalArgumentException(("RenderScript Toolkit blur. The radius should be between 1 and 25. " + i12 + " provided.").toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit blur. The vectorSize should be 1 or 4. " + i9 + " provided.").toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap colorMatrix(@NotNull Bitmap bitmap, @NotNull float[] fArr) {
        return colorMatrix$default(this, bitmap, fArr, null, null, 12, null);
    }

    @JvmOverloads
    @NotNull
    public final Bitmap colorMatrix(@NotNull Bitmap bitmap, @NotNull float[] fArr, @NotNull float[] fArr2) {
        return colorMatrix$default(this, bitmap, fArr, fArr2, null, 8, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] colorMatrix(@NotNull byte[] bArr, int i9, int i10, int i11, int i12, @NotNull float[] fArr) {
        return colorMatrix$default(this, bArr, i9, i10, i11, i12, fArr, null, null, 192, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] colorMatrix(@NotNull byte[] bArr, int i9, int i10, int i11, int i12, @NotNull float[] fArr, @NotNull float[] fArr2) {
        return colorMatrix$default(this, bArr, i9, i10, i11, i12, fArr, fArr2, null, 128, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] colorMatrix(@NotNull byte[] inputArray, int i9, int i10, int i11, int i12, @NotNull float[] matrix, @NotNull float[] addVector, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(addVector, "addVector");
        if (!(1 <= i9 && 4 >= i9)) {
            throw new IllegalArgumentException(("RenderScript Toolkit colorMatrix. The inputVectorSize should be between 1 and 4. " + i9 + " provided.").toString());
        }
        if (1 <= i12 && 4 >= i12) {
            int i13 = i10 * i11;
            if (inputArray.length >= i13 * i9) {
                if (matrix.length == 16) {
                    if (addVector.length == 4) {
                        ToolkitKt.validateRestriction("colorMatrix", i10, i11, range2d);
                        byte[] bArr = new byte[i13 * ToolkitKt.paddedSize(i12)];
                        nativeColorMatrix(nativeHandle, inputArray, i9, i10, i11, bArr, i12, matrix, addVector, range2d);
                        return bArr;
                    }
                    throw new IllegalArgumentException(("RenderScript Toolkit colorMatrix. addVector should have 4 entries. " + addVector.length + " provided.").toString());
                }
                throw new IllegalArgumentException(("RenderScript Toolkit colorMatrix. matrix should have 16 entries. " + matrix.length + " provided.").toString());
            }
            throw new IllegalArgumentException(("RenderScript Toolkit colorMatrix. inputArray is too small for the given dimensions. " + i10 + '*' + i11 + '*' + i9 + " < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit colorMatrix. The outputVectorSize should be between 1 and 4. " + i12 + " provided.").toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap convolve(@NotNull Bitmap bitmap, @NotNull float[] fArr) {
        return convolve$default(this, bitmap, fArr, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] convolve(@NotNull byte[] bArr, int i9, int i10, int i11, @NotNull float[] fArr) {
        return convolve$default(this, bArr, i9, i10, i11, fArr, null, 32, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] convolve(@NotNull byte[] inputArray, int i9, int i10, int i11, @NotNull float[] coefficients, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        Intrinsics.checkNotNullParameter(coefficients, "coefficients");
        boolean z10 = false;
        if (1 <= i9 && 4 >= i9) {
            if (inputArray.length >= (i10 * i11) * i9) {
                if ((coefficients.length == 9 || coefficients.length == 25) ? true : true) {
                    ToolkitKt.validateRestriction("convolve", i10, i11, range2d);
                    byte[] bArr = new byte[inputArray.length];
                    nativeConvolve(nativeHandle, inputArray, i9, i10, i11, bArr, coefficients, range2d);
                    return bArr;
                }
                throw new IllegalArgumentException(("RenderScript Toolkit convolve. Only 3x3 or 5x5 convolutions are supported. " + coefficients.length + " coefficients provided.").toString());
            }
            throw new IllegalArgumentException(("RenderScript Toolkit convolve. inputArray is too small for the given dimensions. " + i10 + '*' + i11 + '*' + i9 + " < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit convolve. The vectorSize should be between 1 and 4. " + i9 + " provided.").toString());
    }

    @NotNull
    public final float[] getGreyScaleColorMatrix() {
        return new float[]{0.299f, 0.299f, 0.299f, 0.0f, 0.587f, 0.587f, 0.587f, 0.0f, 0.114f, 0.114f, 0.114f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    @NotNull
    public final float[] getIdentityMatrix() {
        return new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    @NotNull
    public final float[] getRgbToYuvMatrix() {
        return new float[]{0.299f, -0.14713f, 0.615f, 0.0f, 0.587f, -0.28886f, -0.51499f, 0.0f, 0.114f, 0.436f, -0.10001f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    @NotNull
    public final float[] getYuvToRgbMatrix() {
        return new float[]{1.0f, 1.0f, 1.0f, 0.0f, 0.0f, -0.39465f, 2.03211f, 0.0f, 1.13983f, -0.5806f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f};
    }

    @JvmOverloads
    @NotNull
    public final int[] histogram(@NotNull Bitmap bitmap) {
        return histogram$default(this, bitmap, null, 2, null);
    }

    @JvmOverloads
    @NotNull
    public final int[] histogram(@NotNull byte[] bArr, int i9, int i10, int i11) {
        return histogram$default(this, bArr, i9, i10, i11, null, 16, null);
    }

    @JvmOverloads
    @NotNull
    public final int[] histogram(@NotNull byte[] inputArray, int i9, int i10, int i11, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        if (1 <= i9 && 4 >= i9) {
            if (inputArray.length >= (i10 * i11) * i9) {
                ToolkitKt.validateRestriction("histogram", i10, i11, range2d);
                int[] iArr = new int[ToolkitKt.paddedSize(i9) * 256];
                nativeHistogram(nativeHandle, inputArray, i9, i10, i11, iArr, range2d);
                return iArr;
            }
            throw new IllegalArgumentException(("RenderScript Toolkit histogram. inputArray is too small for the given dimensions. " + i10 + '*' + i11 + '*' + i9 + " < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit histogram. The vectorSize should be between 1 and 4. " + i9 + " provided.").toString());
    }

    @JvmOverloads
    @NotNull
    public final int[] histogramDot(@NotNull Bitmap bitmap) {
        return histogramDot$default(this, bitmap, null, null, 6, null);
    }

    @JvmOverloads
    @NotNull
    public final int[] histogramDot(@NotNull Bitmap bitmap, @Nullable float[] fArr) {
        return histogramDot$default(this, bitmap, fArr, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final int[] histogramDot(@NotNull byte[] bArr, int i9, int i10, int i11) {
        return histogramDot$default(this, bArr, i9, i10, i11, null, null, 48, null);
    }

    @JvmOverloads
    @NotNull
    public final int[] histogramDot(@NotNull byte[] bArr, int i9, int i10, int i11, @Nullable float[] fArr) {
        return histogramDot$default(this, bArr, i9, i10, i11, fArr, null, 32, null);
    }

    @JvmOverloads
    @NotNull
    public final int[] histogramDot(@NotNull byte[] inputArray, int i9, int i10, int i11, @Nullable float[] fArr, @Nullable Range2d range2d) {
        float[] fArr2 = fArr;
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        if (1 <= i9 && 4 >= i9) {
            if (inputArray.length >= (i10 * i11) * i9) {
                ToolkitKt.validateHistogramDotCoefficients(fArr2, i9);
                ToolkitKt.validateRestriction("histogramDot", i10, i11, range2d);
                int[] iArr = new int[256];
                if (fArr2 == null) {
                    fArr2 = new float[]{0.299f, 0.587f, 0.114f, 0.0f};
                }
                nativeHistogramDot(nativeHandle, inputArray, i9, i10, i11, iArr, fArr2, range2d);
                return iArr;
            }
            throw new IllegalArgumentException(("RenderScript Toolkit histogramDot. inputArray is too small for the given dimensions. " + i10 + '*' + i11 + '*' + i9 + " < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit histogramDot. The vectorSize should be between 1 and 4. " + i9 + " provided.").toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap lut(@NotNull Bitmap bitmap, @NotNull LookupTable lookupTable) {
        return lut$default(this, bitmap, lookupTable, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] lut(@NotNull byte[] bArr, int i9, int i10, @NotNull LookupTable lookupTable) {
        return lut$default(this, bArr, i9, i10, lookupTable, null, 16, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] lut(@NotNull byte[] inputArray, int i9, int i10, @NotNull LookupTable table, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        Intrinsics.checkNotNullParameter(table, "table");
        if (inputArray.length >= (i9 * i10) * 4) {
            ToolkitKt.validateRestriction("lut", i9, i10, range2d);
            byte[] bArr = new byte[inputArray.length];
            nativeLut(nativeHandle, inputArray, bArr, i9, i10, table.getRed(), table.getGreen(), table.getBlue(), table.getAlpha(), range2d);
            return bArr;
        }
        throw new IllegalArgumentException(("RenderScript Toolkit lut. inputArray is too small for the given dimensions. " + i9 + '*' + i10 + "*4 < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap lut3d(@NotNull Bitmap bitmap, @NotNull Rgba3dArray rgba3dArray) {
        return lut3d$default(this, bitmap, rgba3dArray, null, 4, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] lut3d(@NotNull byte[] bArr, int i9, int i10, @NotNull Rgba3dArray rgba3dArray) {
        return lut3d$default(this, bArr, i9, i10, rgba3dArray, null, 16, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] lut3d(@NotNull byte[] inputArray, int i9, int i10, @NotNull Rgba3dArray cube, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        Intrinsics.checkNotNullParameter(cube, "cube");
        boolean z10 = true;
        if (inputArray.length >= (i9 * i10) * 4) {
            if ((cube.getSizeX() < 2 || cube.getSizeY() < 2 || cube.getSizeZ() < 2 || cube.getSizeX() > 256 || cube.getSizeY() > 256 || cube.getSizeZ() > 256) ? false : false) {
                ToolkitKt.validateRestriction("lut3d", i9, i10, range2d);
                byte[] bArr = new byte[inputArray.length];
                nativeLut3d(nativeHandle, inputArray, bArr, i9, i10, cube.getValues(), cube.getSizeX(), cube.getSizeY(), cube.getSizeZ(), range2d);
                return bArr;
            }
            throw new IllegalArgumentException(("RenderScript Toolkit lut3d. The dimensions of the cube should be between 2 and 256. (" + cube.getSizeX() + ", " + cube.getSizeY() + ", " + cube.getSizeZ() + ") provided.").toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit lut3d. inputArray is too small for the given dimensions. " + i9 + '*' + i10 + "*4 < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap resize(@NotNull Bitmap bitmap, int i9, int i10) {
        return resize$default(this, bitmap, i9, i10, null, 8, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] resize(@NotNull byte[] bArr, int i9, int i10, int i11, int i12, int i13) {
        return resize$default(this, bArr, i9, i10, i11, i12, i13, null, 64, null);
    }

    @JvmOverloads
    @NotNull
    public final byte[] resize(@NotNull byte[] inputArray, int i9, int i10, int i11, int i12, int i13, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        if (1 <= i9 && 4 >= i9) {
            if (inputArray.length >= (i10 * i11) * i9) {
                ToolkitKt.validateRestriction("resize", i12, i13, range2d);
                byte[] bArr = new byte[i12 * i13 * ToolkitKt.paddedSize(i9)];
                nativeResize(nativeHandle, inputArray, i9, i10, i11, bArr, i12, i13, range2d);
                return bArr;
            }
            throw new IllegalArgumentException(("RenderScript Toolkit resize. inputArray is too small for the given dimensions. " + i10 + '*' + i11 + '*' + i9 + " < " + inputArray.length + JwtParser.SEPARATOR_CHAR).toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit resize. The vectorSize should be between 1 and 4. " + i9 + " provided.").toString());
    }

    public final void shutdown() {
        destroyNative(nativeHandle);
        nativeHandle = 0L;
    }

    @NotNull
    public final byte[] yuvToRgb(@NotNull byte[] inputArray, int i9, int i10, @NotNull YuvFormat format) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        Intrinsics.checkNotNullParameter(format, "format");
        if (i9 % 2 == 0 && i10 % 2 == 0) {
            byte[] bArr = new byte[i9 * i10 * 4];
            nativeYuvToRgb(nativeHandle, inputArray, bArr, i9, i10, format.getValue());
            return bArr;
        }
        throw new IllegalArgumentException(("RenderScript Toolkit yuvToRgb. Non-even dimensions are not supported. " + i9 + " and " + i10 + " were provided.").toString());
    }

    @NotNull
    public final Bitmap yuvToRgbBitmap(@NotNull byte[] inputArray, int i9, int i10, @NotNull YuvFormat format) {
        Intrinsics.checkNotNullParameter(inputArray, "inputArray");
        Intrinsics.checkNotNullParameter(format, "format");
        if (i9 % 2 == 0 && i10 % 2 == 0) {
            Bitmap outputBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
            long j10 = nativeHandle;
            Intrinsics.checkNotNullExpressionValue(outputBitmap, "outputBitmap");
            nativeYuvToRgbBitmap(j10, inputArray, i9, i10, outputBitmap, format.getValue());
            return outputBitmap;
        }
        throw new IllegalArgumentException(("RenderScript Toolkit yuvToRgbBitmap. Non-even dimensions are not supported. " + i9 + " and " + i10 + " were provided.").toString());
    }

    public static /* synthetic */ void blend$default(Toolkit toolkit, BlendingMode blendingMode, Bitmap bitmap, Bitmap bitmap2, Range2d range2d, int i9, Object obj) {
        if ((i9 & 8) != 0) {
            range2d = null;
        }
        toolkit.blend(blendingMode, bitmap, bitmap2, range2d);
    }

    public static /* synthetic */ Bitmap blur$default(Toolkit toolkit, Bitmap bitmap, int i9, Range2d range2d, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i9 = 5;
        }
        if ((i10 & 4) != 0) {
            range2d = null;
        }
        return toolkit.blur(bitmap, i9, range2d);
    }

    public static /* synthetic */ Bitmap convolve$default(Toolkit toolkit, Bitmap bitmap, float[] fArr, Range2d range2d, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            range2d = null;
        }
        return toolkit.convolve(bitmap, fArr, range2d);
    }

    public static /* synthetic */ int[] histogram$default(Toolkit toolkit, Bitmap bitmap, Range2d range2d, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            range2d = null;
        }
        return toolkit.histogram(bitmap, range2d);
    }

    public static /* synthetic */ int[] histogramDot$default(Toolkit toolkit, Bitmap bitmap, float[] fArr, Range2d range2d, int i9, Object obj) {
        if ((i9 & 2) != 0) {
            fArr = null;
        }
        if ((i9 & 4) != 0) {
            range2d = null;
        }
        return toolkit.histogramDot(bitmap, fArr, range2d);
    }

    public static /* synthetic */ Bitmap lut$default(Toolkit toolkit, Bitmap bitmap, LookupTable lookupTable, Range2d range2d, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            range2d = null;
        }
        return toolkit.lut(bitmap, lookupTable, range2d);
    }

    public static /* synthetic */ Bitmap lut3d$default(Toolkit toolkit, Bitmap bitmap, Rgba3dArray rgba3dArray, Range2d range2d, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            range2d = null;
        }
        return toolkit.lut3d(bitmap, rgba3dArray, range2d);
    }

    public static /* synthetic */ Bitmap resize$default(Toolkit toolkit, Bitmap bitmap, int i9, int i10, Range2d range2d, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            range2d = null;
        }
        return toolkit.resize(bitmap, i9, i10, range2d);
    }

    public static /* synthetic */ Bitmap colorMatrix$default(Toolkit toolkit, Bitmap bitmap, float[] fArr, float[] fArr2, Range2d range2d, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            fArr2 = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        }
        if ((i9 & 8) != 0) {
            range2d = null;
        }
        return toolkit.colorMatrix(bitmap, fArr, fArr2, range2d);
    }

    @JvmOverloads
    public final void blend(@NotNull BlendingMode mode, @NotNull Bitmap sourceBitmap, @NotNull Bitmap destBitmap, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(sourceBitmap, "sourceBitmap");
        Intrinsics.checkNotNullParameter(destBitmap, "destBitmap");
        ToolkitKt.validateBitmap$default("blend", sourceBitmap, false, 4, null);
        ToolkitKt.validateBitmap$default("blend", destBitmap, false, 4, null);
        if (sourceBitmap.getWidth() == destBitmap.getWidth() && sourceBitmap.getHeight() == destBitmap.getHeight()) {
            if (sourceBitmap.getConfig() == destBitmap.getConfig()) {
                ToolkitKt.validateRestriction("blend", sourceBitmap.getWidth(), sourceBitmap.getHeight(), range2d);
                nativeBlendBitmap(nativeHandle, mode.getValue(), sourceBitmap, destBitmap, range2d);
                return;
            }
            throw new IllegalArgumentException(("RenderScript Toolkit blend. Source and destination bitmaps should have the same config. " + sourceBitmap.getConfig() + " and " + destBitmap.getConfig() + " provided.").toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit blend. Source and destination bitmaps should be the same size. " + sourceBitmap.getWidth() + 'x' + sourceBitmap.getHeight() + " and " + destBitmap.getWidth() + 'x' + destBitmap.getHeight() + " provided.").toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap resize(@NotNull Bitmap inputBitmap, int i9, int i10, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        ToolkitKt.validateBitmap$default("resize", inputBitmap, false, 4, null);
        ToolkitKt.validateRestriction("resize", i9, i10, range2d);
        Bitmap outputBitmap = Bitmap.createBitmap(i9, i10, Bitmap.Config.ARGB_8888);
        long j10 = nativeHandle;
        Intrinsics.checkNotNullExpressionValue(outputBitmap, "outputBitmap");
        nativeResizeBitmap(j10, inputBitmap, outputBitmap, range2d);
        return outputBitmap;
    }

    @JvmOverloads
    @NotNull
    public final int[] histogram(@NotNull Bitmap inputBitmap, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        ToolkitKt.validateBitmap$default("histogram", inputBitmap, false, 4, null);
        ToolkitKt.validateRestriction("histogram", inputBitmap, range2d);
        int[] iArr = new int[ToolkitKt.vectorSize(inputBitmap) * 256];
        nativeHistogramBitmap(nativeHandle, inputBitmap, iArr, range2d);
        return iArr;
    }

    @JvmOverloads
    @NotNull
    public final Bitmap blur(@NotNull Bitmap inputBitmap, int i9, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        boolean z10 = false;
        ToolkitKt.validateBitmap$default("blur", inputBitmap, false, 4, null);
        if (1 <= i9 && 25 >= i9) {
            z10 = true;
        }
        if (z10) {
            ToolkitKt.validateRestriction("blur", inputBitmap.getWidth(), inputBitmap.getHeight(), range2d);
            Bitmap outputBitmap = ToolkitKt.createCompatibleBitmap(inputBitmap);
            long j10 = nativeHandle;
            Intrinsics.checkNotNullExpressionValue(outputBitmap, "outputBitmap");
            nativeBlurBitmap(j10, inputBitmap, outputBitmap, i9, range2d);
            return outputBitmap;
        }
        throw new IllegalArgumentException(("RenderScript Toolkit blur. The radius should be between 1 and 25. " + i9 + " provided.").toString());
    }

    @JvmOverloads
    @NotNull
    public final int[] histogramDot(@NotNull Bitmap inputBitmap, @Nullable float[] fArr, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        ToolkitKt.validateBitmap$default("histogramDot", inputBitmap, false, 4, null);
        ToolkitKt.validateHistogramDotCoefficients(fArr, ToolkitKt.vectorSize(inputBitmap));
        ToolkitKt.validateRestriction("histogramDot", inputBitmap, range2d);
        int[] iArr = new int[256];
        if (fArr == null) {
            fArr = new float[]{0.299f, 0.587f, 0.114f, 0.0f};
        }
        nativeHistogramDotBitmap(nativeHandle, inputBitmap, iArr, fArr, range2d);
        return iArr;
    }

    @JvmOverloads
    @NotNull
    public final Bitmap lut(@NotNull Bitmap inputBitmap, @NotNull LookupTable table, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        Intrinsics.checkNotNullParameter(table, "table");
        ToolkitKt.validateBitmap$default("lut", inputBitmap, false, 4, null);
        ToolkitKt.validateRestriction("lut", inputBitmap, range2d);
        Bitmap outputBitmap = ToolkitKt.createCompatibleBitmap(inputBitmap);
        long j10 = nativeHandle;
        Intrinsics.checkNotNullExpressionValue(outputBitmap, "outputBitmap");
        nativeLutBitmap(j10, inputBitmap, outputBitmap, table.getRed(), table.getGreen(), table.getBlue(), table.getAlpha(), range2d);
        return outputBitmap;
    }

    @JvmOverloads
    @NotNull
    public final Bitmap lut3d(@NotNull Bitmap inputBitmap, @NotNull Rgba3dArray cube, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        Intrinsics.checkNotNullParameter(cube, "cube");
        ToolkitKt.validateBitmap$default("lut3d", inputBitmap, false, 4, null);
        ToolkitKt.validateRestriction("lut3d", inputBitmap, range2d);
        Bitmap outputBitmap = ToolkitKt.createCompatibleBitmap(inputBitmap);
        long j10 = nativeHandle;
        Intrinsics.checkNotNullExpressionValue(outputBitmap, "outputBitmap");
        nativeLut3dBitmap(j10, inputBitmap, outputBitmap, cube.getValues(), cube.getSizeX(), cube.getSizeY(), cube.getSizeZ(), range2d);
        return outputBitmap;
    }

    @JvmOverloads
    @NotNull
    public final Bitmap convolve(@NotNull Bitmap inputBitmap, @NotNull float[] coefficients, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        Intrinsics.checkNotNullParameter(coefficients, "coefficients");
        boolean z10 = false;
        ToolkitKt.validateBitmap$default("convolve", inputBitmap, false, 4, null);
        if ((coefficients.length == 9 || coefficients.length == 25) ? true : true) {
            ToolkitKt.validateRestriction("convolve", inputBitmap, range2d);
            Bitmap outputBitmap = ToolkitKt.createCompatibleBitmap(inputBitmap);
            long j10 = nativeHandle;
            Intrinsics.checkNotNullExpressionValue(outputBitmap, "outputBitmap");
            nativeConvolveBitmap(j10, inputBitmap, outputBitmap, coefficients, range2d);
            return outputBitmap;
        }
        throw new IllegalArgumentException(("RenderScript Toolkit convolve. Only 3x3 or 5x5 convolutions are supported. " + coefficients.length + " coefficients provided.").toString());
    }

    @JvmOverloads
    @NotNull
    public final Bitmap colorMatrix(@NotNull Bitmap inputBitmap, @NotNull float[] matrix, @NotNull float[] addVector, @Nullable Range2d range2d) {
        Intrinsics.checkNotNullParameter(inputBitmap, "inputBitmap");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Intrinsics.checkNotNullParameter(addVector, "addVector");
        ToolkitKt.validateBitmap$default("colorMatrix", inputBitmap, false, 4, null);
        if (matrix.length == 16) {
            if (addVector.length == 4) {
                ToolkitKt.validateRestriction("colorMatrix", inputBitmap.getWidth(), inputBitmap.getHeight(), range2d);
                Bitmap outputBitmap = ToolkitKt.createCompatibleBitmap(inputBitmap);
                long j10 = nativeHandle;
                Intrinsics.checkNotNullExpressionValue(outputBitmap, "outputBitmap");
                nativeColorMatrixBitmap(j10, inputBitmap, outputBitmap, matrix, addVector, range2d);
                return outputBitmap;
            }
            throw new IllegalArgumentException("RenderScript Toolkit colorMatrix. addVector should have 4 entries.".toString());
        }
        throw new IllegalArgumentException(("RenderScript Toolkit colorMatrix. matrix should have 16 entries. " + matrix.length + " provided.").toString());
    }
}
