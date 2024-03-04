package androidx.renderscript;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Surface;
import androidx.renderscript.Element;
import java.io.File;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes.dex */
public class RenderScript {
    private static final String CACHE_PATH = "com.android.renderscript.cache";
    public static final int CREATE_FLAG_NONE = 0;
    static final boolean DEBUG = false;
    static final boolean LOG_ENABLED = false;
    static final String LOG_TAG = "RenderScript_jni";
    static final int SUPPORT_LIB_API = 23;
    static final int SUPPORT_LIB_VERSION = 2301;
    static String mCachePath;
    static Method registerNativeAllocation;
    static Method registerNativeFree;
    static boolean sInitialized;
    static int sPointerSize;
    static Object sRuntime;
    static boolean sUseGCHooks;
    private static boolean useNative;
    private Context mApplicationContext;
    long mContext;
    Element mElement_ALLOCATION;
    Element mElement_A_8;
    Element mElement_BOOLEAN;
    Element mElement_CHAR_2;
    Element mElement_CHAR_3;
    Element mElement_CHAR_4;
    Element mElement_DOUBLE_2;
    Element mElement_DOUBLE_3;
    Element mElement_DOUBLE_4;
    Element mElement_ELEMENT;
    Element mElement_F32;
    Element mElement_F64;
    Element mElement_FLOAT_2;
    Element mElement_FLOAT_3;
    Element mElement_FLOAT_4;
    Element mElement_I16;
    Element mElement_I32;
    Element mElement_I64;
    Element mElement_I8;
    Element mElement_INT_2;
    Element mElement_INT_3;
    Element mElement_INT_4;
    Element mElement_LONG_2;
    Element mElement_LONG_3;
    Element mElement_LONG_4;
    Element mElement_MATRIX_2X2;
    Element mElement_MATRIX_3X3;
    Element mElement_MATRIX_4X4;
    Element mElement_RGBA_4444;
    Element mElement_RGBA_5551;
    Element mElement_RGBA_8888;
    Element mElement_RGB_565;
    Element mElement_RGB_888;
    Element mElement_SAMPLER;
    Element mElement_SCRIPT;
    Element mElement_SHORT_2;
    Element mElement_SHORT_3;
    Element mElement_SHORT_4;
    Element mElement_TYPE;
    Element mElement_U16;
    Element mElement_U32;
    Element mElement_U64;
    Element mElement_U8;
    Element mElement_UCHAR_2;
    Element mElement_UCHAR_3;
    Element mElement_UCHAR_4;
    Element mElement_UINT_2;
    Element mElement_UINT_3;
    Element mElement_UINT_4;
    Element mElement_ULONG_2;
    Element mElement_ULONG_3;
    Element mElement_ULONG_4;
    Element mElement_USHORT_2;
    Element mElement_USHORT_3;
    Element mElement_USHORT_4;
    long mIncCon;
    boolean mIncLoaded;
    MessageThread mMessageThread;
    private String mNativeLibDir;
    ReentrantReadWriteLock mRWLock;
    Sampler mSampler_CLAMP_LINEAR;
    Sampler mSampler_CLAMP_LINEAR_MIP_LINEAR;
    Sampler mSampler_CLAMP_NEAREST;
    Sampler mSampler_MIRRORED_REPEAT_LINEAR;
    Sampler mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR;
    Sampler mSampler_MIRRORED_REPEAT_NEAREST;
    Sampler mSampler_WRAP_LINEAR;
    Sampler mSampler_WRAP_LINEAR_MIP_LINEAR;
    Sampler mSampler_WRAP_NEAREST;
    private static ArrayList<RenderScript> mProcessContextList = new ArrayList<>();
    private static String mBlackList = "";
    static Object lock = new Object();
    private static int sNative = -1;
    private static int sSdkVersion = -1;
    private static boolean useIOlib = false;
    private boolean mIsProcessContext = false;
    private boolean mEnableMultiInput = false;
    private int mDispatchAPILevel = 0;
    private int mContextFlags = 0;
    private int mContextSdkVersion = 0;
    private boolean mDestroyed = false;
    RSMessageHandler mMessageCallback = null;
    RSErrorHandler mErrorCallback = null;
    ContextType mContextType = ContextType.NORMAL;

    /* loaded from: classes.dex */
    public enum ContextType {
        NORMAL(0),
        DEBUG(1),
        PROFILE(2);
        
        int mID;

