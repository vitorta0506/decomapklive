package androidx.renderscript;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.Surface;
import androidx.renderscript.Element;
import androidx.renderscript.Type;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes.dex */
public class Allocation extends BaseObj {
    public static final int USAGE_GRAPHICS_TEXTURE = 2;
    public static final int USAGE_IO_INPUT = 32;
    public static final int USAGE_IO_OUTPUT = 64;
    public static final int USAGE_SCRIPT = 1;
    public static final int USAGE_SHARED = 128;
    static BitmapFactory.Options mBitmapOptions;
    Allocation mAdaptedAllocation;
    boolean mAutoPadding;
    Bitmap mBitmap;
    ByteBuffer mByteBuffer;
    long mByteBufferStride;
    boolean mConstrainedFace;
    boolean mConstrainedLOD;
    boolean mConstrainedY;
    boolean mConstrainedZ;
    int mCurrentCount;
    int mCurrentDimX;
    int mCurrentDimY;
    int mCurrentDimZ;
    boolean mIncAllocDestroyed;
    long mIncCompatAllocation;
    boolean mReadAllowed;
    Type.CubemapFace mSelectedFace;
    int mSelectedLOD;
    int mSelectedY;
    int mSelectedZ;
    int mSize;
    Type mType;
    int mUsage;
    boolean mWriteAllowed;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.renderscript.Allocation$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum MipmapControl {
        MIPMAP_NONE(0),
        MIPMAP_FULL(1),
        MIPMAP_ON_SYNC_TO_TEXTURE(2);
        
        int mID;

        MipmapControl(int i9) {
            this.mID = i9;
        }
    }

    static {
        BitmapFactory.Options options = new BitmapFactory.Options();
        mBitmapOptions = options;
        options.inScaled = false;
    }

    Allocation(long j10, RenderScript renderScript, Type type, int i9) {
        super(j10, renderScript);
        this.mByteBuffer = null;
        this.mByteBufferStride = 0L;
        this.mReadAllowed = true;
        this.mWriteAllowed = true;
        this.mAutoPadding = false;
        this.mSelectedFace = Type.CubemapFace.POSITIVE_X;
        if ((i9 & (-228)) == 0) {
            if ((i9 & 32) != 0) {
                this.mWriteAllowed = false;
                if ((i9 & (-36)) != 0) {
                    throw new RSIllegalArgumentException("Invalid usage combination.");
                }
            }
            this.mType = type;
            this.mUsage = i9;
            this.mIncCompatAllocation = 0L;
            this.mIncAllocDestroyed = false;
            if (type != null) {
                this.mSize = type.getCount() * this.mType.getElement().getBytesSize();
                updateCacheInfo(type);
            }
            if (RenderScript.sUseGCHooks) {
                try {
                    RenderScript.registerNativeAllocation.invoke(RenderScript.sRuntime, Integer.valueOf(this.mSize));
                    return;
                } catch (Exception e10) {
                    Log.e("RenderScript_jni", "Couldn't invoke registerNativeAllocation:" + e10);
                    throw new RSRuntimeException("Couldn't invoke registerNativeAllocation:" + e10);
                }
            }
            return;
        }
        throw new RSIllegalArgumentException("Unknown usage specified.");
    }

