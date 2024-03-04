.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->showMoreContent(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        "getItemCount",
        "",
        "getItemViewType",
        "position",
        "onBindViewHolder",
        "",
        "holder",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "app_GooglePlayRelease"
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
.field final synthetic $datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->$datas:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->$datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->$datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3e9

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->$datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-ge p2, v0, :cond_1

    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x40f00000    # 7.5f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->$datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;

    if-eqz p2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;

    .line 8
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0522

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->access$setImageResouse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    .line 9
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0b77

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0c64

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;->access$setTextViewCount(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/FirstChargeGiftBean$ItemBean;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeResultDialog$showMoreContent$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0269

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0236

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
