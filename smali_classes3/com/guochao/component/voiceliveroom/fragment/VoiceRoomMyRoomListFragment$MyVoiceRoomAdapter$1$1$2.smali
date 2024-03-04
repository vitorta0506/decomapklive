.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1;->invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/guochao/faceshow/aaspring/dialog/GCDialog;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $_adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field final synthetic $position:I

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;

.field final synthetic this$1:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;ILcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;",
            "I",
            "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;

    iput p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->$position:I

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->this$1:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;

    iput-object p4, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->$_adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->getRoomId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->this$1:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->$_adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    iget v3, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2;->$position:I

    .line 7
    invoke-static {v1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;->access$getMemberViewModel(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2$2$1;

    invoke-direct {v5, v1, v2, v3}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment$MyVoiceRoomAdapter$1$1$2$2$1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMyRoomListFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v5, v3, v2, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallbackKt;->callbackOnLifecycle$default(Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    move-result-object v1

    .line 9
    invoke-virtual {v4, v0, p1, v1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->memberRemove(Ljava/lang/String;Ljava/util/ArrayList;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V

    :cond_1
    return-void
.end method
