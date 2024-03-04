.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

.field check:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field topDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userGenderAge:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0246

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b()V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;ZI)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->userName:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->a:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->check:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;->isSelect()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->check:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    const/16 p1, 0x8

    if-lez p3, :cond_1

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->topDivider:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->topDivider:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0d86

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a0dc5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/InviteViewHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
