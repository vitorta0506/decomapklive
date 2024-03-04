package com.tencent.imsdk.manager;

import android.content.Context;
import android.util.Log;
import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.common.IMCallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.common.IMLog;
import com.tencent.imsdk.common.NetworkInfoCenter;
import com.tencent.imsdk.common.SystemUtil;
import com.tencent.imsdk.conversation.ConversationManager;
import com.tencent.imsdk.group.GroupManager;
import com.tencent.imsdk.manager.SDKConfig;
import com.tencent.imsdk.message.MessageCenter;
import com.tencent.imsdk.relationship.RelationshipManager;
import com.tencent.imsdk.relationship.UserInfo;
import com.tencent.imsdk.relationship.UserStatus;
import com.tencent.imsdk.signaling.SignalingManager;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class BaseManager implements NetworkInfoCenter.INetworkChangeListener {
    private static final String TAG = "BaseManager";
    public static final long TUI_COMPONENT_CHAT = 3;
    private static final int TUI_COMPONENT_CHECK_COUNT_LIMIT = 5;
    public static final long TUI_COMPONENT_COMMUNITY = 8;
    public static final long TUI_COMPONENT_CONTACT = 4;
    public static final long TUI_COMPONENT_CONVERSATION = 2;
    public static final long TUI_COMPONENT_CORE = 1;
    public static final long TUI_COMPONENT_GROUP = 5;
    public static final long TUI_COMPONENT_OFFLINEPUSH = 7;
    public static final long TUI_COMPONENT_SEARCH = 6;
    private static final int TUI_COMPONENT_STACK_LAYER_LIMIT = 10;
    public static final long TUI_COMPONENT_UNKNOWN = 0;
    public static final long TUI_STYLE_TYPE_CLASSIC = 0;
    public static final long TUI_STYLE_TYPE_MINIMALIST = 1;
    private static final int UI_PLATFORM_FLUTTER = 1;
    private static final int UI_PLATFORM_FLUTTER_UIKIT = 2;
    private static final int UI_PLATFORM_TUIKIT = 15;
    private static final int UI_PLATFORM_TUIKIT_MINIMALIST = 26;
    private static final int UI_PLATFORM_UNITY = 5;
    private static final int UI_PLATFORM_UNITY_UIKIT = 6;
    private static final int UI_PLATFORM_UNKNOWN = 0;
    private static boolean mLoadLibrarySuccess = false;
    private WeakReference<SDKListener> sdkListenerWeakReference;
    private boolean mInvokeFromTUIKit = false;
    private boolean mInvokeFromTUICore = false;
    private Map<Long, Long> mTUIComponentMap = new HashMap();
    private HashMap<Long, Integer> mTUIComponentCheckCountMap = new HashMap<>();
    private SDKConfig.NetworkInfo mLastNetworkInfo = new SDKConfig.NetworkInfo();
    private SDKConfig.ProxyInfo mProxyInfo = new SDKConfig.ProxyInfo();
    private SDKConfig.DatabaseEncryptInfo mDatabaseEncryptInfo = new SDKConfig.DatabaseEncryptInfo();
    private SDKConfig.PacketRetryInfo mPacketRetryInfo = new SDKConfig.PacketRetryInfo();
    private String mStringUIPlatform = "";
    private int mNumberUIPlatform = 0;
    private boolean isInit = false;
    private boolean isTestEnvironment = false;
    private boolean forceUseQuicChannel = false;
    private boolean isIPv6Prior = false;
    private UserPreference userPreference = new UserPreference();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class BaseManagerHolder {
        private static final BaseManager baseManager = new BaseManager();

        private BaseManagerHolder() {
        }
    }

    static {
        try {
            mLoadLibrarySuccess = SystemUtil.loadIMLibrary();
        } catch (Exception e10) {
            Log.e(TAG, e10.toString());
        }
    }

    public static BaseManager getInstance() {
        return BaseManagerHolder.baseManager;
    }

    private long getTUIChatStyle() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuichat.minimalistui.MinimalistUIService");
            return 1L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private long getTUIContactStyle() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuicontact.minimalistui.widget.FriendProfileLayout");
            return 1L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private long getTUIConversationStyle() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuiconversation.minimalistui.widget.ConversationListLayout");
            return 1L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private long getTUIGroupStyle() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuigroup.minimalistui.view.GroupInfoLayout");
            return 1L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private long getTUISearchStyle() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuisearch.minimalistui.page.SearchMainMinimalistActivity");
            return 1L;
        } catch (Exception unused) {
            return 0L;
        }
    }

    private int getUIPlatform() {
        int i9 = this.mNumberUIPlatform;
        if (i9 != 0) {
            return i9;
        }
        this.mInvokeFromTUIKit = isTUIKit();
        boolean isFlutter = isFlutter();
        boolean isUnity = isUnity();
        if (isFlutter) {
            return this.mInvokeFromTUIKit ? 2 : 1;
        } else if (isUnity) {
            return this.mInvokeFromTUIKit ? 6 : 5;
        } else if (this.mInvokeFromTUIKit) {
            return hasTUIKitMinimalist() ? 26 : 15;
        } else {
            return 0;
        }
    }

    private boolean hasTUIChat() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuichat.model.ChatProvider");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean hasTUICommunity() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuicommunity.model.CommunityProvider");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean hasTUIContact() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuicontact.model.ContactProvider");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean hasTUIConversation() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuiconversation.model.ConversationProvider");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean hasTUIGroup() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuigroup.model.GroupInfoProvider");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean hasTUIKitMinimalist() {
        return getTUIConversationStyle() == 1 || getTUIChatStyle() == 1 || getTUIContactStyle() == 1 || getTUIGroupStyle() == 1 || getTUISearchStyle() == 1;
    }

    private boolean hasTUIOfflinePush() {
        try {
            Class.forName("com.tencent.qcloud.tim.tuiofflinepush.TUIOfflinePushManager");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean hasTUISearch() {
        try {
            Class.forName("com.tencent.qcloud.tuikit.tuisearch.model.SearchDataProvider");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean isFlutter() {
        try {
            Class.forName("com.qq.qcloud.tencent_im_sdk_plugin.tencent_im_sdk_plugin");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean isTUICore() {
        try {
            Class.forName("com.tencent.qcloud.tuicore.TUICore");
            return true;
        } catch (ClassNotFoundException unused) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            for (int i9 = 0; i9 < stackTrace.length && i9 <= 15; i9++) {
                if (stackTrace[i9].getClassName().toLowerCase().contains("tuicore")) {
                    return true;
                }
            }
            return false;
        }
    }

    private boolean isTUIKit() {
        try {
            try {
                Class.forName("com.tencent.qcloud.tim.uikit.TUIKit");
                return true;
            } catch (Exception unused) {
                Class.forName("com.tencent.qcloud.tuicore.TUICore");
                return true;
            }
        } catch (ClassNotFoundException unused2) {
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            for (int i9 = 0; i9 < stackTrace.length && i9 <= 15; i9++) {
                String lowerCase = stackTrace[i9].getClassName().toLowerCase();
                if (lowerCase.contains("tuikitimpl") || lowerCase.contains("tuicore")) {
                    return true;
                }
            }
            return false;
        }
    }

    private boolean isUnity() {
        try {
            Class.forName("com.qcloud.tencentimsdk.TencentImSDKPluginUnity");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private void reportTUIComponentUsage() {
        this.mInvokeFromTUICore = isTUICore();
        this.mTUIComponentCheckCountMap.put(2L, 0);
        this.mTUIComponentCheckCountMap.put(3L, 0);
        this.mTUIComponentCheckCountMap.put(4L, 0);
        this.mTUIComponentCheckCountMap.put(5L, 0);
        this.mTUIComponentCheckCountMap.put(6L, 0);
        this.mTUIComponentCheckCountMap.put(7L, 0);
        this.mTUIComponentCheckCountMap.put(8L, 0);
        if (this.mInvokeFromTUIKit) {
            if (this.mInvokeFromTUICore) {
                this.mTUIComponentMap.put(1L, 0L);
                if (hasTUIConversation() && !this.mTUIComponentMap.containsKey(2L)) {
                    this.mTUIComponentMap.put(2L, Long.valueOf(getTUIConversationStyle()));
                }
                if (hasTUIChat() && !this.mTUIComponentMap.containsKey(3L)) {
                    this.mTUIComponentMap.put(3L, Long.valueOf(getTUIChatStyle()));
                }
                if (hasTUIContact() && !this.mTUIComponentMap.containsKey(4L)) {
                    this.mTUIComponentMap.put(4L, Long.valueOf(getTUIContactStyle()));
                }
                if (hasTUIGroup() && !this.mTUIComponentMap.containsKey(5L)) {
                    this.mTUIComponentMap.put(5L, Long.valueOf(getTUIGroupStyle()));
                }
                if (hasTUISearch() && !this.mTUIComponentMap.containsKey(6L)) {
                    this.mTUIComponentMap.put(6L, Long.valueOf(getTUISearchStyle()));
                }
                if (hasTUIOfflinePush() && !this.mTUIComponentMap.containsKey(7L)) {
                    this.mTUIComponentMap.put(7L, 0L);
                }
                if (hasTUICommunity() && !this.mTUIComponentMap.containsKey(8L)) {
                    this.mTUIComponentMap.put(8L, 0L);
                }
            } else {
                this.mTUIComponentMap.put(0L, 0L);
            }
            nativeReportTUIComponentUsage(this.mTUIComponentMap);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fc A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void checkTUIComponent(long r12) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.imsdk.manager.BaseManager.checkTUIComponent(long):void");
    }

    public void enableSignaling(boolean z10) {
        this.userPreference.setEnableSignaling(Boolean.valueOf(z10));
        nativeSetUserPreference(this.userPreference);
    }

    public long getClockTickInHz() {
        if (!this.isInit) {
            Log.e(TAG, "sdk not init");
            return 0L;
        }
        return nativeGetClockTickInHz();
    }

    public int getLoginStatus() {
        if (!this.isInit) {
            Log.e(TAG, "sdk not init");
            return 3;
        }
        return nativeGetLoginStatus();
    }

    public String getLoginUser() {
        if (!this.isInit) {
            Log.e(TAG, "sdk not init");
            return null;
        }
        return nativeGetLoginUser();
    }

    public long getServerTime() {
        if (!this.isInit) {
            Log.e(TAG, "sdk not init");
            return 0L;
        }
        return nativeGetServerTime();
    }

    public long getTimeTick() {
        if (!this.isInit) {
            Log.e(TAG, "sdk not init");
            return 0L;
        }
        return nativeGetTimeTick();
    }

    public String getVersion() {
        if (!this.isInit) {
            Log.e(TAG, "sdk not init");
            return null;
        }
        return nativeGetSDKVersion();
    }

    public void initLocalStorage(String str, IMCallback iMCallback) {
        if (this.isInit) {
            nativeInitLocalStorage(str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public boolean initSDK(Context context, SDKConfig sDKConfig, boolean z10, SDKListener sDKListener) {
        if (!mLoadLibrarySuccess) {
            IMLog.e(TAG, "libimsdk.so is not loaded");
            return false;
        } else if (sDKConfig.sdkAppId <= 0) {
            String str = TAG;
            IMLog.e(str, "invalid sdkAppID:" + sDKConfig.sdkAppId);
            return false;
        } else if (context == null) {
            IMLog.e(TAG, "null context");
            return false;
        } else if (this.isInit) {
            IMLog.w(TAG, "Has initSDK");
            return true;
        } else {
            IMContext.getInstance().init(context.getApplicationContext());
            NetworkInfoCenter.getInstance().init(context.getApplicationContext(), this);
            MessageCenter.getInstance().init();
            GroupManager.getInstance().init();
            ConversationManager.getInstance().init();
            RelationshipManager.getInstance().init();
            SignalingManager.getInstance().init();
            sDKConfig.sdkInitPath = SystemUtil.getSDKInitPath();
            sDKConfig.sdkInstanceType = SystemUtil.getInstanceType();
            sDKConfig.isTestEnvironment = this.isTestEnvironment;
            sDKConfig.forceUseQuicChannel = this.forceUseQuicChannel;
            sDKConfig.isIPv6Prior = this.isIPv6Prior;
            sDKConfig.deviceInfo.deviceType = SystemUtil.getDeviceType();
            sDKConfig.deviceInfo.deviceId = SystemUtil.getDeviceID();
            sDKConfig.deviceInfo.deviceBrand = SystemUtil.getInstanceType();
            sDKConfig.deviceInfo.systemVersion = SystemUtil.getSystemVersion();
            sDKConfig.networkInfo.networkType = NetworkInfoCenter.getInstance().getNetworkType();
            sDKConfig.networkInfo.ipType = NetworkInfoCenter.getInstance().getIPType();
            sDKConfig.networkInfo.networkId = NetworkInfoCenter.getInstance().getNetworkID();
            sDKConfig.networkInfo.wifiNetworkHandle = NetworkInfoCenter.getInstance().getWifiNetworkHandle();
            sDKConfig.networkInfo.xgNetworkHandle = NetworkInfoCenter.getInstance().getXgNetworkHandle();
            sDKConfig.networkInfo.initializeCostTime = NetworkInfoCenter.getInstance().getInitializeCostTime();
            sDKConfig.networkInfo.networkConnected = NetworkInfoCenter.getInstance().isNetworkConnected();
            sDKConfig.proxyInfo = this.mProxyInfo;
            sDKConfig.databaseEncryptInfo = this.mDatabaseEncryptInfo;
            sDKConfig.packetRetryInfo = this.mPacketRetryInfo;
            SDKConfig.LogSetting logSetting = sDKConfig.logSetting;
            logSetting.enableConsoleLog = true;
            logSetting.logFilePath = SystemUtil.getSDKLogPath();
            sDKConfig.stringUIPlatform = this.mStringUIPlatform;
            sDKConfig.numberUIPlatform = getUIPlatform();
            this.mLastNetworkInfo = sDKConfig.networkInfo;
            nativeInitSDK(sDKConfig, z10, sDKListener);
            this.sdkListenerWeakReference = new WeakReference<>(sDKListener);
            reportTUIComponentUsage();
            this.isInit = true;
            return true;
        }
    }

    public void isCommercialAbilityEnabled(long j10, IMCallback<Object> iMCallback) {
        nativeIsCommercialAbilityEnabled(j10, iMCallback);
    }

    public boolean isInited() {
        return this.isInit;
    }

    public void login(String str, String str2, IMCallback iMCallback) {
        if (this.isInit) {
            nativeLogin(str, str2, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void logout(IMCallback iMCallback) {
        if (this.isInit) {
            nativeLogout(iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    protected native long nativeGetClockTickInHz();

    protected native int nativeGetLoginStatus();

    protected native String nativeGetLoginUser();

    protected native String nativeGetSDKVersion();

    protected native long nativeGetServerTime();

    protected native long nativeGetTimeTick();

    protected native void nativeInitLocalStorage(String str, IMCallback iMCallback);

    protected native void nativeInitSDK(SDKConfig sDKConfig, boolean z10, SDKListener sDKListener);

    protected native void nativeIsCommercialAbilityEnabled(long j10, IMCallback iMCallback);

    protected native void nativeLogin(String str, String str2, IMCallback iMCallback);

    protected native void nativeLogout(IMCallback iMCallback);

    protected native void nativeNotifyNetworkChange(boolean z10, int i9, int i10, String str, long j10, long j11, long j12);

    protected native void nativeReportTUIComponentUsage(Map<Long, Long> map);

    protected native void nativeSetCustomServerInfo(CustomServerInfo customServerInfo);

    protected native void nativeSetUserPreference(UserPreference userPreference);

    protected native void nativeUninitSDK();

    public void notifySelfInfoUpdated(UserInfo userInfo) {
        SDKListener sDKListener;
        WeakReference<SDKListener> weakReference = this.sdkListenerWeakReference;
        if (weakReference == null || (sDKListener = weakReference.get()) == null) {
            return;
        }
        sDKListener.onSelfInfoUpdated(userInfo);
    }

    public void notifyUserStatusChanged(List<UserStatus> list) {
        SDKListener sDKListener;
        WeakReference<SDKListener> weakReference = this.sdkListenerWeakReference;
        if (weakReference == null || (sDKListener = weakReference.get()) == null) {
            return;
        }
        sDKListener.onUserStatusChanged(list);
    }

    @Override // com.tencent.imsdk.common.NetworkInfoCenter.INetworkChangeListener
    public void onNetworkChange(boolean z10, int i9, int i10, String str, long j10, long j11, long j12) {
        SDKConfig.NetworkInfo networkInfo = this.mLastNetworkInfo;
        if (z10 == networkInfo.networkConnected && i9 == networkInfo.networkType && i10 == networkInfo.ipType && str != null && str.equals(networkInfo.networkId)) {
            Log.w(TAG, "onNetworkChange, networkinfo is same");
            return;
        }
        SDKConfig.NetworkInfo networkInfo2 = this.mLastNetworkInfo;
        networkInfo2.networkConnected = z10;
        networkInfo2.networkType = i9;
        networkInfo2.ipType = i10;
        networkInfo2.networkId = str;
        networkInfo2.initializeCostTime = j12;
        nativeNotifyNetworkChange(z10, i9, i10, str, j10, j11, j12);
    }

    public void setCustomServerInfo(CustomServerInfo customServerInfo) {
        nativeSetCustomServerInfo(customServerInfo);
    }

    public void setCustomUIPlatform(String str, int i9) {
        this.mStringUIPlatform = str;
        this.mNumberUIPlatform = i9;
    }

    public void setDatabaseEncryptInfo(SDKConfig.DatabaseEncryptInfo databaseEncryptInfo) {
        this.mDatabaseEncryptInfo = databaseEncryptInfo;
    }

    public void setForceUseQuicChannel(boolean z10) {
        this.forceUseQuicChannel = z10;
    }

    public void setIPv6Prior(boolean z10) {
        this.isIPv6Prior = z10;
    }

    public boolean setLibraryPath(String str) {
        boolean loadIMLibrary = SystemUtil.loadIMLibrary(str);
        mLoadLibrarySuccess = loadIMLibrary;
        return loadIMLibrary;
    }

    public void setPacketRetryInfo(SDKConfig.PacketRetryInfo packetRetryInfo) {
        this.mPacketRetryInfo = packetRetryInfo;
    }

    public void setProxyInfo(SDKConfig.ProxyInfo proxyInfo) {
        this.mProxyInfo = proxyInfo;
    }

    public void setTestEnvironment(boolean z10) {
        this.isTestEnvironment = z10;
    }

    public void unInitSDK() {
        nativeUninitSDK();
        this.mStringUIPlatform = "";
        this.mNumberUIPlatform = 0;
        this.isInit = false;
        this.isTestEnvironment = false;
        this.forceUseQuicChannel = false;
        this.isIPv6Prior = false;
        this.mLastNetworkInfo.clean();
        this.mProxyInfo.clean();
        this.mDatabaseEncryptInfo.clean();
        this.mPacketRetryInfo.clean();
        this.mInvokeFromTUIKit = false;
        this.mInvokeFromTUICore = false;
        this.mTUIComponentMap.clear();
        this.mTUIComponentCheckCountMap.clear();
    }
}
