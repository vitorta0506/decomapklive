package com.tencent.imsdk.signaling;

import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.common.IMCallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.common.IMLog;
import com.tencent.imsdk.manager.BaseManager;
import com.tencent.imsdk.message.Message;
import com.tencent.imsdk.message.MessageOfflinePushInfo;
import java.util.List;
/* loaded from: classes4.dex */
public class SignalingManager {
    private static String TAG = "SignalingManager";
    private SignalingListener mInternalSignalingListener;
    private SignalingListener mSignalingListener;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class SignalingManagerHolder {
        private static final SignalingManager signalingManager = new SignalingManager();

        private SignalingManagerHolder() {
        }
    }

    public static SignalingManager getInstance() {
        return SignalingManagerHolder.signalingManager;
    }

    private void initSignalingListener() {
        if (this.mInternalSignalingListener == null) {
            this.mInternalSignalingListener = new SignalingListener() { // from class: com.tencent.imsdk.signaling.SignalingManager.1
                @Override // com.tencent.imsdk.signaling.SignalingListener
                public void onInvitationCancelled(final String str, final String str2, final String str3) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.signaling.SignalingManager.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SignalingManager.this.mSignalingListener != null) {
                                SignalingManager.this.mSignalingListener.onInvitationCancelled(str, str2, str3);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.signaling.SignalingListener
                public void onInvitationModified(final String str, final String str2) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.signaling.SignalingManager.1.6
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SignalingManager.this.mSignalingListener != null) {
                                SignalingManager.this.mSignalingListener.onInvitationModified(str, str2);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.signaling.SignalingListener
                public void onInvitationTimeout(final String str, final List<String> list) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.signaling.SignalingManager.1.5
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SignalingManager.this.mSignalingListener != null) {
                                SignalingManager.this.mSignalingListener.onInvitationTimeout(str, list);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.signaling.SignalingListener
                public void onInviteeAccepted(final String str, final String str2, final String str3) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.signaling.SignalingManager.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SignalingManager.this.mSignalingListener != null) {
                                SignalingManager.this.mSignalingListener.onInviteeAccepted(str, str2, str3);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.signaling.SignalingListener
                public void onInviteeRejected(final String str, final String str2, final String str3) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.signaling.SignalingManager.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SignalingManager.this.mSignalingListener != null) {
                                SignalingManager.this.mSignalingListener.onInviteeRejected(str, str2, str3);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.signaling.SignalingListener
                public void onReceiveNewInvitation(final String str, final String str2, final String str3, final List<String> list, final String str4) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.signaling.SignalingManager.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (SignalingManager.this.mSignalingListener != null) {
                                SignalingManager.this.mSignalingListener.onReceiveNewInvitation(str, str2, str3, list, str4);
                            }
                        }
                    });
                }
            };
        }
        nativeSetSignalingObserver(this.mInternalSignalingListener);
    }

    public void accept(String str, String str2, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeAccept(str, str2, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void addInvitedSignaling(SignalingInfo signalingInfo, IMCallback iMCallback) {
        if (!BaseManager.getInstance().isInited()) {
            IMLog.e(TAG, "addInvitedSignaling error, sdk not init");
        } else {
            nativeAddInvitedSignaling(signalingInfo, iMCallback);
        }
    }

    public void cancel(String str, String str2, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeCancel(str, str2, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public SignalingInfo getSignalingInfo(Message message) {
        if (!BaseManager.getInstance().isInited()) {
            IMLog.e(TAG, "getSignalingInfo error, sdk not init");
            return null;
        }
        return nativeGetSignalingInfo(message);
    }

    public void init() {
        initSignalingListener();
    }

    public String invite(String str, String str2, boolean z10, MessageOfflinePushInfo messageOfflinePushInfo, int i9, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            return nativeInvite(str, str2, z10, messageOfflinePushInfo, i9, iMCallback);
        }
        if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
            return null;
        }
        return null;
    }

    public String inviteInGroup(String str, List<String> list, String str2, boolean z10, int i9, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            return nativeInviteInGroup(str, list, str2, z10, i9, iMCallback);
        }
        if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
            return null;
        }
        return null;
    }

    public void modifyInvitation(String str, String str2, IMCallback iMCallback) {
        if (!BaseManager.getInstance().isInited()) {
            IMLog.e(TAG, "modifyInvitation error, sdk not init");
        } else {
            nativeModifyInvitation(str, str2, iMCallback);
        }
    }

    protected native void nativeAccept(String str, String str2, IMCallback iMCallback);

    protected native void nativeAddInvitedSignaling(SignalingInfo signalingInfo, IMCallback iMCallback);

    protected native void nativeCancel(String str, String str2, IMCallback iMCallback);

    protected native SignalingInfo nativeGetSignalingInfo(Message message);

    protected native String nativeInvite(String str, String str2, boolean z10, MessageOfflinePushInfo messageOfflinePushInfo, int i9, IMCallback iMCallback);

    protected native String nativeInviteInGroup(String str, List<String> list, String str2, boolean z10, int i9, IMCallback iMCallback);

    protected native void nativeModifyInvitation(String str, String str2, IMCallback iMCallback);

    protected native void nativeReject(String str, String str2, IMCallback iMCallback);

    protected native void nativeSetSignalingObserver(SignalingListener signalingListener);

    public void reject(String str, String str2, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeReject(str, str2, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setSignalingListener(SignalingListener signalingListener) {
        this.mSignalingListener = signalingListener;
    }
}
