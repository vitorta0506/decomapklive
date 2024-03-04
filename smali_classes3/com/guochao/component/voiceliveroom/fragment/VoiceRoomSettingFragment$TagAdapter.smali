.class public final Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\u0008J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0008H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "tags",
        "",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
        "(Ljava/util/List;)V",
        "currentSelected",
        "",
        "currentTag",
        "getItemCount",
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
.field private currentSelected:I

.field private final tags:Ljava/util/List;
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


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->tags:Ljava/util/List;

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;

    .line 5
    invoke-virtual {v2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iput v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->currentSelected:I

    return-void
.end method

.method public static synthetic a(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->onCreateViewHolder$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreateViewHolder$lambda-3$lambda-2(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    iput p1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->currentSelected:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final currentTag()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->currentSelected:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->tags:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->getId()I

    move-result v1

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-object v2, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->tags:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->getId()I

    move-result v1

    :cond_2
    return v1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->tags:Ljava/util/List;

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->onBindViewHolder(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V

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
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->tags:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;

    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->currentSelected:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 4
    sget v0, Lcom/guochao/component/liveroom/R$id;->text:I

    invoke-virtual {p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 3
    sget v0, Lcom/guochao/component/liveroom/R$layout;->grid_item_tag_adapter:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    sget p2, Lcom/guochao/component/liveroom/R$id;->text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/guochao/component/liveroom/R$drawable;->bg_tag_voice_setting:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 7
    sget v1, Lcom/guochao/component/liveroom/R$color;->voice_room_tag_text_color_setting:I

    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 9
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const-string p2, "from(parent.context)\n   \u2026  )\n                    }"

    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p2, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 12
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string p1, "itemView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/guochao/component/voiceliveroom/fragment/d1;

    invoke-direct {v3, p0, p2}, Lcom/guochao/component/voiceliveroom/fragment/d1;-><init>(Lcom/guochao/component/voiceliveroom/fragment/VoiceRoomSettingFragment$TagAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-object p2
.end method