    private void copy1DRangeFromUnchecked(int i9, int i10, Object obj, Element.DataType dataType, int i11) {
        Element.DataType dataType2;
        boolean z10;
        int bytesSize = this.mType.mElement.getBytesSize() * i10;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            dataType2 = dataType;
            z10 = true;
        } else {
            dataType2 = dataType;
            z10 = false;
        }
        data1DChecks(i9, i10, i11 * dataType2.mSize, bytesSize, z10);
        this.mRS.nAllocationData1D(getIDSafe(), i9, this.mSelectedLOD, i10, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z10);
    }

    private void copy1DRangeToUnchecked(int i9, int i10, Object obj, Element.DataType dataType, int i11) {
        Element.DataType dataType2;
        boolean z10;
        int bytesSize = this.mType.mElement.getBytesSize() * i10;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            dataType2 = dataType;
            z10 = true;
        } else {
            dataType2 = dataType;
            z10 = false;
        }
        data1DChecks(i9, i10, i11 * dataType2.mSize, bytesSize, z10);
        this.mRS.nAllocationRead1D(getIDSafe(), i9, this.mSelectedLOD, i10, obj, bytesSize, dataType, this.mType.mElement.mType.mSize, z10);
    }

    private void copy3DRangeFromUnchecked(int i9, int i10, int i11, int i12, int i13, int i14, Object obj, Element.DataType dataType, int i15) {
        int i16;
        boolean z10;
        this.mRS.validate();
        validate3DRange(i9, i10, i11, i12, i13, i14);
        int bytesSize = this.mType.mElement.getBytesSize() * i12 * i13 * i14;
        int i17 = dataType.mSize * i15;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            if ((bytesSize / 4) * 3 > i17) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            i16 = bytesSize;
            z10 = true;
        } else if (bytesSize > i17) {
            throw new RSIllegalArgumentException("Array too small for allocation type.");
        } else {
            i16 = i17;
            z10 = false;
        }
        this.mRS.nAllocationData3D(getIDSafe(), i9, i10, i11, this.mSelectedLOD, i12, i13, i14, obj, i16, dataType, this.mType.mElement.mType.mSize, z10);
    }

    private void copyFromUnchecked(Object obj, Element.DataType dataType, int i9) {
        this.mRS.validate();
        int i10 = this.mCurrentDimZ;
        if (i10 > 0) {
            copy3DRangeFromUnchecked(0, 0, 0, this.mCurrentDimX, this.mCurrentDimY, i10, obj, dataType, i9);
            return;
        }
        int i11 = this.mCurrentDimY;
        if (i11 > 0) {
            copy2DRangeFromUnchecked(0, 0, this.mCurrentDimX, i11, obj, dataType, i9);
        } else {
            copy1DRangeFromUnchecked(0, this.mCurrentCount, obj, dataType, i9);
        }
    }

    public static Allocation createCubemapFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl, int i9) {
        renderScript.validate();
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        if (width % 6 == 0) {
            if (width / 6 == height) {
                if (((height + (-1)) & height) == 0) {
                    Element elementFromBitmap = elementFromBitmap(renderScript, bitmap);
                    Type.Builder builder = new Type.Builder(renderScript, elementFromBitmap);
                    builder.setX(height);
                    builder.setY(height);
                    builder.setFaces(true);
                    builder.setMipmaps(mipmapControl == MipmapControl.MIPMAP_FULL);
                    Type create = builder.create();
                    long nAllocationCubeCreateFromBitmap = renderScript.nAllocationCubeCreateFromBitmap(create.getID(renderScript), mipmapControl.mID, bitmap, i9);
                    if (nAllocationCubeCreateFromBitmap != 0) {
                        return new Allocation(nAllocationCubeCreateFromBitmap, renderScript, create, i9);
                    }
                    throw new RSRuntimeException("Load failed for bitmap " + bitmap + " element " + elementFromBitmap);
                }
                throw new RSIllegalArgumentException("Only power of 2 cube faces supported");
            }
            throw new RSIllegalArgumentException("Only square cube map faces supported");
        }
        throw new RSIllegalArgumentException("Cubemap height must be multiple of 6");
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript renderScript, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6) {
        return createCubemapFromCubeFaces(renderScript, bitmap, bitmap2, bitmap3, bitmap4, bitmap5, bitmap6, MipmapControl.MIPMAP_NONE, 2);
    }

    public static Allocation createCubemapFromCubeFaces(RenderScript renderScript, Bitmap bitmap, Bitmap bitmap2, Bitmap bitmap3, Bitmap bitmap4, Bitmap bitmap5, Bitmap bitmap6, MipmapControl mipmapControl, int i9) {
        return null;
    }

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl, int i9) {
        renderScript.validate();
        if (bitmap.getConfig() == null) {
            if ((i9 & 128) == 0) {
                Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
                new Canvas(createBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                return createFromBitmap(renderScript, createBitmap, mipmapControl, i9);
            }
            throw new RSIllegalArgumentException("USAGE_SHARED cannot be used with a Bitmap that has a null config.");
        }
        Type typeFromBitmap = typeFromBitmap(renderScript, bitmap, mipmapControl);
        if (mipmapControl == MipmapControl.MIPMAP_NONE && typeFromBitmap.getElement().isCompatible(Element.RGBA_8888(renderScript)) && i9 == 131) {
            long nAllocationCreateBitmapBackedAllocation = renderScript.nAllocationCreateBitmapBackedAllocation(typeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i9);
            if (nAllocationCreateBitmapBackedAllocation != 0) {
                Allocation allocation = new Allocation(nAllocationCreateBitmapBackedAllocation, renderScript, typeFromBitmap, i9);
                allocation.setBitmap(bitmap);
                return allocation;
            }
            throw new RSRuntimeException("Load failed.");
        }
        long nAllocationCreateFromBitmap = renderScript.nAllocationCreateFromBitmap(typeFromBitmap.getID(renderScript), mipmapControl.mID, bitmap, i9);
        if (nAllocationCreateFromBitmap != 0) {
            return new Allocation(nAllocationCreateFromBitmap, renderScript, typeFromBitmap, i9);
        }
        throw new RSRuntimeException("Load failed.");
    }

    public static Allocation createFromBitmapResource(RenderScript renderScript, Resources resources, int i9, MipmapControl mipmapControl, int i10) {
        renderScript.validate();
        if ((i10 & 224) == 0) {
            Bitmap decodeResource = BitmapFactory.decodeResource(resources, i9);
            Allocation createFromBitmap = createFromBitmap(renderScript, decodeResource, mipmapControl, i10);
            decodeResource.recycle();
            return createFromBitmap;
        }
        throw new RSIllegalArgumentException("Unsupported usage specified.");
    }

    public static Allocation createFromString(RenderScript renderScript, String str, int i9) {
        renderScript.validate();
        try {
            byte[] bytes = str.getBytes("UTF-8");
            Allocation createSized = createSized(renderScript, Element.U8(renderScript), bytes.length, i9);
            createSized.copyFrom(bytes);
            return createSized;
        } catch (Exception unused) {
            throw new RSRuntimeException("Could not convert string to utf-8.");
        }
    }

    public static Allocation createSized(RenderScript renderScript, Element element, int i9, int i10) {
        renderScript.validate();
        Type.Builder builder = new Type.Builder(renderScript, element);
        builder.setX(i9);
        Type create = builder.create();
        long nAllocationCreateTyped = renderScript.nAllocationCreateTyped(create.getID(renderScript), MipmapControl.MIPMAP_NONE.mID, i10, 0L);
        if (nAllocationCreateTyped != 0) {
            return new Allocation(nAllocationCreateTyped, renderScript, create, i10);
        }
        throw new RSRuntimeException("Allocation creation failed.");
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, MipmapControl mipmapControl, int i9) {
        renderScript.validate();
        if (type.getID(renderScript) != 0) {
            if (!renderScript.usingIO() && (i9 & 32) != 0) {
                throw new RSRuntimeException("USAGE_IO not supported, Allocation creation failed.");
            }
            long nAllocationCreateTyped = renderScript.nAllocationCreateTyped(type.getID(renderScript), mipmapControl.mID, i9, 0L);
            if (nAllocationCreateTyped != 0) {
                return new Allocation(nAllocationCreateTyped, renderScript, type, i9);
            }
            throw new RSRuntimeException("Allocation creation failed.");
        }
        throw new RSInvalidStateException("Bad Type");
    }

    private void data1DChecks(int i9, int i10, int i11, int i12, boolean z10) {
        this.mRS.validate();
        if (i9 < 0) {
            throw new RSIllegalArgumentException("Offset must be >= 0.");
        }
        if (i10 >= 1) {
            if (i9 + i10 <= this.mCurrentCount) {
                if (z10) {
                    if (i11 < (i12 / 4) * 3) {
                        throw new RSIllegalArgumentException("Array too small for allocation type.");
                    }
                    return;
                } else if (i11 < i12) {
                    throw new RSIllegalArgumentException("Array too small for allocation type.");
                } else {
                    return;
                }
            }
            throw new RSIllegalArgumentException("Overflow, Available count " + this.mCurrentCount + ", got " + i10 + " at offset " + i9 + ".");
        }
        throw new RSIllegalArgumentException("Count must be >= 1.");
    }

    static Element elementFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        if (config == Bitmap.Config.ALPHA_8) {
            return Element.A_8(renderScript);
        }
        if (config == Bitmap.Config.ARGB_4444) {
            return Element.RGBA_4444(renderScript);
        }
        if (config == Bitmap.Config.ARGB_8888) {
            return Element.RGBA_8888(renderScript);
        }
        if (config == Bitmap.Config.RGB_565) {
            return Element.RGB_565(renderScript);
        }
        throw new RSInvalidStateException("Bad bitmap type: " + config);
    }

    private long getIDSafe() {
        Allocation allocation = this.mAdaptedAllocation;
        if (allocation != null) {
            return allocation.getID(this.mRS);
        }
        return getID(this.mRS);
    }

    private void setBitmap(Bitmap bitmap) {
        this.mBitmap = bitmap;
    }

    static Type typeFromBitmap(RenderScript renderScript, Bitmap bitmap, MipmapControl mipmapControl) {
        Type.Builder builder = new Type.Builder(renderScript, elementFromBitmap(renderScript, bitmap));
        builder.setX(bitmap.getWidth());
        builder.setY(bitmap.getHeight());
        builder.setMipmaps(mipmapControl == MipmapControl.MIPMAP_FULL);
        return builder.create();
    }

    private void updateCacheInfo(Type type) {
        this.mCurrentDimX = type.getX();
        this.mCurrentDimY = type.getY();
        int z10 = type.getZ();
        this.mCurrentDimZ = z10;
        int i9 = this.mCurrentDimX;
        this.mCurrentCount = i9;
        int i10 = this.mCurrentDimY;
        if (i10 > 1) {
            this.mCurrentCount = i9 * i10;
        }
        if (z10 > 1) {
            this.mCurrentCount *= z10;
        }
    }

    private void validate2DRange(int i9, int i10, int i11, int i12) {
        if (this.mAdaptedAllocation != null) {
            return;
        }
        if (i9 < 0 || i10 < 0) {
            throw new RSIllegalArgumentException("Offset cannot be negative.");
        }
        if (i12 >= 0 && i11 >= 0) {
            if (i9 + i11 > this.mCurrentDimX || i10 + i12 > this.mCurrentDimY) {
                throw new RSIllegalArgumentException("Updated region larger than allocation.");
            }
            return;
        }
        throw new RSIllegalArgumentException("Height or width cannot be negative.");
    }

    private void validate3DRange(int i9, int i10, int i11, int i12, int i13, int i14) {
        if (this.mAdaptedAllocation != null) {
            return;
        }
        if (i9 < 0 || i10 < 0 || i11 < 0) {
            throw new RSIllegalArgumentException("Offset cannot be negative.");
        }
        if (i13 >= 0 && i12 >= 0 && i14 >= 0) {
            if (i9 + i12 > this.mCurrentDimX || i10 + i13 > this.mCurrentDimY || i11 + i14 > this.mCurrentDimZ) {
                throw new RSIllegalArgumentException("Updated region larger than allocation.");
            }
            return;
        }
        throw new RSIllegalArgumentException("Height or width cannot be negative.");
    }

    private void validateBitmapFormat(Bitmap bitmap) {
        Bitmap.Config config = bitmap.getConfig();
        if (config != null) {
            int i9 = AnonymousClass1.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
            if (i9 == 1) {
                if (this.mType.getElement().mKind == Element.DataKind.PIXEL_A) {
                    return;
                }
                throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
            } else if (i9 == 2) {
                if (this.mType.getElement().mKind == Element.DataKind.PIXEL_RGBA && this.mType.getElement().getBytesSize() == 4) {
                    return;
                }
                throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
            } else if (i9 == 3) {
                if (this.mType.getElement().mKind == Element.DataKind.PIXEL_RGB && this.mType.getElement().getBytesSize() == 2) {
                    return;
                }
                throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
            } else if (i9 != 4) {
                return;
            } else {
                if (this.mType.getElement().mKind == Element.DataKind.PIXEL_RGBA && this.mType.getElement().getBytesSize() == 2) {
                    return;
                }
                throw new RSIllegalArgumentException("Allocation kind is " + this.mType.getElement().mKind + ", type " + this.mType.getElement().mType + " of " + this.mType.getElement().getBytesSize() + " bytes, passed bitmap was " + config);
            }
        }
        throw new RSIllegalArgumentException("Bitmap has an unsupported format for this operation");
    }

    private void validateBitmapSize(Bitmap bitmap) {
        if (this.mCurrentDimX != bitmap.getWidth() || this.mCurrentDimY != bitmap.getHeight()) {
            throw new RSIllegalArgumentException("Cannot update allocation from bitmap, sizes mismatch");
        }
    }

    private void validateIsFloat32() {
        if (this.mType.mElement.mType == Element.DataType.FLOAT_32) {
            return;
        }
        throw new RSIllegalArgumentException("32 bit float source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsFloat64() {
        if (this.mType.mElement.mType == Element.DataType.FLOAT_64) {
            return;
        }
        throw new RSIllegalArgumentException("64 bit float source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt16() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_16 || dataType == Element.DataType.UNSIGNED_16) {
            return;
        }
        throw new RSIllegalArgumentException("16 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt32() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_32 || dataType == Element.DataType.UNSIGNED_32) {
            return;
        }
        throw new RSIllegalArgumentException("32 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt64() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_64 || dataType == Element.DataType.UNSIGNED_64) {
            return;
        }
        throw new RSIllegalArgumentException("64 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsInt8() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.SIGNED_8 || dataType == Element.DataType.UNSIGNED_8) {
            return;
        }
        throw new RSIllegalArgumentException("8 bit integer source does not match allocation type " + this.mType.mElement.mType);
    }

    private void validateIsObject() {
        Element.DataType dataType = this.mType.mElement.mType;
        if (dataType == Element.DataType.RS_ELEMENT || dataType == Element.DataType.RS_TYPE || dataType == Element.DataType.RS_ALLOCATION || dataType == Element.DataType.RS_SAMPLER || dataType == Element.DataType.RS_SCRIPT) {
            return;
        }
        throw new RSIllegalArgumentException("Object source does not match allocation type " + this.mType.mElement.mType);
    }

    private Element.DataType validateObjectIsPrimitiveArray(Object obj, boolean z10) {
        Class<?> cls = obj.getClass();
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive()) {
                if (componentType == Long.TYPE) {
                    if (z10) {
                        validateIsInt64();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_64;
                } else if (componentType == Integer.TYPE) {
                    if (z10) {
                        validateIsInt32();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_32;
                } else if (componentType == Short.TYPE) {
                    if (z10) {
                        validateIsInt16();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_16;
                } else if (componentType == Byte.TYPE) {
                    if (z10) {
                        validateIsInt8();
                        return this.mType.mElement.mType;
                    }
                    return Element.DataType.SIGNED_8;
                } else if (componentType == Float.TYPE) {
                    if (z10) {
                        validateIsFloat32();
                    }
                    return Element.DataType.FLOAT_32;
                } else if (componentType == Double.TYPE) {
                    if (z10) {
                        validateIsFloat64();
                    }
                    return Element.DataType.FLOAT_64;
                } else {
                    return null;
                }
            }
            throw new RSIllegalArgumentException("Object passed is not an Array of primitives.");
        }
        throw new RSIllegalArgumentException("Object passed is not an array of primitives.");
    }

    public void copy1DRangeFrom(int i9, int i10, Object obj) {
        copy1DRangeFromUnchecked(i9, i10, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy1DRangeTo(int i9, int i10, Object obj) {
        copy1DRangeToUnchecked(i9, i10, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copy2DRangeFrom(int i9, int i10, int i11, int i12, Object obj) {
        copy2DRangeFromUnchecked(i9, i10, i11, i12, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    void copy2DRangeFromUnchecked(int i9, int i10, int i11, int i12, Object obj, Element.DataType dataType, int i13) {
        int i14;
        boolean z10;
        this.mRS.validate();
        validate2DRange(i9, i10, i11, i12);
        int bytesSize = this.mType.mElement.getBytesSize() * i11 * i12;
        int i15 = dataType.mSize * i13;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            if ((bytesSize / 4) * 3 > i15) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            i14 = bytesSize;
            z10 = true;
        } else if (bytesSize > i15) {
            throw new RSIllegalArgumentException("Array too small for allocation type.");
        } else {
            i14 = i15;
            z10 = false;
        }
        this.mRS.nAllocationData2D(getIDSafe(), i9, i10, this.mSelectedLOD, this.mSelectedFace.mID, i11, i12, obj, i14, dataType, this.mType.mElement.mType.mSize, z10);
    }

    public void copy2DRangeTo(int i9, int i10, int i11, int i12, Object obj) {
        copy2DRangeToUnchecked(i9, i10, i11, i12, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    void copy2DRangeToUnchecked(int i9, int i10, int i11, int i12, Object obj, Element.DataType dataType, int i13) {
        int i14;
        boolean z10;
        this.mRS.validate();
        validate2DRange(i9, i10, i11, i12);
        int bytesSize = this.mType.mElement.getBytesSize() * i11 * i12;
        int i15 = dataType.mSize * i13;
        if (this.mAutoPadding && this.mType.getElement().getVectorSize() == 3) {
            if ((bytesSize / 4) * 3 > i15) {
                throw new RSIllegalArgumentException("Array too small for allocation type.");
            }
            i14 = bytesSize;
            z10 = true;
        } else if (bytesSize > i15) {
            throw new RSIllegalArgumentException("Array too small for allocation type.");
        } else {
            i14 = i15;
            z10 = false;
        }
        this.mRS.nAllocationRead2D(getIDSafe(), i9, i10, this.mSelectedLOD, this.mSelectedFace.mID, i11, i12, obj, i14, dataType, this.mType.mElement.mType.mSize, z10);
    }

    public void copy3DRangeFrom(int i9, int i10, int i11, int i12, int i13, int i14, Object obj) {
        copy3DRangeFromUnchecked(i9, i10, i11, i12, i13, i14, obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copyFrom(BaseObj[] baseObjArr) {
        this.mRS.validate();
        validateIsObject();
        if (baseObjArr.length == this.mCurrentCount) {
            if (RenderScript.sPointerSize == 8) {
                long[] jArr = new long[baseObjArr.length * 4];
                for (int i9 = 0; i9 < baseObjArr.length; i9++) {
                    jArr[i9 * 4] = baseObjArr[i9].getID(this.mRS);
                }
                copy1DRangeFromUnchecked(0, this.mCurrentCount, jArr);
                return;
            }
            int[] iArr = new int[baseObjArr.length];
            for (int i10 = 0; i10 < baseObjArr.length; i10++) {
                iArr[i10] = (int) baseObjArr[i10].getID(this.mRS);
            }
            copy1DRangeFromUnchecked(0, this.mCurrentCount, iArr);
            return;
        }
        throw new RSIllegalArgumentException("Array size mismatch, allocation sizeX = " + this.mCurrentCount + ", array length = " + baseObjArr.length);
    }

    public void copyTo(Bitmap bitmap) {
        this.mRS.validate();
        validateBitmapFormat(bitmap);
        validateBitmapSize(bitmap);
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationCopyToBitmap(getID(renderScript), bitmap);
    }

    @Override // androidx.renderscript.BaseObj
    public void destroy() {
        if (this.mIncCompatAllocation != 0) {
            boolean z10 = false;
            synchronized (this) {
                if (!this.mIncAllocDestroyed) {
                    this.mIncAllocDestroyed = true;
                    z10 = true;
                }
            }
            if (z10) {
                ReentrantReadWriteLock.ReadLock readLock = this.mRS.mRWLock.readLock();
                readLock.lock();
                if (this.mRS.isAlive()) {
                    this.mRS.nIncObjDestroy(this.mIncCompatAllocation);
                }
                readLock.unlock();
                this.mIncCompatAllocation = 0L;
            }
        }
        if ((this.mUsage & 96) != 0) {
            setSurface(null);
        }
        super.destroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.renderscript.BaseObj
    public void finalize() throws Throwable {
        if (RenderScript.sUseGCHooks) {
            RenderScript.registerNativeFree.invoke(RenderScript.sRuntime, Integer.valueOf(this.mSize));
        }
        super.finalize();
    }

    public void generateMipmaps() {
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationGenerateMipmaps(getID(renderScript));
    }

    public ByteBuffer getByteBuffer() {
        byte[] bArr;
        int x10 = this.mType.getX() * this.mType.getElement().getBytesSize();
        if (this.mRS.getDispatchAPILevel() < 21) {
            if (this.mType.getZ() > 0) {
                return null;
            }
            if (this.mType.getY() > 0) {
                bArr = new byte[this.mType.getY() * x10];
                copy2DRangeToUnchecked(0, 0, this.mType.getX(), this.mType.getY(), bArr, Element.DataType.SIGNED_8, x10 * this.mType.getY());
            } else {
                bArr = new byte[x10];
                copy1DRangeToUnchecked(0, this.mType.getX(), bArr);
            }
            ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(bArr).asReadOnlyBuffer();
            this.mByteBufferStride = x10;
            return asReadOnlyBuffer;
        }
        if (this.mByteBuffer == null || (this.mUsage & 32) != 0) {
            RenderScript renderScript = this.mRS;
            this.mByteBuffer = renderScript.nAllocationGetByteBuffer(getID(renderScript), x10, this.mType.getY(), this.mType.getZ());
        }
        return this.mByteBuffer;
    }

    public int getBytesSize() {
        Type type = this.mType;
        if (type.mDimYuv != 0) {
            return (int) Math.ceil(type.getCount() * this.mType.getElement().getBytesSize() * 1.5d);
        }
        return type.getCount() * this.mType.getElement().getBytesSize();
    }

    public Element getElement() {
        return this.mType.getElement();
    }

    public long getIncAllocID() {
        return this.mIncCompatAllocation;
    }

    public long getStride() {
        if (this.mByteBufferStride == 0) {
            if (this.mRS.getDispatchAPILevel() > 21) {
                RenderScript renderScript = this.mRS;
                this.mByteBufferStride = renderScript.nAllocationGetStride(getID(renderScript));
            } else {
                this.mByteBufferStride = this.mType.getX() * this.mType.getElement().getBytesSize();
            }
        }
        return this.mByteBufferStride;
    }

    public Type getType() {
        return this.mType;
    }

    public int getUsage() {
        return this.mUsage;
    }

    public void ioReceive() {
        if ((this.mUsage & 32) != 0) {
            this.mRS.validate();
            RenderScript renderScript = this.mRS;
            renderScript.nAllocationIoReceive(getID(renderScript));
            return;
        }
        throw new RSIllegalArgumentException("Can only receive if IO_INPUT usage specified.");
    }

    public void ioSend() {
        if ((this.mUsage & 64) != 0) {
            this.mRS.validate();
            RenderScript renderScript = this.mRS;
            renderScript.nAllocationIoSend(getID(renderScript));
            return;
        }
        throw new RSIllegalArgumentException("Can only send buffer if IO_OUTPUT usage specified.");
    }

    public void ioSendOutput() {
        ioSend();
    }

    public void setAutoPadding(boolean z10) {
        this.mAutoPadding = z10;
    }

    public void setFromFieldPacker(int i9, FieldPacker fieldPacker) {
        this.mRS.validate();
        int bytesSize = this.mType.mElement.getBytesSize();
        byte[] data = fieldPacker.getData();
        int pos = fieldPacker.getPos();
        int i10 = pos / bytesSize;
        if (bytesSize * i10 == pos) {
            copy1DRangeFromUnchecked(i9, i10, data);
            return;
        }
        throw new RSIllegalArgumentException("Field packer length " + pos + " not divisible by element size " + bytesSize + ".");
    }

    public void setIncAllocID(long j10) {
        this.mIncCompatAllocation = j10;
    }

    public void setSurface(Surface surface) {
        this.mRS.validate();
        if ((this.mUsage & 64) != 0) {
            RenderScript renderScript = this.mRS;
            renderScript.nAllocationSetSurface(getID(renderScript), surface);
            return;
        }
        throw new RSInvalidStateException("Allocation is not USAGE_IO_OUTPUT.");
    }

    public void syncAll(int i9) {
        if (i9 != 1 && i9 != 2) {
            throw new RSIllegalArgumentException("Source must be exactly one usage type.");
        }
        this.mRS.validate();
        this.mRS.nAllocationSyncAll(getIDSafe(), i9);
    }

    public void copy1DRangeFrom(int i9, int i10, int[] iArr) {
        validateIsInt32();
        copy1DRangeFromUnchecked(i9, i10, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy1DRangeTo(int i9, int i10, int[] iArr) {
        validateIsInt32();
        copy1DRangeToUnchecked(i9, i10, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeFrom(int i9, int i10, int i11, int i12, byte[] bArr) {
        validateIsInt8();
        copy2DRangeFromUnchecked(i9, i10, i11, i12, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeTo(int i9, int i10, int i11, int i12, byte[] bArr) {
        validateIsInt8();
        copy2DRangeToUnchecked(i9, i10, i11, i12, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy3DRangeFrom(int i9, int i10, int i11, int i12, int i13, int i14, Allocation allocation, int i15, int i16, int i17) {
        this.mRS.validate();
        validate3DRange(i9, i10, i11, i12, i13, i14);
        this.mRS.nAllocationData3D(getIDSafe(), i9, i10, i11, this.mSelectedLOD, i12, i13, i14, allocation.getID(this.mRS), i15, i16, i17, allocation.mSelectedLOD);
    }

    private void copyTo(Object obj, Element.DataType dataType, int i9) {
        this.mRS.validate();
        boolean z10 = this.mAutoPadding && this.mType.getElement().getVectorSize() == 3;
        if (z10) {
            if (dataType.mSize * i9 < (this.mSize / 4) * 3) {
                throw new RSIllegalArgumentException("Size of output array cannot be smaller than size of allocation.");
            }
        } else if (dataType.mSize * i9 < this.mSize) {
            throw new RSIllegalArgumentException("Size of output array cannot be smaller than size of allocation.");
        }
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationRead(getID(renderScript), obj, dataType, this.mType.mElement.mType.mSize, z10);
    }

    public void copy1DRangeFromUnchecked(int i9, int i10, Object obj) {
        copy1DRangeFromUnchecked(i9, i10, obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public void copy1DRangeToUnchecked(int i9, int i10, Object obj) {
        copy1DRangeToUnchecked(i9, i10, obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public static Allocation createFromBitmapResource(RenderScript renderScript, Resources resources, int i9) {
        return createFromBitmapResource(renderScript, resources, i9, MipmapControl.MIPMAP_NONE, 3);
    }

    public void copy1DRangeFrom(int i9, int i10, short[] sArr) {
        validateIsInt16();
        copy1DRangeFromUnchecked(i9, i10, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeTo(int i9, int i10, short[] sArr) {
        validateIsInt16();
        copy1DRangeToUnchecked(i9, i10, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy2DRangeFrom(int i9, int i10, int i11, int i12, short[] sArr) {
        validateIsInt16();
        copy2DRangeFromUnchecked(i9, i10, i11, i12, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy2DRangeTo(int i9, int i10, int i11, int i12, short[] sArr) {
        validateIsInt16();
        copy2DRangeToUnchecked(i9, i10, i11, i12, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copyFromUnchecked(Object obj) {
        copyFromUnchecked(obj, validateObjectIsPrimitiveArray(obj, false), Array.getLength(obj));
    }

    public static Allocation createSized(RenderScript renderScript, Element element, int i9) {
        return createSized(renderScript, element, i9, 1);
    }

    public void copy1DRangeFrom(int i9, int i10, byte[] bArr) {
        validateIsInt8();
        copy1DRangeFromUnchecked(i9, i10, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeFromUnchecked(int i9, int i10, int[] iArr) {
        copy1DRangeFromUnchecked(i9, i10, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy1DRangeTo(int i9, int i10, byte[] bArr) {
        validateIsInt8();
        copy1DRangeToUnchecked(i9, i10, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeToUnchecked(int i9, int i10, int[] iArr) {
        copy1DRangeToUnchecked(i9, i10, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeFrom(int i9, int i10, int i11, int i12, int[] iArr) {
        validateIsInt32();
        copy2DRangeFromUnchecked(i9, i10, i11, i12, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy2DRangeTo(int i9, int i10, int i11, int i12, int[] iArr) {
        validateIsInt32();
        copy2DRangeToUnchecked(i9, i10, i11, i12, iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void setFromFieldPacker(int i9, int i10, FieldPacker fieldPacker) {
        this.mRS.validate();
        if (i10 >= this.mType.mElement.mElements.length) {
            throw new RSIllegalArgumentException("Component_number " + i10 + " out of range.");
        } else if (i9 >= 0) {
            byte[] data = fieldPacker.getData();
            int pos = fieldPacker.getPos();
            int bytesSize = this.mType.mElement.mElements[i10].getBytesSize() * this.mType.mElement.mArraySizes[i10];
            if (pos == bytesSize) {
                this.mRS.nAllocationElementData1D(getIDSafe(), i9, this.mSelectedLOD, i10, data, pos);
                return;
            }
            throw new RSIllegalArgumentException("Field packer sizelength " + pos + " does not match component size " + bytesSize + ".");
        } else {
            throw new RSIllegalArgumentException("Offset must be >= 0.");
        }
    }

    public static Allocation createTyped(RenderScript renderScript, Type type, int i9) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, i9);
    }

    public void copy1DRangeFromUnchecked(int i9, int i10, short[] sArr) {
        copy1DRangeFromUnchecked(i9, i10, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeToUnchecked(int i9, int i10, short[] sArr) {
        copy1DRangeToUnchecked(i9, i10, sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public static Allocation createTyped(RenderScript renderScript, Type type) {
        return createTyped(renderScript, type, MipmapControl.MIPMAP_NONE, 1);
    }

    public void copy1DRangeFrom(int i9, int i10, float[] fArr) {
        validateIsFloat32();
        copy1DRangeFromUnchecked(i9, i10, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeFromUnchecked(int i9, int i10, byte[] bArr) {
        copy1DRangeFromUnchecked(i9, i10, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy1DRangeTo(int i9, int i10, float[] fArr) {
        validateIsFloat32();
        copy1DRangeToUnchecked(i9, i10, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeToUnchecked(int i9, int i10, byte[] bArr) {
        copy1DRangeToUnchecked(i9, i10, bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeFrom(int i9, int i10, int i11, int i12, float[] fArr) {
        validateIsFloat32();
        copy2DRangeFromUnchecked(i9, i10, i11, i12, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy2DRangeTo(int i9, int i10, int i11, int i12, float[] fArr) {
        validateIsFloat32();
        copy2DRangeToUnchecked(i9, i10, i11, i12, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFromUnchecked(int[] iArr) {
        copyFromUnchecked(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copy1DRangeFromUnchecked(int i9, int i10, float[] fArr) {
        copy1DRangeFromUnchecked(i9, i10, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copy1DRangeToUnchecked(int i9, int i10, float[] fArr) {
        copy1DRangeToUnchecked(i9, i10, fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFromUnchecked(short[] sArr) {
        copyFromUnchecked(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copy1DRangeFrom(int i9, int i10, Allocation allocation, int i11) {
        this.mRS.nAllocationData2D(getIDSafe(), i9, 0, this.mSelectedLOD, this.mSelectedFace.mID, i10, 1, allocation.getID(this.mRS), i11, 0, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
    }

    public void copy2DRangeFrom(int i9, int i10, int i11, int i12, Allocation allocation, int i13, int i14) {
        this.mRS.validate();
        validate2DRange(i9, i10, i11, i12);
        this.mRS.nAllocationData2D(getIDSafe(), i9, i10, this.mSelectedLOD, this.mSelectedFace.mID, i11, i12, allocation.getID(this.mRS), i13, i14, allocation.mSelectedLOD, allocation.mSelectedFace.mID);
    }

    public void copyFromUnchecked(byte[] bArr) {
        copyFromUnchecked(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copyTo(Object obj) {
        copyTo(obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copyFromUnchecked(float[] fArr) {
        copyFromUnchecked(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFrom(Object obj) {
        copyFromUnchecked(obj, validateObjectIsPrimitiveArray(obj, true), Array.getLength(obj));
    }

    public void copyTo(byte[] bArr) {
        validateIsInt8();
        copyTo(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copy2DRangeFrom(int i9, int i10, Bitmap bitmap) {
        this.mRS.validate();
        if (bitmap.getConfig() == null) {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            copy2DRangeFrom(i9, i10, createBitmap);
            return;
        }
        validateBitmapFormat(bitmap);
        validate2DRange(i9, i10, bitmap.getWidth(), bitmap.getHeight());
        this.mRS.nAllocationData2D(getIDSafe(), i9, i10, this.mSelectedLOD, this.mSelectedFace.mID, bitmap);
    }

    public void copyFrom(int[] iArr) {
        validateIsInt32();
        copyFromUnchecked(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyTo(short[] sArr) {
        validateIsInt16();
        copyTo(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public static Allocation createFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        return createFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 131);
    }

    public static Allocation createCubemapFromBitmap(RenderScript renderScript, Bitmap bitmap) {
        return createCubemapFromBitmap(renderScript, bitmap, MipmapControl.MIPMAP_NONE, 2);
    }

    public void copyFrom(short[] sArr) {
        validateIsInt16();
        copyFromUnchecked(sArr, Element.DataType.SIGNED_16, sArr.length);
    }

    public void copyTo(int[] iArr) {
        validateIsInt32();
        copyTo(iArr, Element.DataType.SIGNED_32, iArr.length);
    }

    public void copyFrom(byte[] bArr) {
        validateIsInt8();
        copyFromUnchecked(bArr, Element.DataType.SIGNED_8, bArr.length);
    }

    public void copyTo(float[] fArr) {
        validateIsFloat32();
        copyTo(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFrom(float[] fArr) {
        validateIsFloat32();
        copyFromUnchecked(fArr, Element.DataType.FLOAT_32, fArr.length);
    }

    public void copyFrom(Bitmap bitmap) {
        this.mRS.validate();
        if (bitmap.getConfig() == null) {
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            copyFrom(createBitmap);
            return;
        }
        validateBitmapSize(bitmap);
        validateBitmapFormat(bitmap);
        RenderScript renderScript = this.mRS;
        renderScript.nAllocationCopyFromBitmap(getID(renderScript), bitmap);
    }

    public void copyFrom(Allocation allocation) {
        this.mRS.validate();
        if (this.mType.equals(allocation.getType())) {
            copy2DRangeFrom(0, 0, this.mCurrentDimX, this.mCurrentDimY, allocation, 0, 0);
            return;
        }
        throw new RSIllegalArgumentException("Types of allocations must match.");
    }
}
