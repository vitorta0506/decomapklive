.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->initView$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "_code",
        "",
        "_msg",
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
.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$2;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p2, 0xc351

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$initView$3$2;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/guochao/component/liveroom/R$string;->permission_rejection:I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;IIILjava/lang/Object;)Landroid/widget/Toast;

    :cond_0
    return-void
.end method
