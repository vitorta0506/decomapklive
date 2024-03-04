package com.tencent.imsdk.message;

import com.tencent.imsdk.BaseConstants;
import com.tencent.imsdk.common.IMCallback;
import com.tencent.imsdk.common.IMContext;
import com.tencent.imsdk.common.IMLog;
import com.tencent.imsdk.manager.BaseManager;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes4.dex */
public class MessageCenter {
    private static final String TAG = "MessageCenter";
    private MessageListener mMessageListener;
    private Object mLockObject = new Object();
    private CopyOnWriteArrayList<MessageListener> mMessageProxyListenerList = new CopyOnWriteArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class MessageCenterHolder {
        private static final MessageCenter messageCenter = new MessageCenter();

        private MessageCenterHolder() {
        }
    }

    protected MessageCenter() {
    }

    public static MessageCenter getInstance() {
        return MessageCenterHolder.messageCenter;
    }

    private void initMessageListener() {
        MessageListener messageListener = new MessageListener() { // from class: com.tencent.imsdk.message.MessageCenter.1
            @Override // com.tencent.imsdk.message.MessageListener
            public void onReceiveC2CMessageReceipt(final List<C2CMessageReceipt> list) {
                IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.message.MessageCenter.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (MessageCenter.this.mLockObject) {
                            Iterator it = MessageCenter.this.mMessageProxyListenerList.iterator();
                            while (it.hasNext()) {
                                ((MessageListener) it.next()).onReceiveC2CMessageReceipt(list);
                            }
                        }
                    }
                });
            }

            @Override // com.tencent.imsdk.message.MessageListener
            public void onReceiveGroupMessageReceipt(final List<GroupMessageReceipt> list) {
                IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.message.MessageCenter.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it = MessageCenter.this.mMessageProxyListenerList.iterator();
                        while (it.hasNext()) {
                            ((MessageListener) it.next()).onReceiveGroupMessageReceipt(list);
                        }
                    }
                });
            }

            @Override // com.tencent.imsdk.message.MessageListener
            public void onReceiveMessageExtensionsChanged(final MessageKey messageKey, final List<MessageExtension> list) {
                IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.message.MessageCenter.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (MessageCenter.this.mLockObject) {
                            Iterator it = MessageCenter.this.mMessageProxyListenerList.iterator();
                            while (it.hasNext()) {
                                ((MessageListener) it.next()).onReceiveMessageExtensionsChanged(messageKey, list);
                            }
                        }
                    }
                });
            }

            @Override // com.tencent.imsdk.message.MessageListener
            public void onReceiveMessageExtensionsDeleted(final MessageKey messageKey, final List<MessageExtension> list) {
                IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.message.MessageCenter.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (MessageCenter.this.mLockObject) {
                            Iterator it = MessageCenter.this.mMessageProxyListenerList.iterator();
                            while (it.hasNext()) {
                                ((MessageListener) it.next()).onReceiveMessageExtensionsDeleted(messageKey, list);
                            }
                        }
                    }
                });
            }

            @Override // com.tencent.imsdk.message.MessageListener
            public void onReceiveMessageModified(final List<Message> list) {
                IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.message.MessageCenter.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (MessageCenter.this.mLockObject) {
                            Iterator it = MessageCenter.this.mMessageProxyListenerList.iterator();
                            while (it.hasNext()) {
                                ((MessageListener) it.next()).onReceiveMessageModified(list);
                            }
                        }
                    }
                });
            }

            @Override // com.tencent.imsdk.message.MessageListener
            public void onReceiveMessageRevoked(final List<MessageKey> list) {
                IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.message.MessageCenter.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (MessageCenter.this.mLockObject) {
                            Iterator it = MessageCenter.this.mMessageProxyListenerList.iterator();
                            while (it.hasNext()) {
                                ((MessageListener) it.next()).onReceiveMessageRevoked(list);
                            }
                        }
                    }
                });
            }

            @Override // com.tencent.imsdk.message.MessageListener
            public void onReceiveNewMessage(final List<Message> list) {
                IMContext.getInstance().runOnMainThread(new Runnable() { // from class: com.tencent.imsdk.message.MessageCenter.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        synchronized (MessageCenter.this.mLockObject) {
                            Iterator it = MessageCenter.this.mMessageProxyListenerList.iterator();
                            while (it.hasNext()) {
                                ((MessageListener) it.next()).onReceiveNewMessage(list);
                            }
                        }
                    }
                });
            }
        };
        this.mMessageListener = messageListener;
        nativeSetMessageListener(messageListener);
    }

    public void addMessageListener(MessageListener messageListener) {
        synchronized (this.mLockObject) {
            this.mMessageProxyListenerList.add(messageListener);
        }
    }

    public void clearC2CHistoryMessage(String str, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeClearC2CHistoryMessage(str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void clearC2CLocalMessage(String str, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeClearC2CLocalMessage(str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void clearGroupHistoryMessage(String str, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeClearGroupHistoryMessage(str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void clearGroupLocalMessage(String str, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeClearGroupLocalMessage(str, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void deleteCloudMessageList(List<MessageKey> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDeleteCloudMessageList(list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void deleteLocalMessage(MessageKey messageKey, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDeleteLocalMessage(messageKey, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void deleteMessageExtensions(Message message, List<String> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDeleteMessageExtensions(message, list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void downloadMessageElement(DownloadParam downloadParam, IMCallback<DownloadProgressInfo> iMCallback, IMCallback iMCallback2) {
        if (BaseManager.getInstance().isInited()) {
            nativeDownloadMessageElement(downloadParam, iMCallback, iMCallback2);
        } else if (iMCallback2 != null) {
            iMCallback2.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void downloadRelayMessageList(Message message, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeDownloadRelayMessageList(message, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void findMessageByMessageId(List<String> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeFindMessageByMessageID(list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void findMessageBySearchKey(MessageSearchParam messageSearchParam, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeFindMessageBySearchKey(messageSearchParam, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getC2CHistoryMessageList(String str, MessageListGetOption messageListGetOption, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetC2CHistoryMessageList(str, messageListGetOption, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getDownloadUrl(DownloadParam downloadParam, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetDownloadUrl(downloadParam, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getGroupHistoryMessageList(String str, MessageListGetOption messageListGetOption, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetGroupHistoryMessageList(str, messageListGetOption, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getGroupMessageReadMembers(Message message, int i9, long j10, int i10, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetGroupMessageReadMembers(message, i9, j10, i10, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getGroupMessageReceipts(List<MessageKey> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetGroupMessageReceipts(list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void getMessageExtensions(Message message, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeGetMessageExtensions(message, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void init() {
        initMessageListener();
    }

    public String insertLocalMessage(Message message, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            return nativeInsertLocalMessage(message, iMCallback);
        }
        if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
            return null;
        }
        return null;
    }

    public boolean isMessagePeerRead(MessageKey messageKey) {
        if (!BaseManager.getInstance().isInited()) {
            IMLog.e(TAG, "sdk not ini");
            return false;
        }
        return nativeIsMessagePeerRead(messageKey);
    }

    public boolean isMessageSelfRead(MessageKey messageKey) {
        if (!BaseManager.getInstance().isInited()) {
            IMLog.e(TAG, "sdk not ini");
            return false;
        }
        return nativeIsMessageSelfRead(messageKey);
    }

    public void modifyMessage(Message message, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeModifyMessage(message, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    protected native void nativeClearC2CHistoryMessage(String str, IMCallback iMCallback);

    protected native void nativeClearC2CLocalMessage(String str, IMCallback iMCallback);

    protected native void nativeClearGroupHistoryMessage(String str, IMCallback iMCallback);

    protected native void nativeClearGroupLocalMessage(String str, IMCallback iMCallback);

    protected native void nativeDeleteCloudMessageList(List<MessageKey> list, IMCallback iMCallback);

    protected native void nativeDeleteLocalMessage(MessageKey messageKey, IMCallback iMCallback);

    protected native void nativeDeleteMessageExtensions(Message message, List<String> list, IMCallback iMCallback);

    protected native void nativeDownloadMessageElement(DownloadParam downloadParam, IMCallback iMCallback, IMCallback iMCallback2);

    protected native void nativeDownloadRelayMessageList(Message message, IMCallback iMCallback);

    protected native void nativeFindMessageByMessageID(List<String> list, IMCallback iMCallback);

    protected native void nativeFindMessageBySearchKey(MessageSearchParam messageSearchParam, IMCallback iMCallback);

    protected native void nativeGetC2CHistoryMessageList(String str, MessageListGetOption messageListGetOption, IMCallback iMCallback);

    protected native void nativeGetDownloadUrl(DownloadParam downloadParam, IMCallback iMCallback);

    protected native void nativeGetGroupHistoryMessageList(String str, MessageListGetOption messageListGetOption, IMCallback iMCallback);

    protected native void nativeGetGroupMessageReadMembers(Message message, int i9, long j10, int i10, IMCallback iMCallback);

    protected native void nativeGetGroupMessageReceipts(List<MessageKey> list, IMCallback iMCallback);

    protected native void nativeGetMessageExtensions(Message message, IMCallback iMCallback);

    protected native String nativeInsertLocalMessage(Message message, IMCallback iMCallback);

    protected native boolean nativeIsMessagePeerRead(MessageKey messageKey);

    protected native boolean nativeIsMessageSelfRead(MessageKey messageKey);

    protected native void nativeModifyMessage(Message message, IMCallback iMCallback);

    protected native void nativeRevokeMessage(MessageKey messageKey, IMCallback iMCallback);

    protected native String nativeSendMessage(Message message, MessageUploadProgressCallback messageUploadProgressCallback, IMCallback iMCallback);

    protected native void nativeSendMessageReceipts(List<MessageKey> list, IMCallback iMCallback);

    protected native void nativeSetC2CMessageRead(String str, long j10, IMCallback iMCallback);

    protected native void nativeSetGroupMessageRead(String str, long j10, IMCallback iMCallback);

    protected native void nativeSetLocalCustomNumber(Message message, int i9);

    protected native void nativeSetLocalCustomString(Message message, String str);

    protected native void nativeSetMessageExtensions(Message message, List<MessageExtension> list, IMCallback iMCallback);

    protected native void nativeSetMessageListener(MessageListener messageListener);

    public void revokeMessage(MessageKey messageKey, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeRevokeMessage(messageKey, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public String sendMessage(Message message, MessageUploadProgressCallback messageUploadProgressCallback, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            return nativeSendMessage(message, messageUploadProgressCallback, iMCallback);
        }
        if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
            return null;
        }
        return null;
    }

    public void sendMessageReceipts(List<MessageKey> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSendMessageReceipts(list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setC2CMessageRead(String str, long j10, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetC2CMessageRead(str, j10, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setGroupMessageRead(String str, long j10, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetGroupMessageRead(str, j10, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }

    public void setLocalCustomNumber(Message message, int i9) {
        nativeSetLocalCustomNumber(message, i9);
    }

    public void setLocalCustomString(Message message, String str) {
        nativeSetLocalCustomString(message, str);
    }

    public void setMessageExtensions(Message message, List<MessageExtension> list, IMCallback iMCallback) {
        if (BaseManager.getInstance().isInited()) {
            nativeSetMessageExtensions(message, list, iMCallback);
        } else if (iMCallback != null) {
            iMCallback.fail(BaseConstants.ERR_SDK_NOT_INITIALIZED, "sdk not init");
        }
    }
}
