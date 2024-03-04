.class final Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->showAdminArea$lambda-10(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;Landroid/view/View;)V
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
.field final synthetic $model:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->$model:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/dialog/GCDialog;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/dialog/GCDialog;)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/aaspring/dialog/GCDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showProgressDialog$default(Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;Ljava/lang/CharSequence;ILjava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->access$getViewModel(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;->access$getRoomId(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->$model:Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VoiceRoomPeopleInfoModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 7
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1$1;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;

    invoke-direct {v3, v4, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2$showAdminArea$3$1$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragmentV2;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewmodel/VoiceRoomPeopleCardInfoViewModel;->forbiddenTalk(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
