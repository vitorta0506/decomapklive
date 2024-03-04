.class final Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;",
        "invoke",
        "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)Ljava/lang/Boolean;"
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
.field final synthetic $userId:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1$1$1$1;->$userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1$1$1$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1$1$1$1;->$userId:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1$1$1$1;->this$0:Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object v3

    const/16 v4, 0x1e

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->setMemberType(I)V

    .line 4
    :goto_1
    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;->getModel()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->getUserId()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    sget-object v3, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    invoke-static {v2}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;->access$getMSeatControllerViewModel$p(Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel;)Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomSeatControllerViewModel;->setRoleType(I)V

    :cond_4
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/viewmodel/VoiceRoomMemberViewModel$memberRemove$1$1$1$1;->invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberListItemModel;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
