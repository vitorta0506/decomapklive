package com.tencent.liteav.videobase.frame;

import android.graphics.Bitmap;
import android.opengl.EGLContext;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.annotations.CalledByNative;
import com.tencent.liteav.base.annotations.JNINamespace;
import com.tencent.liteav.base.system.LiteavSystemInfo;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.utils.Rotation;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
@JNINamespace("liteav::video")
/* loaded from: classes4.dex */
public class PixelFrame extends k {
    private static final String TAG = "PixelFrame";
    private static final com.tencent.liteav.base.b.a sThrottler = new com.tencent.liteav.base.b.a(TimeUnit.SECONDS.toMillis(1));
    protected ByteBuffer mBuffer;
    protected byte[] mData;
    protected Object mGLContext;
    protected int mHeight;
    private boolean mIsMirrorHorizontal;
    private boolean mIsMirrorVertical;
    private float[] mMatrix;
    protected FrameMetaData mMetaData;
    protected GLConstants.PixelBufferType mPixelBufferType;
    protected GLConstants.PixelFormatType mPixelFormatType;
    private Rotation mRotation;
    protected int mTextureId;
    private long mTimestamp;
    protected int mWidth;

    public PixelFrame() {
        super(null);
        this.mTimestamp = 0L;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mRotation = Rotation.NORMAL;
        this.mIsMirrorHorizontal = false;
        this.mIsMirrorVertical = false;
        this.mMatrix = null;
        this.mData = null;
        this.mBuffer = null;
        this.mTextureId = -1;
        this.mGLContext = null;
    }

    @NonNull
    public static PixelFrame createFromBitmap(@NonNull Bitmap bitmap) {
        int width = (bitmap.getWidth() / 2) * 2;
        int height = (bitmap.getHeight() / 2) * 2;
        if (width != 0 && height != 0 && (bitmap.getWidth() % 2 != 0 || bitmap.getHeight() % 2 != 0)) {
            bitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height);
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(bitmap.getWidth() * 4 * bitmap.getHeight());
        bitmap.copyPixelsToBuffer(allocateDirect);
        allocateDirect.position(0);
        PixelFrame pixelFrame = new PixelFrame();
        pixelFrame.setBuffer(allocateDirect);
        pixelFrame.setWidth(bitmap.getWidth());
        pixelFrame.setHeight(bitmap.getHeight());
        pixelFrame.setPixelBufferType(GLConstants.PixelBufferType.BYTE_BUFFER);
        pixelFrame.setPixelFormatType(GLConstants.PixelFormatType.RGBA);
        return pixelFrame;
    }

    @CalledByNative
    private int getPixelBufferTypeValue() {
        return this.mPixelBufferType.mValue;
    }

    @CalledByNative
    private int getPixelFormatTypeValue() {
        return this.mPixelFormatType.getValue();
    }

    @CalledByNative
    private int getRotationValue() {
        return this.mRotation.mValue;
    }

    public static void releasePixelFrames(Collection<PixelFrame> collection) {
        if (collection == null) {
            return;
        }
        for (PixelFrame pixelFrame : collection) {
            if (pixelFrame != null) {
                pixelFrame.release();
            }
        }
        collection.clear();
    }

    @CalledByNative
    public void copy(PixelFrame pixelFrame) {
        this.mTimestamp = pixelFrame.mTimestamp;
        this.mWidth = pixelFrame.mWidth;
        this.mHeight = pixelFrame.mHeight;
        this.mPixelBufferType = pixelFrame.mPixelBufferType;
        this.mPixelFormatType = pixelFrame.mPixelFormatType;
        this.mRotation = pixelFrame.mRotation;
        this.mIsMirrorHorizontal = pixelFrame.mIsMirrorHorizontal;
        this.mIsMirrorVertical = pixelFrame.mIsMirrorVertical;
        if (pixelFrame.mMatrix != null) {
            this.mMatrix = new float[16];
            float[] matrix = pixelFrame.getMatrix();
            float[] fArr = this.mMatrix;
            System.arraycopy(matrix, 0, fArr, 0, fArr.length);
        }
        this.mMatrix = pixelFrame.mMatrix;
        this.mData = pixelFrame.mData;
        this.mBuffer = pixelFrame.mBuffer;
        this.mTextureId = pixelFrame.mTextureId;
        this.mGLContext = pixelFrame.mGLContext;
        this.mMetaData = pixelFrame.mMetaData;
    }

