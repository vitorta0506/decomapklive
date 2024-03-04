.class public final Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->initView()V
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
        "com/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;

    .line 3
    iget v0, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->stateId:I

    const/4 v1, -0x1

    const-string v2, "it.name"

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 6
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    const v2, 0x7f0f03e6

    .line 8
    invoke-static {v0, p1, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$setContentLay(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 11
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    const v2, 0x7f0f03e9

    .line 13
    invoke-static {v0, p1, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$setContentLay(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 16
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    const v2, 0x7f0f03e7

    .line 18
    invoke-static {v0, p1, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$setContentLay(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    const v2, 0x7f0f03ea

    .line 23
    invoke-static {v0, p1, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$setContentLay(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    .line 25
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 26
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    const v2, 0x7f0f03eb

    .line 28
    invoke-static {v0, p1, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$setContentLay(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    .line 30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    .line 31
    iget-object v1, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean;->countryOfStateList:Ljava/util/List;

    const v2, 0x7f0f03e8

    .line 33
    invoke-static {v0, p1, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;->access$setContentLay(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity$initView$3;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaMoreActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d033d

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
