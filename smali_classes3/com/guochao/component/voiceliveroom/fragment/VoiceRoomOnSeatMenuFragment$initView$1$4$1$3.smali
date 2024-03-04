.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1;->invoke(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$3;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$3;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$3;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1389

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    .line 4
    sget v0, Lcom/guochao/component/liveroom/R$string;->permission_rejection:I

    .line 5
    invoke-static {p1, v0, v3, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const/16 v0, 0x138e

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment$initView$1$4$1$3;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomOnSeatMenuFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    sget v0, Lcom/guochao/component/liveroom/R$string;->voice_room_tips_close_micro_5006:I

    .line 8
    invoke-static {p1, v0, v3, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    :cond_2
    :goto_0
    return-void
.end method
