package com.tencent.imsdk.conversation;

import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.common.IMCallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.manager.BaseManager;
import com.tencent.imsdk.message.DraftMessage;
import java.util.List;
/* loaded from: classes4.dex */
public class ConversationManager {
    private static final String TAG = "ConversationManager";
    private ConversationListener mConversationListener;
    private ConversationListener mInternalConversationListener;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class ConversationManagerHolder {
        private static final ConversationManager conversationManager = new ConversationManager();

        private ConversationManagerHolder() {
        }
    }

    public static ConversationManager getInstance() {
        return ConversationManagerHolder.conversationManager;
    }

    private void initInternalConversationListener() {
        if (this.mInternalConversationListener == null) {
            this.mInternalConversationListener = new ConversationListener() { // from class: com.tencent.imsdk.conversation.ConversationManager.1
                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onConversationChanged(final List<Conversation> list) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.5
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onConversationChanged(list);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onConversationGroupCreated(final String str, final List<Conversation> list) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.7
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onConversationGroupCreated(str, list);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onConversationGroupDeleted(final String str) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.8
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onConversationGroupDeleted(str);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onConversationGroupNameChanged(final String str, final String str2) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.9
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onConversationGroupNameChanged(str, str2);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onConversationsAddedToGroup(final String str, final List<Conversation> list) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.10
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onConversationsAddedToGroup(str, list);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onConversationsDeletedFromGroup(final String str, final List<Conversation> list) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.11
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onConversationsDeletedFromGroup(str, list);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onNewConversation(final List<Conversation> list) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.4
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onNewConversation(list);
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onSyncServerFailed() {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.3
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onSyncServerFailed();
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onSyncServerFinish() {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onSyncServerFinish();
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onSyncServerStart() {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onSyncServerStart();
                            }
                        }
                    });
                }

                @Override // com.tencent.imsdk.conversation.ConversationListener
                public void onTotalUnreadMessageCountChanged(final long j10) {
                    IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.conversation.ConversationManager.1.6
                        @Override // java.lang.Runnable
                        public void run() {
                            if (ConversationManager.this.mConversationListener != null) {
                                ConversationManager.this.mConversationListener.onTotalUnreadMessageCountChanged(j10);
                            }
                        }
                    });
                }
            };
        }
        nativeSetConversationListener(this.mInternalConversationListener);
    }

    public void addConversationsToGroup(String str, List<ConversationKey> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeAddConversationsToGroup(str, list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void clearUnreadMessage(boolean z10, boolean z11, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeClearUnreadMessage(z10, z11, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void createConversationGroup(String str, List<ConversationKey> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeCreateConversationGroup(str, list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void deleteConversation(ConversationKey conversationKey, boolean z10, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDeleteConversation(conversationKey, z10, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void deleteConversationGroup(String str, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDeleteConversationGroup(str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void deleteConversationsFromGroup(String str, List<ConversationKey> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDeleteConversationsFromGroup(str, list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getConversationGroupList(IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetConversationGroupList(iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getConversationInfo(ConversationKey conversationKey, IMCallback<Conversation> iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetConversationInfo(conversationKey, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getConversationList(long j10, int i9, IMCallback<ConversationResult> iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetConversationList(j10, i9, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getConversationListByFilter(ConversationListFilter conversationListFilter, IMCallback<ConversationResult> iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetConversationListByFilter(conversationListFilter, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getTotalUnreadMessageCount(IMCallback<Long> iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetTotalUnreadMessageCount(iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void init() {
        initInternalConversationListener();
    }

    public void markConversation(List<ConversationKey> list, long j10, boolean z10, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeMarkConversation(list, j10, z10, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    protected native void nativeAddConversationsToGroup(String str, List<ConversationKey> list, IMCallback iMCallback);

    protected native void nativeClearUnreadMessage(boolean z10, boolean z11, IMCallback iMCallback);

    protected native void nativeCreateConversationGroup(String str, List<ConversationKey> list, IMCallback iMCallback);

    protected native void nativeDeleteConversation(ConversationKey conversationKey, boolean z10, IMCallback iMCallback);

    protected native void nativeDeleteConversationGroup(String str, IMCallback iMCallback);

    protected native void nativeDeleteConversationsFromGroup(String str, List<ConversationKey> list, IMCallback iMCallback);

    protected native void nativeGetConversationGroupList(IMCallback iMCallback);

    protected native void nativeGetConversationInfo(ConversationKey conversationKey, IMCallback iMCallback);

    protected native void nativeGetConversationList(long j10, int i9, IMCallback iMCallback);

    protected native void nativeGetConversationListByFilter(ConversationListFilter conversationListFilter, IMCallback iMCallback);

    protected native void nativeGetConversations(List<ConversationKey> list, IMCallback iMCallback);

    protected native void nativeGetTotalUnreadMessageCount(IMCallback iMCallback);

    protected native void nativeMarkConversation(List<ConversationKey> list, long j10, boolean z10, IMCallback iMCallback);

    protected native void nativePinConversation(ConversationKey conversationKey, boolean z10, IMCallback iMCallback);

    protected native void nativeRenameConversationGroup(String str, String str2, IMCallback iMCallback);

    protected native void nativeSetConversationCustomData(List<ConversationKey> list, String str, IMCallback iMCallback);

    protected native void nativeSetConversationDraft(ConversationKey conversationKey, DraftMessage draftMessage, IMCallback iMCallback);

    protected native void nativeSetConversationListener(ConversationListener conversationListener);

    protected native void nativeSetCosSaveRegionForConversation(ConversationKey conversationKey, String str, IMCallback iMCallback);

    public void pinConversation(ConversationKey conversationKey, boolean z10, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativePinConversation(conversationKey, z10, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void renameConversationGroup(String str, String str2, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeRenameConversationGroup(str, str2, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setConversationCustomData(List<ConversationKey> list, String str, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetConversationCustomData(list, str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setConversationDraft(ConversationKey conversationKey, DraftMessage draftMessage, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetConversationDraft(conversationKey, draftMessage, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setConversationListener(ConversationListener conversationListener) {
        this.mConversationListener = conversationListener;
    }

    public void setCosSaveRegionForConversation(ConversationKey conversationKey, String str, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetCosSaveRegionForConversation(conversationKey, str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getConversationList(List<ConversationKey> list, IMCallback<List<Conversation>> iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetConversations(list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }
}
