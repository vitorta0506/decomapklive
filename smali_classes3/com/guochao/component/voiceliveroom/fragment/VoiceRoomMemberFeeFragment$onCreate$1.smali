.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;",
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

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;->invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;)V
    .locals 3
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->feeConfTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMin()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;->getJoinRoomMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    invoke-static {v0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->access$setLoadConf$p(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberFeeConf;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment$onCreate$1;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMemberFeeFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMemberFeeBinding;->okTV:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
