.class public final Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2",
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
.field final synthetic this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;ILcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->onBindViewHolder$lambda-0(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;ILcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;ILcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;Landroid/view/View;)V
    .locals 1

    const-string/jumbo p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$1"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p3

    instance-of p3, p3, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    invoke-virtual {p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getMDataList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    invoke-virtual {p3, p0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->dismissWithItem(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

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

    const v2, 0x7f0a0a49

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a025e

    .line 5
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getMDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getMDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryLogoRect:Ljava/lang/String;

    :goto_0
    const/16 v3, 0x8

    .line 8
    invoke-static {v1, v0, v3}, Lhc/a;->s(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.mine.view.fragment.LiveAreaSettingDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingDialog;->getSelectCountry()Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;->getMDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0170

    .line 10
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    const v0, 0x7f0f016f

    .line 11
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    new-instance v1, Lcom/guochao/faceshow/mine/view/fragment/f;

    invoke-direct {v1, v0, p2, p0}, Lcom/guochao/faceshow/mine/view/fragment/f;-><init>(Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;ILcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment$initView$2;->this$0:Lcom/guochao/faceshow/mine/view/fragment/LiveAreaSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d022c

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
