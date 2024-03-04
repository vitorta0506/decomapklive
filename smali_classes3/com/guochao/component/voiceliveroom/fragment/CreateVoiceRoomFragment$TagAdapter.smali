.class public final Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TagAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0008H\u0016J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0008H\u0016R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "list",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
        "(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Ljava/util/List;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->list:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->onBindViewHolder$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->setCurrentSelect(I)V

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
    .locals 3
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->this$0:Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;

    .line 3
    sget v1, Lcom/guochao/component/liveroom/R$id;->text:I

    invoke-virtual {p1, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;->getCurrentSelect()I

    move-result v1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setSelected(Z)V

    .line 6
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/component/voiceliveroom/fragment/b;

    invoke-direct {v1, v0, p1, p0}, Lcom/guochao/component/voiceliveroom/fragment/b;-><init>(Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/CreateVoiceRoomFragment$TagAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lcom/guochao/component/liveroom/R$layout;->grid_item_tag_adapter:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026g_adapter, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
