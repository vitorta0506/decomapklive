package com.tencent.liteav.videoproducer2.preprocessor;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.utils.Rotation;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class CustomProcessParams {
    public final GLConstants.PixelBufferType bufferType;
    public final a customProcessType;
    public final GLConstants.PixelFormatType formatType;
    public Rotation frameRotation = Rotation.NORMAL;
    public final int height;
    public final boolean isReadOnly;
    public final int width;

    /* loaded from: classes4.dex */
    enum a {
        UNKNOWN(0),
        BEFORE_BEAUTY(1),
        BEFORE_WATERMARK(2),
        AFTER_WATERMARK(3),
        RENDER(4),
        OUTPUT(5);
        

        /* renamed from: g  reason: collision with root package name */
        private static final a[] f33349g = values();
        int mValue;

        a(int i9) {
            this.mValue = i9;
        }

        public static a a(int i9) {
            a[] aVarArr;
            for (a aVar : f33349g) {
                if (aVar.mValue == i9) {
                    return aVar;
                }
            }
            return UNKNOWN;
        }
    }

    @CalledByNative
    public CustomProcessParams(int i9, int i10, boolean z10, int i11, int i12, int i13) {
        this.width = i9;
        this.height = i10;
        this.isReadOnly = z10;
        this.bufferType = GLConstants.PixelBufferType.a(i11);
        this.formatType = GLConstants.PixelFormatType.a(i12);
        this.customProcessType = a.a(i13);
    }
}
