package com.tencent.imsdk.offlinePush;

import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.common.IMCallback;
import com.tencent.imsdk.manager.BaseManager;
/* loaded from: classes4.dex */
public class OfflinePushManager {

    /* loaded from: classes4.dex */
    private static class OfflinePushManagerHolder {
        private static final OfflinePushManager offlinePushManager = new OfflinePushManager();

        private OfflinePushManagerHolder() {
        }
    }

    public static OfflinePushManager getInstance() {
        return OfflinePushManagerHolder.offlinePushManager;
    }

    public void doEnterBackground(EnterBackgroundParam enterBackgroundParam, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDoEnterBackground(enterBackgroundParam, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void doEnterForeground(EnterForegroundParam enterForegroundParam, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDoEnterForeground(enterForegroundParam, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getOfflinePushConfig(IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetOfflinePushConfig(iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    protected native void nativeDoEnterBackground(EnterBackgroundParam enterBackgroundParam, IMCallback iMCallback);

    protected native void nativeDoEnterForeground(EnterForegroundParam enterForegroundParam, IMCallback iMCallback);

    protected native void nativeGetOfflinePushConfig(IMCallback iMCallback);

    protected native void nativeSetOfflinePushConfig(OfflinePushConfig offlinePushConfig, IMCallback iMCallback);

    protected native void nativeSetOfflinePushToken(OfflinePushToken offlinePushToken, IMCallback iMCallback);

    public void setOfflinePushConfig(OfflinePushConfig offlinePushConfig, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetOfflinePushConfig(offlinePushConfig, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setOfflinePushToken(OfflinePushToken offlinePushToken, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetOfflinePushToken(offlinePushToken, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }
}
