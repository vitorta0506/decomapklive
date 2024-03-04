package com.tencent.thumbplayer.core.common;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import com.facebook.internal.ServerProtocol;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;
@RequiresApi(api = 17)
/* loaded from: classes4.dex */
public class TPScreenRefreshRateDetector {
    public static final int DISPLAY_CHANGE = 10001;
    private static String TAG = "TPScreenRefreshRateDetector";
    private static boolean isInitted = false;
    private static WeakReference<Context> mContext;
    private static Handler mHandler;
    private static WindowManager mWindowManager;
    private static List<ScreenRefreshRateChangedListener> listeners = new LinkedList();
    private static float mCurScreenRefreshRate = 60.0f;
    private static DisplayManager mDisplayManager = null;
    private static DisplayManager.DisplayListener mDisplayListener = new DisplayManager.DisplayListener() { // from class: com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector.2
        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i9) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i9) {
            if (i9 == 0) {
                TPScreenRefreshRateDetector.mHandler.sendEmptyMessage(10001);
            }
            TPNativeLog.printLog(2, TPScreenRefreshRateDetector.TAG, "onDisplayChanged displayId:".concat(String.valueOf(i9)));
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i9) {
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface ScreenRefreshRateChangedListener {
        void onScreenRefreshRateChanged(float f10);
    }

    public static void addListener(ScreenRefreshRateChangedListener screenRefreshRateChangedListener) {
        synchronized (TPScreenRefreshRateDetector.class) {
            listeners.add(screenRefreshRateChangedListener);
        }
    }

    public static void deinit() {
        WeakReference<Context> weakReference;
        synchronized (TPScreenRefreshRateDetector.class) {
            if (isInitted && (weakReference = mContext) != null) {
                weakReference.clear();
                isInitted = false;
                TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector deinit succeed!");
            }
        }
    }

    private static Looper getLooper() {
        Looper myLooper = Looper.myLooper();
        return myLooper != null ? myLooper : Looper.getMainLooper();
    }

    public static float getScreenRefreshRate() {
        String str;
        String str2;
        if (Build.VERSION.SDK_INT < 23) {
            str = TAG;
            str2 = "Current version can not get screen refresh rate, set default.";
        } else {
            WeakReference<Context> weakReference = mContext;
            if (weakReference != null) {
                Context context = weakReference.get();
                if (context != null) {
                    if (mWindowManager == null) {
                        mWindowManager = (WindowManager) context.getSystemService("window");
                    }
                    if (mDisplayManager == null) {
                        DisplayManager displayManager = (DisplayManager) context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
                        mDisplayManager = displayManager;
                        displayManager.registerDisplayListener(mDisplayListener, mHandler);
                    }
                    WindowManager windowManager = mWindowManager;
                    if (windowManager != null) {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        Display.Mode[] supportedModes = defaultDisplay.getSupportedModes();
                        Display.Mode mode = defaultDisplay.getMode();
                        String str3 = TAG;
                        TPNativeLog.printLog(2, str3, "getMode width:" + mode.getPhysicalWidth() + " height:" + mode.getPhysicalHeight() + " refreshRate:" + mode.getRefreshRate() + " ModeId:" + mode.getModeId());
                        String str4 = TAG;
                        StringBuilder sb2 = new StringBuilder("getSupportedModes length:");
                        sb2.append(supportedModes.length);
                        TPNativeLog.printLog(2, str4, sb2.toString());
                        for (int i9 = 0; i9 < supportedModes.length; i9++) {
                            String str5 = TAG;
                            TPNativeLog.printLog(2, str5, "getSupportedModes width:" + supportedModes[i9].getPhysicalWidth() + " height:" + supportedModes[i9].getPhysicalHeight() + " refreshRate:" + supportedModes[i9].getRefreshRate() + " ModeId:" + supportedModes[i9].getModeId());
                        }
                        mCurScreenRefreshRate = mode.getRefreshRate();
                    }
                }
                return mCurScreenRefreshRate;
            }
            str = TAG;
            str2 = "Current mContext is null, set default.";
        }
        TPNativeLog.printLog(4, str, str2);
        return mCurScreenRefreshRate;
    }

    public static void init(Context context) {
        synchronized (TPScreenRefreshRateDetector.class) {
            TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector init enter!");
            if (isInitted) {
                return;
            }
            mContext = new WeakReference<>(context.getApplicationContext());
            isInitted = true;
            initHandleMsg();
            TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector init succeed!");
        }
    }

    public static void initHandleMsg() {
        mHandler = new Handler(getLooper()) { // from class: com.tencent.thumbplayer.core.common.TPScreenRefreshRateDetector.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what == 10001 && TPScreenRefreshRateDetector.mDisplayManager != null) {
                    Display display = TPScreenRefreshRateDetector.mDisplayManager.getDisplay(0);
                    String mode = display.getMode().toString();
                    String str = TPScreenRefreshRateDetector.TAG;
                    TPNativeLog.printLog(2, str, "handleMessage DISPLAY_CHANGE, mode:" + mode.toString());
                    TPScreenRefreshRateDetector.notifyScreenRefreshRateChange(display.getMode().getRefreshRate());
                }
                super.handleMessage(message);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyScreenRefreshRateChange(float f10) {
        boolean z10;
        if (Math.abs(f10 - mCurScreenRefreshRate) >= 1.0f) {
            String str = TAG;
            TPNativeLog.printLog(2, str, "notifyScreenRefreshRateChange Change From " + mCurScreenRefreshRate + " to " + f10);
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            mCurScreenRefreshRate = f10;
            synchronized (TPScreenRefreshRateDetector.class) {
                for (ScreenRefreshRateChangedListener screenRefreshRateChangedListener : listeners) {
                    screenRefreshRateChangedListener.onScreenRefreshRateChanged(f10);
                }
            }
        }
    }

    public static void removeListener(ScreenRefreshRateChangedListener screenRefreshRateChangedListener) {
        synchronized (TPScreenRefreshRateDetector.class) {
            listeners.remove(screenRefreshRateChangedListener);
        }
    }
}