    @CalledByNative
    public ByteBuffer getBuffer() {
        return this.mBuffer;
    }

    @CalledByNative
    public byte[] getData() {
        return this.mData;
    }

    public Object getGLContext() {
        return this.mGLContext;
    }

    @CalledByNative
    public long getGLContextNativeHandle() {
        if (LiteavSystemInfo.getSystemOSVersionInt() >= 17 && (this.mGLContext instanceof EGLContext)) {
            if (LiteavSystemInfo.getSystemOSVersionInt() >= 21) {
                return ((EGLContext) this.mGLContext).getNativeHandle();
            }
            return ((EGLContext) this.mGLContext).getHandle();
        } else if (this.mGLContext instanceof javax.microedition.khronos.egl.EGLContext) {
            LiteavLog.e(sThrottler, TAG, "should not reach here when using EGL10.", new Object[0]);
            return 0L;
        } else {
            return 0L;
        }
    }

    @CalledByNative
    public int getHeight() {
        return this.mHeight;
    }

    public float[] getMatrix() {
        return this.mMatrix;
    }

    @CalledByNative
    public FrameMetaData getMetaData() {
        return this.mMetaData;
    }

    public GLConstants.PixelBufferType getPixelBufferType() {
        return this.mPixelBufferType;
    }

    public GLConstants.PixelFormatType getPixelFormatType() {
        return this.mPixelFormatType;
    }

    public Rotation getRotation() {
        return this.mRotation;
    }

    @CalledByNative
    public int getTextureId() {
        return this.mTextureId;
    }

    @CalledByNative
    public long getTimestamp() {
        return this.mTimestamp;
    }

    @CalledByNative
    public int getWidth() {
        return this.mWidth;
    }

    public boolean hasTransformParams() {
        return this.mRotation != Rotation.NORMAL || this.mIsMirrorHorizontal || this.mIsMirrorVertical || this.mMatrix != null;
    }

    public boolean isFrameDataValid() {
        GLConstants.PixelBufferType pixelBufferType = this.mPixelBufferType;
        if (pixelBufferType == GLConstants.PixelBufferType.TEXTURE_2D && this.mTextureId == -1) {
            return false;
        }
        if (pixelBufferType == GLConstants.PixelBufferType.BYTE_BUFFER && this.mBuffer == null) {
            return false;
        }
        return (pixelBufferType == GLConstants.PixelBufferType.BYTE_ARRAY && this.mData == null) ? false : true;
    }

    public boolean isMirrorHorizontal() {
        return this.mIsMirrorHorizontal;
    }

    public boolean isMirrorVertical() {
        return this.mIsMirrorVertical;
    }

    public void postRotate(Rotation rotation) {
        if (rotation == Rotation.ROTATION_90 || rotation == Rotation.ROTATION_270) {
            swapWidthHeight();
        }
        setRotation(Rotation.a((this.mRotation.mValue + rotation.mValue) % 360));
    }

