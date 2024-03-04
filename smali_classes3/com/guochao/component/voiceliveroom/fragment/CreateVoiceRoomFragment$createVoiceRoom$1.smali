.class final Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$createVoiceRoom$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->createVoiceRoom(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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
.field final synthetic $gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$createVoiceRoom$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$createVoiceRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$createVoiceRoom$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 45
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$createVoiceRoom$1;->$gcValueCallback:Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;

    invoke-interface {v2, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/callback/GCValueCallback;->onValue(Ljava/lang/Object;)V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v15, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-object v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v15

    move/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, -0x1

    const/16 v43, 0x1

    const/16 v44, 0x0

    invoke-direct/range {v4 .. v44}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    sget-object v4, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->Companion:Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;

    invoke-virtual {v4}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoomId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {v3, v6}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setUserId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel$Companion;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 9
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setId(I)V

    .line 10
    :cond_4
    invoke-virtual {v3, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setChatGroupId(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$createVoiceRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 13
    :cond_5
    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$createVoiceRoom$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_6
    return-void
.end method
