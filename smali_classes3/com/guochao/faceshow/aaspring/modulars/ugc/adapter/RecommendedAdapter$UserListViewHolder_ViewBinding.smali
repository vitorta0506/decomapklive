.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fd

    const-string v2, "field \'avatarBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cc7

    const-string v2, "field \'tvNickName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvNickName:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d1f

    const-string v2, "field \'tvUserId\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvUserId:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c72

    const-string v2, "field \'tvDistance\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvDistance:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d06

    const-string v2, "field \'tvTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvTime:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cfb

    const-string v2, "field \'tvSignature\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvSignature:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06eb

    const-string v2, "field \'llPeopleNearby\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->llPeopleNearby:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0dfb

    const-string v1, "field \'viewBg\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewBg:Landroid/view/View;

    const v0, 0x7f0a0e02

    const-string v1, "field \'viewLine\'"

    .line 11
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewLine:Landroid/view/View;

    .line 12
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0e13

    const-string v2, "field \'vipIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->avatarBg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvNickName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvUserId:Landroid/widget/TextView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvDistance:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvTime:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->tvSignature:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->llPeopleNearby:Landroid/widget/LinearLayout;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewBg:Landroid/view/View;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->viewLine:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/RecommendedAdapter$UserListViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
