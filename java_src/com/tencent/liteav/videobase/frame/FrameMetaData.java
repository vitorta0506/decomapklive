package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.util.q;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.utils.Rotation;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class FrameMetaData {
    private final a mCaptureMirror;
    private final q mCaptureRealFrameSize;
    private Rotation mCaptureRotation;
    private final a mEncodeMirror;
    private Rotation mEncodeRotation;
    private final q mEncodeSize;
    private boolean mIsFrontCamera;
    private final a mPreprocessorMirror;
    private Rotation mPreprocessorRotation;
    private GLConstants.GLScaleType mPreprocessorScaleType;
    private final a mRenderMirror;
    private Rotation mRenderRotation;
    private final q mRenderSize;

    @CalledByNative
    public FrameMetaData() {
        Rotation rotation = Rotation.NORMAL;
        this.mCaptureRotation = rotation;
        this.mIsFrontCamera = false;
        this.mPreprocessorRotation = rotation;
        this.mPreprocessorScaleType = GLConstants.GLScaleType.CENTER_CROP;
        this.mRenderRotation = rotation;
        this.mEncodeRotation = rotation;
        this.mCaptureMirror = new a((byte) 0);
        this.mCaptureRealFrameSize = new q();
        this.mPreprocessorMirror = new a((byte) 0);
        this.mRenderMirror = new a((byte) 0);
        this.mRenderSize = new q();
        this.mEncodeMirror = new a((byte) 0);
        this.mEncodeSize = new q();
    }

    public q getCaptureRealSize() {
        return this.mCaptureRealFrameSize;
    }

    @CalledByNative
    public int getCaptureRotation() {
        return this.mCaptureRotation.mValue;
    }

    public Rotation getEncodeRotation() {
        return this.mEncodeRotation;
    }

    public q getEncodeSize() {
        return this.mEncodeSize;
    }

    public Rotation getPreprocessorRotation() {
        return this.mPreprocessorRotation;
    }

    public GLConstants.GLScaleType getPreprocessorScaleType() {
        return this.mPreprocessorScaleType;
    }

    public Rotation getRenderRotation() {
        return this.mRenderRotation;
    }

    public q getRenderSize() {
        return this.mRenderSize;
    }

    @CalledByNative
    public boolean isCaptureMirrorHorizontal() {
        return this.mCaptureMirror.f31822a;
    }

    @CalledByNative
    public boolean isCaptureMirrorVertical() {
        return this.mCaptureMirror.f31823b;
    }

    public boolean isEncodeMirrorHorizontal() {
        return this.mEncodeMirror.f31822a;
    }

    public boolean isEncodeMirrorVertical() {
        return this.mEncodeMirror.f31823b;
    }

    @CalledByNative
    public boolean isFrontCamera() {
        return this.mIsFrontCamera;
    }

    public boolean isPreprocessorMirrorHorizontal() {
        return this.mPreprocessorMirror.f31822a;
    }

    public boolean isPreprocessorMirrorVertical() {
        return this.mPreprocessorMirror.f31823b;
    }

    public boolean isRenderMirrorHorizontal() {
        return this.mRenderMirror.f31822a;
    }

    public boolean isRenderMirrorVertical() {
        return this.mRenderMirror.f31823b;
    }

    @CalledByNative
    public void setCaptureMetaData(boolean z10, boolean z11, int i9, boolean z12, int i10, int i11) {
        a aVar = this.mCaptureMirror;
        aVar.f31822a = z10;
        aVar.f31823b = z11;
        this.mCaptureRotation = Rotation.a(i9);
        this.mIsFrontCamera = z12;
        q qVar = this.mCaptureRealFrameSize;
        qVar.f31029a = i10;
        qVar.f31030b = i11;
    }

    @CalledByNative
    public void setEncodeMetaData(boolean z10, boolean z11, int i9, int i10, int i11) {
        a aVar = this.mEncodeMirror;
        aVar.f31822a = z10;
        aVar.f31823b = z11;
        this.mEncodeRotation = Rotation.a(i9);
        q qVar = this.mEncodeSize;
        qVar.f31029a = i10;
        qVar.f31030b = i11;
    }

    @CalledByNative
    public void setPreprocessorMetaData(boolean z10, boolean z11, int i9, int i10) {
        a aVar = this.mPreprocessorMirror;
        aVar.f31822a = z10;
        aVar.f31823b = z11;
        this.mPreprocessorRotation = Rotation.a(i9);
        this.mPreprocessorScaleType = GLConstants.GLScaleType.a(i10);
    }

    @CalledByNative
    public void setRenderMetaData(boolean z10, boolean z11, int i9, int i10, int i11) {
        a aVar = this.mRenderMirror;
        aVar.f31822a = z10;
        aVar.f31823b = z11;
        this.mRenderRotation = Rotation.a(i9);
        q qVar = this.mRenderSize;
        qVar.f31029a = i10;
        qVar.f31030b = i11;
    }

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f31822a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f31823b;

        private a() {
            this.f31822a = false;
            this.f31823b = false;
        }

        /* synthetic */ a(byte b10) {
            this();
        }
    }
}