    @Override // com.tencent.liteav.videobase.frame.k
    @CalledByNative
    public void release() {
        super.release();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void reset() {
        this.mTimestamp = 0L;
        this.mRotation = Rotation.NORMAL;
        this.mIsMirrorHorizontal = false;
        this.mIsMirrorVertical = false;
        this.mMatrix = null;
        this.mTextureId = -1;
        this.mGLContext = null;
        this.mMetaData = null;
    }

    @Override // com.tencent.liteav.videobase.frame.k
    @CalledByNative
    public int retain() {
        return super.retain();
    }

    public void setBuffer(ByteBuffer byteBuffer) {
        this.mBuffer = byteBuffer;
    }

    public void setData(byte[] bArr) {
        this.mData = bArr;
    }

    @CalledByNative
    public void setGLContext(Object obj) {
        this.mGLContext = obj;
    }

    public void setHeight(int i9) {
        this.mHeight = i9;
    }

    public void setMatrix(float[] fArr) {
        this.mMatrix = fArr;
    }

    @CalledByNative
    public void setMetaData(FrameMetaData frameMetaData) {
        this.mMetaData = frameMetaData;
    }

    public void setMirrorHorizontal(boolean z10) {
        this.mIsMirrorHorizontal = z10;
    }

    public void setMirrorVertical(boolean z10) {
        this.mIsMirrorVertical = z10;
    }

    public void setPixelBufferType(GLConstants.PixelBufferType pixelBufferType) {
        this.mPixelBufferType = pixelBufferType;
    }

    public void setPixelFormatType(GLConstants.PixelFormatType pixelFormatType) {
        this.mPixelFormatType = pixelFormatType;
    }

    public void setRotation(Rotation rotation) {
        this.mRotation = rotation;
    }

    @CalledByNative
    public void setTextureId(int i9) {
        this.mTextureId = i9;
    }

    @CalledByNative
    public void setTimestamp(long j10) {
        this.mTimestamp = j10;
    }

    public void setWidth(int i9) {
        this.mWidth = i9;
    }

    public void swapWidthHeight() {
        int i9 = this.mWidth;
        this.mWidth = this.mHeight;
        this.mHeight = i9;
    }

    public PixelFrame(PixelFrame pixelFrame) {
        super(null);
        this.mTimestamp = 0L;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mRotation = Rotation.NORMAL;
        this.mIsMirrorHorizontal = false;
        this.mIsMirrorVertical = false;
        this.mMatrix = null;
        this.mData = null;
        this.mBuffer = null;
        this.mTextureId = -1;
        this.mGLContext = null;
        copy(pixelFrame);
    }

    @CalledByNative
    public PixelFrame(int i9, int i10, int i11, int i12, int i13) {
        this(null, i9, i10, i11, GLConstants.PixelBufferType.a(i12), GLConstants.PixelFormatType.a(i13));
    }

    public PixelFrame(g<PixelFrame> gVar, int i9, int i10, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType) {
        this(gVar, i9, i10, pixelFormatType == GLConstants.PixelFormatType.RGBA ? i9 * i10 * 4 : ((i9 * i10) * 3) / 2, pixelBufferType, pixelFormatType);
    }

    public PixelFrame(g<PixelFrame> gVar, int i9, int i10, int i11, GLConstants.PixelBufferType pixelBufferType, GLConstants.PixelFormatType pixelFormatType) {
        super(gVar);
        this.mTimestamp = 0L;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mRotation = Rotation.NORMAL;
        this.mIsMirrorHorizontal = false;
        this.mIsMirrorVertical = false;
        this.mMatrix = null;
        this.mData = null;
        this.mBuffer = null;
        this.mTextureId = -1;
        this.mGLContext = null;
        this.mWidth = i9;
        this.mHeight = i10;
        this.mPixelFormatType = pixelFormatType;
        this.mPixelBufferType = pixelBufferType;
        if (pixelBufferType == GLConstants.PixelBufferType.BYTE_ARRAY) {
            this.mData = new byte[i11];
        } else {
            this.mBuffer = ByteBuffer.allocateDirect(i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PixelFrame(g<? extends PixelFrame> gVar) {
        super(gVar);
        this.mTimestamp = 0L;
        this.mWidth = -1;
        this.mHeight = -1;
        this.mRotation = Rotation.NORMAL;
        this.mIsMirrorHorizontal = false;
        this.mIsMirrorVertical = false;
        this.mMatrix = null;
        this.mData = null;
        this.mBuffer = null;
        this.mTextureId = -1;
        this.mGLContext = null;
    }
}
