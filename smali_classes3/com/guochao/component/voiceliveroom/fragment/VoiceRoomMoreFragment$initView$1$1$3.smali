.class final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1;->invoke(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;)V
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
.field final synthetic $this_$receiver:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;


# direct methods
.method constructor <init>(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;->$this_$receiver:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

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

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;->$this_$receiver:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->getSelectState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->setSelectState(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$initView$1$1$3;->this$0:Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;

    invoke-virtual {p1}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;->getViewBinding()Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/component/liveroom/databinding/FragmentVoliceRoomMoreBinding;->recentRV:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
