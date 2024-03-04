package com.guochao.faceshow.aaspring.utils.listener;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.guochao.component.voiceliveroom.model.VoiceRoomCMDMessageModel;
import com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister;
import com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher;
import com.guochao.faceshow.aaspring.base.mvvm.model.BaseModel;
import com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel;
import com.guochao.faceshow.aaspring.base.navigator.RouterPath;
import com.guochao.faceshow.aaspring.utils.ToastUtils;
import com.guochao.lib_service_center.push.notification.IVoiceRoomNotification;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import o.a;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0014J\u0006\u0010\n\u001a\u00020\bJ\u000e\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00060\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;", "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;", "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;", "Lo7/a;", "gcimMessage", "", "dispatchGCIMMessage", "", "onCleared", "setNewInvite", "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;", "message", "createVoiceRoomInviteNotification", "Landroidx/lifecycle/MutableLiveData;", "_liveDataNewInvite", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/lifecycle/LiveData;", "newInvite", "Landroidx/lifecycle/LiveData;", "getNewInvite", "()Landroidx/lifecycle/LiveData;", "<init>", "()V", "component_liveroom_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class VoiceRoomInviteMessageViewModel extends BaseViewModel<BaseModel> implements GCIMMessageDispatcher {
    @NotNull
    private final MutableLiveData<Boolean> _liveDataNewInvite;
    @NotNull
    private final LiveData<Boolean> newInvite;

    public VoiceRoomInviteMessageViewModel() {
        MutableLiveData<Boolean> mutableLiveData = new MutableLiveData<>();
        this._liveDataNewInvite = mutableLiveData;
        this.newInvite = mutableLiveData;
        Object navigation = a.c().a(RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister");
        ((IGCIMMessageDispatcherRegister) navigation).registerDispatcher(this);
    }

    public final void createVoiceRoomInviteNotification(@NotNull VoiceRoomCMDMessageModel.VoiceRoomCMDInviteMessageModel message) {
        String roomId;
        String chatGroupId;
        Intrinsics.checkNotNullParameter(message, "message");
        Object navigation = a.c().a(RouterPath.ROUTER_VOICE_ROOM_INVITE).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.lib_service_center.push.notification.IVoiceRoomNotification");
        IVoiceRoomNotification iVoiceRoomNotification = (IVoiceRoomNotification) navigation;
        String nickName = message.getNickName();
        if (nickName == null || (roomId = message.getRoomId()) == null || (chatGroupId = message.getChatGroupId()) == null) {
            return;
        }
        iVoiceRoomNotification.start(roomId, chatGroupId, nickName);
    }

    @Override // com.guochao.faceshow.aaspring.base.im_messages.dispatcher.GCIMMessageDispatcher
    public boolean dispatchGCIMMessage(@NotNull o7.a gcimMessage) {
        Intrinsics.checkNotNullParameter(gcimMessage, "gcimMessage");
        if (gcimMessage instanceof VoiceRoomCMDMessageModel.VoiceRoomCMDInviteMessageModel) {
            ToastUtils.debugToast(null, "收到邀请通知CMD");
            this._liveDataNewInvite.setValue(Boolean.TRUE);
            createVoiceRoomInviteNotification((VoiceRoomCMDMessageModel.VoiceRoomCMDInviteMessageModel) gcimMessage);
            return true;
        }
        return false;
    }

    @NotNull
    public final LiveData<Boolean> getNewInvite() {
        return this.newInvite;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.guochao.faceshow.aaspring.base.mvvm.viewmodel.BaseViewModel, androidx.lifecycle.ViewModel
    public void onCleared() {
        super.onCleared();
        Object navigation = a.c().a(RouterPath.ROUTER_GC_MESSAGE_DISPATCHERS).navigation();
        Intrinsics.checkNotNull(navigation, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister");
        ((IGCIMMessageDispatcherRegister) navigation).unregisterDispatcher(this);
    }

    public final void setNewInvite() {
        this._liveDataNewInvite.setValue(Boolean.FALSE);
    }
}
