.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LivePermissionsHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder$a;

.field civHeader:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTips:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0249

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/OnLineMember;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->tvTips:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1209bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getSignature()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->civHeader:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getImg()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0f0089

    invoke-static {v0, p1, v1}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a016e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0201

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/OnLineMember;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder$a;

    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->a:Lcom/guochao/faceshow/aaspring/beans/OnLineMember;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder$a;->a(Lcom/guochao/faceshow/aaspring/beans/OnLineMember;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setOnCancelClickListener(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LivePermissionsFragment$LivePermissionsHolder$a;

    return-void
.end method
