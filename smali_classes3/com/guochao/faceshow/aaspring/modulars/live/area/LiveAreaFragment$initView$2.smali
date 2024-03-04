.class public final Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;ILandroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;ILandroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaDialog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    invoke-virtual {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->dismissWithItem(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 9
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a027a

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0278

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a04e0

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a025e

    .line 5
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget v3, v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    const/4 v4, 0x1

    const/16 v5, 0x8

    const v6, 0x7f0f01d4

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v3, v8, :cond_0

    .line 7
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    const v8, 0x7f120af6

    invoke-virtual {v3, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogo:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    :goto_0
    const/4 v8, 0x3

    .line 12
    invoke-static {v1, v3, v6, v8}, Lhc/a;->r(Landroid/widget/ImageView;Ljava/lang/Object;II)V

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->isHot:I

    if-ne v1, v4, :cond_2

    const/4 v5, 0x0

    :cond_2
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.live.area.LiveAreaDialog"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaDialog;->getSelectCountry()Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;->getMDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget v2, v2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0603ce

    goto :goto_3

    :cond_4
    const v2, 0x7f06008d

    .line 17
    :goto_3
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/area/h;

    invoke-direct {v1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment$initView$2;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d022b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
