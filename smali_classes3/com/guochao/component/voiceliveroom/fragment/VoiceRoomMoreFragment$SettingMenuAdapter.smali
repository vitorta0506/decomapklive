.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingMenuAdapter"
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B,\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000cH\u0016J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000cH\u0016R\u001f\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0008\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "list",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
        "click",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "getItemCount",
        "",
        "onBindViewHolder",
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
.field private final click:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "click"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->list:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->click:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic a(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-1$lambda-0(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->click:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->list:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

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
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$id;->nameTV:I

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->getStrId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    sget v0, Lcom/guochao/component/liveroom/R$id;->icon:I

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->getIconId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 5
    sget v0, Lcom/guochao/component/liveroom/R$id;->extra:I

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->getExtraText()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->getExtraText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMoreModel;->getSelectState()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 7
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

    sget v1, Lcom/guochao/component/liveroom/R$layout;->item_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026item_more, parent, false)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 5
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "itemView"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/component/voiceliveroom/fragment/g0;

    invoke-direct {v4, p0, p2}, Lcom/guochao/component/voiceliveroom/fragment/g0;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomMoreFragment$SettingMenuAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-object p2
.end method
