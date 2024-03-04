.class public final Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/adapter/BaseViewHolder;",
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
        "component_mvp_release"
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
.field final synthetic $data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;",
            "Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->$data:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->$data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/adapter/BaseViewHolder;I)V
    .locals 5
    .param p1    # Lcom/guochao/faceshow/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x41400000    # 12.0f

    .line 3
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    .line 4
    :goto_0
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v4, v2, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/guochao/component/mvp/R$id;->imageView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "holder.itemView.findViewById(R.id.imageView)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    iget-object v2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->$data:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "data[position]"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/guochao/component/mvp/model/TypeData;

    .line 8
    sget v2, Lcom/guochao/component/mvp/R$id;->nameTV:I

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getType()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_a

    if-eq v2, v1, :cond_8

    const/4 v1, 0x4

    if-eq v2, v1, :cond_6

    const/4 v1, 0x5

    if-eq v2, v1, :cond_4

    const/16 v1, 0x8

    if-eq v2, v1, :cond_2

    .line 10
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v1

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    if-nez p1, :cond_1

    goto/16 :goto_7

    .line 11
    :cond_1
    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto/16 :goto_7

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_2
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto/16 :goto_7

    :cond_6
    if-nez p1, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    sget v2, Lcom/guochao/component/mvp/R$string;->mvp_only_for_you_badge:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :goto_3
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto/16 :goto_7

    :cond_8
    if-nez p1, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    sget v2, Lcom/guochao/component/mvp/R$string;->i_want_to_charge_shade:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :goto_4
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_7

    :cond_a
    if-nez p1, :cond_b

    goto :goto_5

    .line 20
    :cond_b
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    sget v2, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_head:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :goto_5
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_7

    :cond_c
    if-nez p1, :cond_d

    goto :goto_6

    .line 22
    :cond_d
    iget-object v1, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    sget v2, Lcom/guochao/component/mvp/R$string;->mvp_get_title_tips_car:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_6
    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/component/mvp/model/TypeData;->getConfData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/request/a;->m()Lcom/bumptech/glide/request/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/g;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_7

    .line 24
    :cond_e
    sget p2, Lcom/guochao/component/mvp/R$mipmap;->ic_mvp_diamond:I

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p1, :cond_f

    goto :goto_7

    .line 25
    :cond_f
    iget-object p2, p0, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->this$0:Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment;

    sget v0, Lcom/guochao/component/mvp/R$string;->mvp_only_for_you_diamond:I

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/component/mvp/fragment/GiftSelectSuccessFragment$initView$4$3$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/adapter/BaseViewHolder;
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
    new-instance p2, Lcom/guochao/faceshow/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/guochao/component/mvp/R$layout;->item_get_gift_content:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