        ContextType(int i9) {
            this.mID = i9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class MessageThread extends Thread {
        static final int RS_ERROR_FATAL_DEBUG = 2048;
        static final int RS_ERROR_FATAL_UNKNOWN = 4096;
        static final int RS_MESSAGE_TO_CLIENT_ERROR = 3;
        static final int RS_MESSAGE_TO_CLIENT_EXCEPTION = 1;
        static final int RS_MESSAGE_TO_CLIENT_NONE = 0;
        static final int RS_MESSAGE_TO_CLIENT_RESIZE = 2;
        static final int RS_MESSAGE_TO_CLIENT_USER = 4;
        int[] mAuxData;
        RenderScript mRS;
        boolean mRun;

        MessageThread(RenderScript renderScript) {
            super("RSMessageThread");
            this.mRun = true;
            this.mAuxData = new int[2];
            this.mRS = renderScript;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int[] iArr = new int[16];
            RenderScript renderScript = this.mRS;
            renderScript.nContextInitToClient(renderScript.mContext);
            while (this.mRun) {
                iArr[0] = 0;
                RenderScript renderScript2 = this.mRS;
                int nContextPeekMessage = renderScript2.nContextPeekMessage(renderScript2.mContext, this.mAuxData);
                int[] iArr2 = this.mAuxData;
                int i9 = iArr2[1];
                int i10 = iArr2[0];
                if (nContextPeekMessage == 4) {
                    if ((i9 >> 2) >= iArr.length) {
                        iArr = new int[(i9 + 3) >> 2];
                    }
                    RenderScript renderScript3 = this.mRS;
                    if (renderScript3.nContextGetUserMessage(renderScript3.mContext, iArr) == 4) {
                        RSMessageHandler rSMessageHandler = this.mRS.mMessageCallback;
                        if (rSMessageHandler != null) {
                            rSMessageHandler.mData = iArr;
                            rSMessageHandler.mID = i10;
                            rSMessageHandler.mLength = i9;
                            rSMessageHandler.run();
                        } else {
                            throw new RSInvalidStateException("Received a message from the script with no message handler installed.");
                        }
                    } else {
                        throw new RSDriverException("Error processing message from RenderScript.");
                    }
                } else if (nContextPeekMessage == 3) {
                    RenderScript renderScript4 = this.mRS;
                    String nContextGetErrorMessage = renderScript4.nContextGetErrorMessage(renderScript4.mContext);
                    if (i10 < 4096) {
                        if (i10 >= 2048) {
                            RenderScript renderScript5 = this.mRS;
                            if (renderScript5.mContextType == ContextType.DEBUG) {
                                if (renderScript5.mErrorCallback == null) {
                                }
                            }
                        }
                        RSErrorHandler rSErrorHandler = this.mRS.mErrorCallback;
                        if (rSErrorHandler != null) {
                            rSErrorHandler.mErrorMessage = nContextGetErrorMessage;
                            rSErrorHandler.mErrorNum = i10;
                            rSErrorHandler.run();
                        } else {
                            Log.e(RenderScript.LOG_TAG, "non fatal RS error, " + nContextGetErrorMessage);
                        }
                    }
                    Log.e(RenderScript.LOG_TAG, "fatal RS error, " + nContextGetErrorMessage);
                    throw new RSRuntimeException("Fatal error " + i10 + ", details: " + nContextGetErrorMessage);
                } else {
                    try {
                        Thread.sleep(1L, 0);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Priority {
        LOW(15),
        NORMAL(-4);
        
        int mID;

        Priority(int i9) {
            this.mID = i9;
        }
    }

    /* loaded from: classes.dex */
    public static class RSErrorHandler implements Runnable {
        protected String mErrorMessage;
        protected int mErrorNum;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    /* loaded from: classes.dex */
    public static class RSMessageHandler implements Runnable {
        protected int[] mData;
        protected int mID;
        protected int mLength;

        @Override // java.lang.Runnable
        public void run() {
        }
    }

    RenderScript(Context context) {
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            this.mApplicationContext = applicationContext;
            this.mNativeLibDir = applicationContext.getApplicationInfo().nativeLibraryDir;
        }
        this.mIncCon = 0L;
        this.mIncLoaded = false;
        this.mRWLock = new ReentrantReadWriteLock();
    }

    public static RenderScript create(Context context) {
        return create(context, ContextType.NORMAL);
    }

    public static RenderScript createMultiContext(Context context, ContextType contextType, int i9, int i10) {
        return internalCreate(context, i10, contextType, i9);
    }

    public static void forceCompat() {
        sNative = 0;
    }

    public static int getPointerSize() {
        synchronized (lock) {
            if (!sInitialized) {
                throw new RSInvalidStateException("Calling getPointerSize() before any RenderScript instantiated");
            }
        }
        return sPointerSize;
    }

    private void helpDestroy() {
        boolean z10;
        boolean z11;
        synchronized (this) {
            z10 = false;
            if (this.mDestroyed) {
                z11 = false;
            } else {
                this.mDestroyed = true;
                z11 = true;
            }
        }
        if (z11) {
            nContextFinish();
            if (this.mIncCon != 0) {
                nIncContextFinish();
                nIncContextDestroy();
                this.mIncCon = 0L;
            }
            nContextDeinitToClient(this.mContext);
            MessageThread messageThread = this.mMessageThread;
            messageThread.mRun = false;
            messageThread.interrupt();
            boolean z12 = false;
            while (!z10) {
                try {
                    this.mMessageThread.join();
                    z10 = true;
                } catch (InterruptedException unused) {
                    z12 = true;
                }
            }
            if (z12) {
                Log.v(LOG_TAG, "Interrupted during wait for MessageThread to join");
                Thread.currentThread().interrupt();
            }
            nContextDestroy();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0125  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.renderscript.RenderScript internalCreate(android.content.Context r10, int r11, androidx.renderscript.RenderScript.ContextType r12, int r13) {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.renderscript.RenderScript.internalCreate(android.content.Context, int, androidx.renderscript.RenderScript$ContextType, int):androidx.renderscript.RenderScript");
    }

    public static void releaseAllContexts() {
        ArrayList<RenderScript> arrayList;
        synchronized (mProcessContextList) {
            arrayList = mProcessContextList;
            mProcessContextList = new ArrayList<>();
        }
        Iterator<RenderScript> it = arrayList.iterator();
        while (it.hasNext()) {
            RenderScript next = it.next();
            next.mIsProcessContext = false;
            next.destroy();
        }
        arrayList.clear();
    }

    static native int rsnSystemGetPointerSize();

    public static void setBlackList(String str) {
        if (str != null) {
            mBlackList = str;
        }
    }

    public static void setupDiskCache(File file) {
        File file2 = new File(file, CACHE_PATH);
        mCachePath = file2.getAbsolutePath();
        file2.mkdirs();
    }

    private static boolean setupNative(int i9, Context context) {
        int i10;
        long j10;
        int i11 = Build.VERSION.SDK_INT;
        if (sNative == -1) {
            try {
                i10 = ((Integer) Class.forName("android.os.SystemProperties").getDeclaredMethod("getInt", String.class, Integer.TYPE).invoke(null, "debug.rs.forcecompat", new Integer(0))).intValue();
            } catch (Exception unused) {
                i10 = 0;
            }
            if (i10 == 0) {
                sNative = 1;
            } else {
                sNative = 0;
            }
            if (sNative == 1) {
                try {
                    ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                    try {
                        j10 = ((Long) Class.forName("android.renderscript.RenderScript").getDeclaredMethod("getMinorID", new Class[0]).invoke(null, new Object[0])).longValue();
                    } catch (Exception unused2) {
                        j10 = 0;
                    }
                    Bundle bundle = applicationInfo.metaData;
                    if (bundle != null) {
                        if (bundle.getBoolean("androidx.renderscript.EnableAsyncTeardown") && j10 == 0) {
                            sNative = 0;
                        }
                        applicationInfo.metaData.getBoolean("androidx.renderscript.EnableBlurWorkaround");
                    }
                } catch (PackageManager.NameNotFoundException unused3) {
                    return true;
                }
            }
        }
        if (sNative == 1) {
            if (mBlackList.length() > 0) {
                if (mBlackList.contains('(' + Build.MANUFACTURER + ':' + Build.PRODUCT + ':' + Build.MODEL + ')')) {
                    sNative = 0;
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void contextDump() {
        validate();
        nContextDump(0);
    }

    public void destroy() {
        if (this.mIsProcessContext) {
            return;
        }
        validate();
        helpDestroy();
    }

    protected void finalize() throws Throwable {
        helpDestroy();
        super.finalize();
    }

    public void finish() {
        nContextFinish();
    }

    public final Context getApplicationContext() {
        return this.mApplicationContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDispatchAPILevel() {
        return this.mDispatchAPILevel;
    }

    public RSErrorHandler getErrorHandler() {
        return this.mErrorCallback;
    }

    public RSMessageHandler getMessageHandler() {
        return this.mMessageCallback;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isAlive() {
        return this.mContext != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isUseNative() {
        return useNative;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationCopyFromBitmap(long j10, Bitmap bitmap) {
        validate();
        rsnAllocationCopyFromBitmap(this.mContext, j10, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationCopyToBitmap(long j10, Bitmap bitmap) {
        validate();
        rsnAllocationCopyToBitmap(this.mContext, j10, bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nAllocationCreateBitmapBackedAllocation(long j10, int i9, Bitmap bitmap, int i10) {
        validate();
        return rsnAllocationCreateBitmapBackedAllocation(this.mContext, j10, i9, bitmap, i10);
    }

    synchronized long nAllocationCreateBitmapRef(long j10, Bitmap bitmap) {
        validate();
        return rsnAllocationCreateBitmapRef(this.mContext, j10, bitmap);
    }

    synchronized long nAllocationCreateFromAssetStream(int i9, int i10, int i11) {
        validate();
        return rsnAllocationCreateFromAssetStream(this.mContext, i9, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nAllocationCreateFromBitmap(long j10, int i9, Bitmap bitmap, int i10) {
        validate();
        return rsnAllocationCreateFromBitmap(this.mContext, j10, i9, bitmap, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nAllocationCreateTyped(long j10, int i9, int i10, long j11) {
        validate();
        return rsnAllocationCreateTyped(this.mContext, j10, i9, i10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nAllocationCubeCreateFromBitmap(long j10, int i9, Bitmap bitmap, int i10) {
        validate();
        return rsnAllocationCubeCreateFromBitmap(this.mContext, j10, i9, bitmap, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationData1D(long j10, int i9, int i10, int i11, Object obj, int i12, Element.DataType dataType, int i13, boolean z10) {
        validate();
        rsnAllocationData1D(this.mContext, j10, i9, i10, i11, obj, i12, dataType.mID, i13, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationData2D(long j10, int i9, int i10, int i11, int i12, int i13, int i14, long j11, int i15, int i16, int i17, int i18) {
        validate();
        rsnAllocationData2D(this.mContext, j10, i9, i10, i11, i12, i13, i14, j11, i15, i16, i17, i18);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationData3D(long j10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, long j11, int i16, int i17, int i18, int i19) {
        validate();
        rsnAllocationData3D(this.mContext, j10, i9, i10, i11, i12, i13, i14, i15, j11, i16, i17, i18, i19);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationElementData1D(long j10, int i9, int i10, int i11, byte[] bArr, int i12) {
        validate();
        rsnAllocationElementData1D(this.mContext, j10, i9, i10, i11, bArr, i12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationGenerateMipmaps(long j10) {
        validate();
        rsnAllocationGenerateMipmaps(this.mContext, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ByteBuffer nAllocationGetByteBuffer(long j10, int i9, int i10, int i11) {
        validate();
        return rsnAllocationGetByteBuffer(this.mContext, j10, i9, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nAllocationGetStride(long j10) {
        validate();
        return rsnAllocationGetStride(this.mContext, j10);
    }

    synchronized long nAllocationGetType(long j10) {
        validate();
        return rsnAllocationGetType(this.mContext, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationIoReceive(long j10) {
        validate();
        rsnAllocationIoReceive(this.mContext, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationIoSend(long j10) {
        validate();
        rsnAllocationIoSend(this.mContext, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationRead(long j10, Object obj, Element.DataType dataType, int i9, boolean z10) {
        validate();
        rsnAllocationRead(this.mContext, j10, obj, dataType.mID, i9, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationRead1D(long j10, int i9, int i10, int i11, Object obj, int i12, Element.DataType dataType, int i13, boolean z10) {
        validate();
        rsnAllocationRead1D(this.mContext, j10, i9, i10, i11, obj, i12, dataType.mID, i13, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationRead2D(long j10, int i9, int i10, int i11, int i12, int i13, int i14, Object obj, int i15, Element.DataType dataType, int i16, boolean z10) {
        validate();
        rsnAllocationRead2D(this.mContext, j10, i9, i10, i11, i12, i13, i14, obj, i15, dataType.mID, i16, z10);
    }

    synchronized void nAllocationResize1D(long j10, int i9) {
        validate();
        rsnAllocationResize1D(this.mContext, j10, i9);
    }

    synchronized void nAllocationResize2D(long j10, int i9, int i10) {
        validate();
        rsnAllocationResize2D(this.mContext, j10, i9, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationSetSurface(long j10, Surface surface) {
        validate();
        rsnAllocationSetSurface(this.mContext, j10, surface);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationSyncAll(long j10, int i9) {
        validate();
        rsnAllocationSyncAll(this.mContext, j10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nClosureCreate(long j10, long j11, long[] jArr, long[] jArr2, int[] iArr, long[] jArr3, long[] jArr4) {
        long rsnClosureCreate;
        validate();
        rsnClosureCreate = rsnClosureCreate(this.mContext, j10, j11, jArr, jArr2, iArr, jArr3, jArr4);
        if (rsnClosureCreate == 0) {
            throw new RSRuntimeException("Failed creating closure.");
        }
        return rsnClosureCreate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nClosureSetArg(long j10, int i9, long j11, int i10) {
        validate();
        rsnClosureSetArg(this.mContext, j10, i9, j11, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nClosureSetGlobal(long j10, long j11, long j12, int i9) {
        validate();
        rsnClosureSetGlobal(this.mContext, j10, j11, j12, i9);
    }

    synchronized long nContextCreate(long j10, int i9, int i10, int i11, String str) {
        return rsnContextCreate(j10, i9, i10, i11, str);
    }

    native void nContextDeinitToClient(long j10);

    synchronized void nContextDestroy() {
        validate();
        ReentrantReadWriteLock.WriteLock writeLock = this.mRWLock.writeLock();
        writeLock.lock();
        long j10 = this.mContext;
        this.mContext = 0L;
        writeLock.unlock();
        rsnContextDestroy(j10);
    }

    synchronized void nContextDump(int i9) {
        validate();
        rsnContextDump(this.mContext, i9);
    }

    synchronized void nContextFinish() {
        validate();
        rsnContextFinish(this.mContext);
    }

    native String nContextGetErrorMessage(long j10);

    native int nContextGetUserMessage(long j10, int[] iArr);

    native void nContextInitToClient(long j10);

    native int nContextPeekMessage(long j10, int[] iArr);

    synchronized void nContextSendMessage(int i9, int[] iArr) {
        validate();
        rsnContextSendMessage(this.mContext, i9, iArr);
    }

    synchronized void nContextSetPriority(int i9) {
        validate();
        rsnContextSetPriority(this.mContext, i9);
    }

    native long nDeviceCreate();

    native void nDeviceDestroy(long j10);

    native void nDeviceSetConfig(long j10, int i9, int i10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nElementCreate(long j10, int i9, boolean z10, int i10) {
        validate();
        return rsnElementCreate(this.mContext, j10, i9, z10, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nElementCreate2(long[] jArr, String[] strArr, int[] iArr) {
        validate();
        return rsnElementCreate2(this.mContext, jArr, strArr, iArr);
    }

    synchronized void nElementGetNativeData(long j10, int[] iArr) {
        validate();
        rsnElementGetNativeData(this.mContext, j10, iArr);
    }

    synchronized void nElementGetSubElements(long j10, long[] jArr, String[] strArr, int[] iArr) {
        validate();
        rsnElementGetSubElements(this.mContext, j10, jArr, strArr, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nIncAllocationCreateTyped(long j10, long j11, int i9) {
        validate();
        return rsnIncAllocationCreateTyped(this.mContext, this.mIncCon, j10, j11, i9);
    }

    synchronized long nIncContextCreate(long j10, int i9, int i10, int i11) {
        return rsnIncContextCreate(j10, i9, i10, i11);
    }

    synchronized void nIncContextDestroy() {
        validate();
        ReentrantReadWriteLock.WriteLock writeLock = this.mRWLock.writeLock();
        writeLock.lock();
        long j10 = this.mIncCon;
        this.mIncCon = 0L;
        writeLock.unlock();
        rsnIncContextDestroy(j10);
    }

    synchronized void nIncContextFinish() {
        validate();
        rsnIncContextFinish(this.mIncCon);
    }

    native long nIncDeviceCreate();

    native void nIncDeviceDestroy(long j10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nIncElementCreate(long j10, int i9, boolean z10, int i10) {
        validate();
        return rsnIncElementCreate(this.mIncCon, j10, i9, z10, i10);
    }

    native boolean nIncLoadSO(int i9, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void nIncObjDestroy(long j10) {
        long j11 = this.mIncCon;
        if (j11 != 0) {
            rsnIncObjDestroy(j11, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nIncTypeCreate(long j10, int i9, int i10, int i11, boolean z10, boolean z11, int i12) {
        validate();
        return rsnIncTypeCreate(this.mIncCon, j10, i9, i10, i11, z10, z11, i12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nInvokeClosureCreate(long j10, byte[] bArr, long[] jArr, long[] jArr2, int[] iArr) {
        long rsnInvokeClosureCreate;
        validate();
        rsnInvokeClosureCreate = rsnInvokeClosureCreate(this.mContext, j10, bArr, jArr, jArr2, iArr);
        if (rsnInvokeClosureCreate == 0) {
            throw new RSRuntimeException("Failed creating closure.");
        }
        return rsnInvokeClosureCreate;
    }

    native boolean nLoadIOSO();

    native boolean nLoadSO(boolean z10, int i9, String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void nObjDestroy(long j10) {
        long j11 = this.mContext;
        if (j11 != 0) {
            rsnObjDestroy(j11, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nSamplerCreate(int i9, int i10, int i11, int i12, int i13, float f10) {
        validate();
        return rsnSamplerCreate(this.mContext, i9, i10, i11, i12, i13, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptBindAllocation(long j10, long j11, int i9, boolean z10) {
        validate();
        long j12 = this.mContext;
        if (z10) {
            j12 = this.mIncCon;
        }
        rsnScriptBindAllocation(j12, j10, j11, i9, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nScriptCCreate(String str, String str2, byte[] bArr, int i9) {
        validate();
        return rsnScriptCCreate(this.mContext, str, str2, bArr, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nScriptFieldIDCreate(long j10, int i9, boolean z10) {
        long j11;
        validate();
        j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        return rsnScriptFieldIDCreate(j11, j10, i9, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptForEach(long j10, int i9, long j11, long j12, byte[] bArr, boolean z10) {
        validate();
        if (bArr == null) {
            rsnScriptForEach(this.mContext, this.mIncCon, j10, i9, j11, j12, z10);
        } else {
            rsnScriptForEach(this.mContext, this.mIncCon, j10, i9, j11, j12, bArr, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptForEachClipped(long j10, int i9, long j11, long j12, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10) {
        validate();
        if (bArr == null) {
            rsnScriptForEachClipped(this.mContext, this.mIncCon, j10, i9, j11, j12, i10, i11, i12, i13, i14, i15, z10);
        } else {
            rsnScriptForEachClipped(this.mContext, this.mIncCon, j10, i9, j11, j12, bArr, i10, i11, i12, i13, i14, i15, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nScriptGroup2Create(String str, String str2, long[] jArr) {
        validate();
        return rsnScriptGroup2Create(this.mContext, str, str2, jArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptGroup2Execute(long j10) {
        validate();
        rsnScriptGroup2Execute(this.mContext, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nScriptGroupCreate(long[] jArr, long[] jArr2, long[] jArr3, long[] jArr4, long[] jArr5) {
        validate();
        return rsnScriptGroupCreate(this.mContext, jArr, jArr2, jArr3, jArr4, jArr5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptGroupExecute(long j10) {
        validate();
        rsnScriptGroupExecute(this.mContext, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptGroupSetInput(long j10, long j11, long j12) {
        validate();
        rsnScriptGroupSetInput(this.mContext, j10, j11, j12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptGroupSetOutput(long j10, long j11, long j12) {
        validate();
        rsnScriptGroupSetOutput(this.mContext, j10, j11, j12);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptIntrinsicBLAS_BNNM(long j10, int i9, int i10, int i11, long j11, int i12, long j12, int i13, long j13, int i14, int i15, boolean z10) {
        validate();
        rsnScriptIntrinsicBLAS_BNNM(this.mContext, this.mIncCon, j10, i9, i10, i11, j11, i12, j12, i13, j13, i14, i15, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptIntrinsicBLAS_Complex(long j10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f10, float f11, long j11, long j12, float f12, float f13, long j13, int i18, int i19, int i20, int i21, boolean z10) {
        validate();
        rsnScriptIntrinsicBLAS_Complex(this.mContext, this.mIncCon, j10, i9, i10, i11, i12, i13, i14, i15, i16, i17, f10, f11, j11, j12, f12, f13, j13, i18, i19, i20, i21, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptIntrinsicBLAS_Double(long j10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, double d10, long j11, long j12, double d11, long j13, int i18, int i19, int i20, int i21, boolean z10) {
        validate();
        rsnScriptIntrinsicBLAS_Double(this.mContext, this.mIncCon, j10, i9, i10, i11, i12, i13, i14, i15, i16, i17, d10, j11, j12, d11, j13, i18, i19, i20, i21, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptIntrinsicBLAS_Single(long j10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f10, long j11, long j12, float f11, long j13, int i18, int i19, int i20, int i21, boolean z10) {
        validate();
        rsnScriptIntrinsicBLAS_Single(this.mContext, this.mIncCon, j10, i9, i10, i11, i12, i13, i14, i15, i16, i17, f10, j11, j12, f11, j13, i18, i19, i20, i21, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptIntrinsicBLAS_Z(long j10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, double d10, double d11, long j11, long j12, double d12, double d13, long j13, int i18, int i19, int i20, int i21, boolean z10) {
        validate();
        rsnScriptIntrinsicBLAS_Z(this.mContext, this.mIncCon, j10, i9, i10, i11, i12, i13, i14, i15, i16, i17, d10, d11, j11, j12, d12, d13, j13, i18, i19, i20, i21, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nScriptIntrinsicCreate(int i9, long j10, boolean z10) {
        validate();
        if (z10) {
            if (!this.mIncLoaded) {
                try {
                    System.loadLibrary("RSSupport");
                    if (nIncLoadSO(23, this.mNativeLibDir + "/libRSSupport.so")) {
                        this.mIncLoaded = true;
                    } else {
                        throw new RSRuntimeException("Error loading libRSSupport library for Incremental Intrinsic Support");
                    }
                } catch (UnsatisfiedLinkError e10) {
                    Log.e(LOG_TAG, "Error loading RS Compat library for Incremental Intrinsic Support: " + e10);
                    throw new RSRuntimeException("Error loading RS Compat library for Incremental Intrinsic Support: " + e10);
                }
            }
            if (this.mIncCon == 0) {
                this.mIncCon = nIncContextCreate(nIncDeviceCreate(), 0, 0, 0);
            }
            return rsnScriptIntrinsicCreate(this.mIncCon, i9, j10, z10);
        }
        return rsnScriptIntrinsicCreate(this.mContext, i9, j10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptInvoke(long j10, int i9, boolean z10) {
        validate();
        long j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        rsnScriptInvoke(j11, j10, i9, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nScriptInvokeIDCreate(long j10, int i9) {
        validate();
        return rsnScriptInvokeIDCreate(this.mContext, j10, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptInvokeV(long j10, int i9, byte[] bArr, boolean z10) {
        validate();
        long j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        rsnScriptInvokeV(j11, j10, i9, bArr, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nScriptKernelIDCreate(long j10, int i9, int i10, boolean z10) {
        long j11;
        validate();
        j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        return rsnScriptKernelIDCreate(j11, j10, i9, i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptReduce(long j10, int i9, long[] jArr, long j11, int[] iArr) {
        validate();
        rsnScriptReduce(this.mContext, j10, i9, jArr, j11, iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetTimeZone(long j10, byte[] bArr, boolean z10) {
        validate();
        long j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        rsnScriptSetTimeZone(j11, j10, bArr, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetVarD(long j10, int i9, double d10, boolean z10) {
        validate();
        long j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        rsnScriptSetVarD(j11, j10, i9, d10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetVarF(long j10, int i9, float f10, boolean z10) {
        validate();
        long j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        rsnScriptSetVarF(j11, j10, i9, f10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetVarI(long j10, int i9, int i10, boolean z10) {
        validate();
        long j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        rsnScriptSetVarI(j11, j10, i9, i10, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetVarJ(long j10, int i9, long j11, boolean z10) {
        validate();
        long j12 = this.mContext;
        if (z10) {
            j12 = this.mIncCon;
        }
        rsnScriptSetVarJ(j12, j10, i9, j11, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetVarObj(long j10, int i9, long j11, boolean z10) {
        validate();
        long j12 = this.mContext;
        if (z10) {
            j12 = this.mIncCon;
        }
        rsnScriptSetVarObj(j12, j10, i9, j11, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetVarV(long j10, int i9, byte[] bArr, boolean z10) {
        validate();
        long j11 = this.mContext;
        if (z10) {
            j11 = this.mIncCon;
        }
        rsnScriptSetVarV(j11, j10, i9, bArr, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptSetVarVE(long j10, int i9, byte[] bArr, long j11, int[] iArr, boolean z10) {
        validate();
        long j12 = this.mContext;
        if (z10) {
            j12 = this.mIncCon;
        }
        rsnScriptSetVarVE(j12, j10, i9, bArr, j11, iArr, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized long nTypeCreate(long j10, int i9, int i10, int i11, boolean z10, boolean z11, int i12) {
        validate();
        return rsnTypeCreate(this.mContext, j10, i9, i10, i11, z10, z11, i12);
    }

    synchronized void nTypeGetNativeData(long j10, long[] jArr) {
        validate();
        rsnTypeGetNativeData(this.mContext, j10, jArr);
    }

    native void rsnAllocationCopyFromBitmap(long j10, long j11, Bitmap bitmap);

    native void rsnAllocationCopyToBitmap(long j10, long j11, Bitmap bitmap);

    native long rsnAllocationCreateBitmapBackedAllocation(long j10, long j11, int i9, Bitmap bitmap, int i10);

    native long rsnAllocationCreateBitmapRef(long j10, long j11, Bitmap bitmap);

    native long rsnAllocationCreateFromAssetStream(long j10, int i9, int i10, int i11);

    native long rsnAllocationCreateFromBitmap(long j10, long j11, int i9, Bitmap bitmap, int i10);

    native long rsnAllocationCreateTyped(long j10, long j11, int i9, int i10, long j12);

    native long rsnAllocationCubeCreateFromBitmap(long j10, long j11, int i9, Bitmap bitmap, int i10);

    native void rsnAllocationData1D(long j10, long j11, int i9, int i10, int i11, Object obj, int i12, int i13, int i14, boolean z10);

    native void rsnAllocationData2D(long j10, long j11, int i9, int i10, int i11, int i12, int i13, int i14, long j12, int i15, int i16, int i17, int i18);

    native void rsnAllocationData2D(long j10, long j11, int i9, int i10, int i11, int i12, int i13, int i14, Object obj, int i15, int i16, int i17, boolean z10);

    native void rsnAllocationData2D(long j10, long j11, int i9, int i10, int i11, int i12, Bitmap bitmap);

    native void rsnAllocationData3D(long j10, long j11, int i9, int i10, int i11, int i12, int i13, int i14, int i15, long j12, int i16, int i17, int i18, int i19);

    native void rsnAllocationData3D(long j10, long j11, int i9, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, int i16, int i17, int i18, boolean z10);

    native void rsnAllocationElementData1D(long j10, long j11, int i9, int i10, int i11, byte[] bArr, int i12);

    native void rsnAllocationGenerateMipmaps(long j10, long j11);

    native ByteBuffer rsnAllocationGetByteBuffer(long j10, long j11, int i9, int i10, int i11);

    native long rsnAllocationGetStride(long j10, long j11);

    native long rsnAllocationGetType(long j10, long j11);

    native void rsnAllocationIoReceive(long j10, long j11);

    native void rsnAllocationIoSend(long j10, long j11);

    native void rsnAllocationRead(long j10, long j11, Object obj, int i9, int i10, boolean z10);

    native void rsnAllocationRead1D(long j10, long j11, int i9, int i10, int i11, Object obj, int i12, int i13, int i14, boolean z10);

    native void rsnAllocationRead2D(long j10, long j11, int i9, int i10, int i11, int i12, int i13, int i14, Object obj, int i15, int i16, int i17, boolean z10);

    native void rsnAllocationResize1D(long j10, long j11, int i9);

    native void rsnAllocationResize2D(long j10, long j11, int i9, int i10);

    native void rsnAllocationSetSurface(long j10, long j11, Surface surface);

    native void rsnAllocationSyncAll(long j10, long j11, int i9);

    native long rsnClosureCreate(long j10, long j11, long j12, long[] jArr, long[] jArr2, int[] iArr, long[] jArr3, long[] jArr4);

    native void rsnClosureSetArg(long j10, long j11, int i9, long j12, int i10);

    native void rsnClosureSetGlobal(long j10, long j11, long j12, long j13, int i9);

    native long rsnContextCreate(long j10, int i9, int i10, int i11, String str);

    native void rsnContextDestroy(long j10);

    native void rsnContextDump(long j10, int i9);

    native void rsnContextFinish(long j10);

    native void rsnContextSendMessage(long j10, int i9, int[] iArr);

    native void rsnContextSetPriority(long j10, int i9);

    native long rsnElementCreate(long j10, long j11, int i9, boolean z10, int i10);

    native long rsnElementCreate2(long j10, long[] jArr, String[] strArr, int[] iArr);

    native void rsnElementGetNativeData(long j10, long j11, int[] iArr);

    native void rsnElementGetSubElements(long j10, long j11, long[] jArr, String[] strArr, int[] iArr);

    native long rsnIncAllocationCreateTyped(long j10, long j11, long j12, long j13, int i9);

    native long rsnIncContextCreate(long j10, int i9, int i10, int i11);

    native void rsnIncContextDestroy(long j10);

    native void rsnIncContextFinish(long j10);

    native long rsnIncElementCreate(long j10, long j11, int i9, boolean z10, int i10);

    native void rsnIncObjDestroy(long j10, long j11);

    native long rsnIncTypeCreate(long j10, long j11, int i9, int i10, int i11, boolean z10, boolean z11, int i12);

    native long rsnInvokeClosureCreate(long j10, long j11, byte[] bArr, long[] jArr, long[] jArr2, int[] iArr);

    native void rsnObjDestroy(long j10, long j11);

    native long rsnSamplerCreate(long j10, int i9, int i10, int i11, int i12, int i13, float f10);

    native void rsnScriptBindAllocation(long j10, long j11, long j12, int i9, boolean z10);

    native long rsnScriptCCreate(long j10, String str, String str2, byte[] bArr, int i9);

    native long rsnScriptFieldIDCreate(long j10, long j11, int i9, boolean z10);

    native void rsnScriptForEach(long j10, long j11, int i9, long[] jArr, long j12, byte[] bArr, int[] iArr);

    native void rsnScriptForEach(long j10, long j11, long j12, int i9, long j13, long j14, boolean z10);

    native void rsnScriptForEach(long j10, long j11, long j12, int i9, long j13, long j14, byte[] bArr, boolean z10);

    native void rsnScriptForEachClipped(long j10, long j11, long j12, int i9, long j13, long j14, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10);

    native void rsnScriptForEachClipped(long j10, long j11, long j12, int i9, long j13, long j14, byte[] bArr, int i10, int i11, int i12, int i13, int i14, int i15, boolean z10);

    native long rsnScriptGroup2Create(long j10, String str, String str2, long[] jArr);

    native void rsnScriptGroup2Execute(long j10, long j11);

    native long rsnScriptGroupCreate(long j10, long[] jArr, long[] jArr2, long[] jArr3, long[] jArr4, long[] jArr5);

    native void rsnScriptGroupExecute(long j10, long j11);

    native void rsnScriptGroupSetInput(long j10, long j11, long j12, long j13);

    native void rsnScriptGroupSetOutput(long j10, long j11, long j12, long j13);

    native void rsnScriptIntrinsicBLAS_BNNM(long j10, long j11, long j12, int i9, int i10, int i11, long j13, int i12, long j14, int i13, long j15, int i14, int i15, boolean z10);

    native void rsnScriptIntrinsicBLAS_Complex(long j10, long j11, long j12, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f10, float f11, long j13, long j14, float f12, float f13, long j15, int i18, int i19, int i20, int i21, boolean z10);

    native void rsnScriptIntrinsicBLAS_Double(long j10, long j11, long j12, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, double d10, long j13, long j14, double d11, long j15, int i18, int i19, int i20, int i21, boolean z10);

    native void rsnScriptIntrinsicBLAS_Single(long j10, long j11, long j12, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, float f10, long j13, long j14, float f11, long j15, int i18, int i19, int i20, int i21, boolean z10);

    native void rsnScriptIntrinsicBLAS_Z(long j10, long j11, long j12, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, double d10, double d11, long j13, long j14, double d12, double d13, long j15, int i18, int i19, int i20, int i21, boolean z10);

    native long rsnScriptIntrinsicCreate(long j10, int i9, long j11, boolean z10);

    native void rsnScriptInvoke(long j10, long j11, int i9, boolean z10);

    native long rsnScriptInvokeIDCreate(long j10, long j11, int i9);

    native void rsnScriptInvokeV(long j10, long j11, int i9, byte[] bArr, boolean z10);

    native long rsnScriptKernelIDCreate(long j10, long j11, int i9, int i10, boolean z10);

    native void rsnScriptReduce(long j10, long j11, int i9, long[] jArr, long j12, int[] iArr);

    native void rsnScriptSetTimeZone(long j10, long j11, byte[] bArr, boolean z10);

    native void rsnScriptSetVarD(long j10, long j11, int i9, double d10, boolean z10);

    native void rsnScriptSetVarF(long j10, long j11, int i9, float f10, boolean z10);

    native void rsnScriptSetVarI(long j10, long j11, int i9, int i10, boolean z10);

    native void rsnScriptSetVarJ(long j10, long j11, int i9, long j12, boolean z10);

    native void rsnScriptSetVarObj(long j10, long j11, int i9, long j12, boolean z10);

    native void rsnScriptSetVarV(long j10, long j11, int i9, byte[] bArr, boolean z10);

    native void rsnScriptSetVarVE(long j10, long j11, int i9, byte[] bArr, long j12, int[] iArr, boolean z10);

    native long rsnTypeCreate(long j10, long j11, int i9, int i10, int i11, boolean z10, boolean z11, int i12);

    native void rsnTypeGetNativeData(long j10, long j11, long[] jArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public long safeID(BaseObj baseObj) {
        if (baseObj != null) {
            return baseObj.getID(this);
        }
        return 0L;
    }

    public void sendMessage(int i9, int[] iArr) {
        nContextSendMessage(i9, iArr);
    }

    public void setErrorHandler(RSErrorHandler rSErrorHandler) {
        this.mErrorCallback = rSErrorHandler;
    }

    public void setMessageHandler(RSMessageHandler rSMessageHandler) {
        this.mMessageCallback = rSMessageHandler;
    }

    public void setPriority(Priority priority) {
        validate();
        nContextSetPriority(priority.mID);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean usingIO() {
        return useIOlib;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void validate() {
        if (this.mContext == 0) {
            throw new RSInvalidStateException("Calling RS with no Context active.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void validateObject(BaseObj baseObj) {
        if (baseObj != null && baseObj.mRS != this) {
            throw new RSIllegalArgumentException("Attempting to use an object across contexts.");
        }
    }

    public static RenderScript create(Context context, ContextType contextType) {
        return create(context, contextType, 0);
    }

    public static RenderScript create(Context context, ContextType contextType, int i9) {
        return create(context, context.getApplicationInfo().targetSdkVersion, contextType, i9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationData2D(long j10, int i9, int i10, int i11, int i12, int i13, int i14, Object obj, int i15, Element.DataType dataType, int i16, boolean z10) {
        validate();
        rsnAllocationData2D(this.mContext, j10, i9, i10, i11, i12, i13, i14, obj, i15, dataType.mID, i16, z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationData3D(long j10, int i9, int i10, int i11, int i12, int i13, int i14, int i15, Object obj, int i16, Element.DataType dataType, int i17, boolean z10) {
        validate();
        rsnAllocationData3D(this.mContext, j10, i9, i10, i11, i12, i13, i14, i15, obj, i16, dataType.mID, i17, z10);
    }

    public static RenderScript create(Context context, int i9) {
        return create(context, i9, ContextType.NORMAL, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nScriptForEach(long j10, int i9, long[] jArr, long j11, byte[] bArr, int[] iArr) {
        if (this.mEnableMultiInput) {
            validate();
            rsnScriptForEach(this.mContext, j10, i9, jArr, j11, bArr, iArr);
        } else {
            Log.e(LOG_TAG, "Multi-input kernels are not supported, please change targetSdkVersion to >= 23");
            throw new RSRuntimeException("Multi-input kernels are not supported before API 23)");
        }
    }

    public static RenderScript create(Context context, int i9, ContextType contextType) {
        return create(context, i9, contextType, 0);
    }

    public static RenderScript create(Context context, int i9, ContextType contextType, int i10) {
        synchronized (mProcessContextList) {
            Iterator<RenderScript> it = mProcessContextList.iterator();
            while (it.hasNext()) {
                RenderScript next = it.next();
                if (next.mContextType == contextType && next.mContextFlags == i10 && next.mContextSdkVersion == i9) {
                    return next;
                }
            }
            RenderScript internalCreate = internalCreate(context, i9, contextType, i10);
            internalCreate.mIsProcessContext = true;
            mProcessContextList.add(internalCreate);
            return internalCreate;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void nAllocationData2D(long j10, int i9, int i10, int i11, int i12, Bitmap bitmap) {
        validate();
        rsnAllocationData2D(this.mContext, j10, i9, i10, i11, i12, bitmap);
    }
}
