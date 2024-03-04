.class public final Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel<",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        ">;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0014J\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000bR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;",
        "Lo7/a;",
        "gcimMessage",
        "",
        "dispatchGCIMMessage",
        "",
        "onCleared",
        "setNewInvite",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;",
        "message",
        "createVoiceRoomInviteNotification",
        "Landroidx/lifecycle/MutableLiveData;",
        "_liveDataNewInvite",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/LiveData;",
        "newInvite",
        "Landroidx/lifecycle/LiveData;",
        "getNewInvite",
        "()Landroidx/lifecycle/LiveData;",
        "<init>",
        "()V",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final _liveDataNewInvite:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final newInvite:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;->_liveDataNewInvite:Landroidx/lifecycle/MutableLiveData;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;->newInvite:Landroidx/lifecycle/LiveData;

    .line 4
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/gc_message_dispatchers"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister"

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    .line 7
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;->registerDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V

    return-void
.end method


# virtual methods
.method public final createVoiceRoomInviteNotification(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/voice_room_invite"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.lib_service_center.push.notification.IVoiceRoomNotification"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/lib_service_center/push/notification/IVoiceRoomNotification;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;->getRoomId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;->getChatGroupId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {v0, v2, p1, v1}, Lcom/guochao/lib_service_center/push/notification/IVoiceRoomNotification;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchGCIMMessage(Lo7/a;)Z
    .locals 2
    .param p1    # Lo7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcimMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "\u6536\u5230\u9080\u8bf7\u901a\u77e5CMD"

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;->_liveDataNewInvite:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;->createVoiceRoomInviteNotification(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDInviteMessageModel;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final getNewInvite()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;->newInvite:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->onCleared()V

    .line 2
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/app/gc_message_dispatchers"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.im_messages.IGCIMMessageDispatcherRegister"

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/im_messages/IGCIMMessageDispatcherRegister;->unregisterDispatcher(Lcom/guochao/faceshow/aaspring/base/im_messages/dispatcher/GCIMMessageDispatcher;)V

    return-void
.end method

.method public final setNewInvite()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/listener/VoiceRoomInviteMessageViewModel;->_liveDataNewInvite:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
