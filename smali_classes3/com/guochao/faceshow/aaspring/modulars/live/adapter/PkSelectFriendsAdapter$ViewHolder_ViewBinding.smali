.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;

    .line 3
    const-class v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a00fc

    const-string v2, "field \'avatarUser\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d1c

    const-string v2, "field \'tvUserName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->tvUserName:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a06b6

    const-string v2, "field \'livingStatus\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->livingStatus:Landroid/widget/ImageView;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06b5

    const-string v2, "field \'living\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->living:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0d95

    const-string v2, "field \'userGender\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGender:Landroid/widget/ImageView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0d84

    const-string v2, "field \'userAge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userAge:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0d97

    const-string v2, "field \'userGenderAge\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    .line 10
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a058f

    const-string v2, "field \'ivApply\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->ivApply:Landroid/widget/ImageView;

    .line 11
    const-class v0, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v1, 0x7f0a0e14

    const-string v2, "field \'vipIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->tvUserName:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->livingStatus:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->living:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGender:Landroid/widget/ImageView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userAge:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->userGenderAge:Landroid/widget/LinearLayout;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->ivApply:Landroid/widget/ImageView;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/PkSelectFriendsAdapter$ViewHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
