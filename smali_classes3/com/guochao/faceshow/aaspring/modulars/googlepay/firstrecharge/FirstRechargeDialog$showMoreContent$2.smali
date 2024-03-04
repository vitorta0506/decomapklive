.class public final Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->showMoreContent(Ljava/util/List;)V
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
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
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
.field final synthetic $data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/GiftBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->$data:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->$data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

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
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge p2, v2, :cond_0

    .line 3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41700000    # 15.0f

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 5
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    .line 7
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0572

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->$data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->access$setImageResouse(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0575

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->$data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0576

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->$data:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/GiftBean;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;->access$setNumber(Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/GiftBean;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/FirstRechargeDialog$showMoreContent$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0237

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
