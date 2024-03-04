.class final Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;->showPeopleInfoCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
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
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
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
.field final synthetic $seatIndex:Ljava/lang/Integer;

.field final synthetic $userId:Ljava/lang/String;

.field final synthetic $voiceId:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->$voiceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->$seatIndex:Ljava/lang/Integer;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->invoke(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
    .locals 7
    .param p1    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$requireGCLiveRoomModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy;->Companion:Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy$Companion;

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v0, "requireActivity()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->$userId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->getLiveRoomId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->$voiceId:Ljava/lang/String;

    iget-object v6, p0, Lcom/guochao/component/voiceliveroom/fragment/BaseGCLiveRoomFragment$showPeopleInfoCard$1;->$seatIndex:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v6}, Lcom/guochao/lib_service_center/userinfo/UserInfoCardProxy$Companion;->start(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
