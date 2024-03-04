.class public Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c0a

    const-string v2, "field \'tvDefault\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvDefault:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c0b

    const-string v2, "field \'tvDefaultTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvDefaultTip:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a0929

    const-string v2, "field \'rbDefault\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    const v0, 0x7f0a09a9

    const-string v1, "field \'rlDefaultLayout\' and method \'onViewClicked\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 7
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlDefaultLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlDefaultLayout:Landroid/widget/RelativeLayout;

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->d:Landroid/view/View;

    .line 9
    new-instance v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c20

    const-string v2, "field \'tvNotNeighborhood\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvNotNeighborhood:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c21

    const-string v2, "field \'tvNotNeighborhoodTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvNotNeighborhoodTip:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a092b

    const-string v2, "field \'rbNotNeighborhood\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    const v0, 0x7f0a09b1

    const-string v1, "field \'rlNotNeighborhoodLayout\' and method \'onViewClicked\'"

    .line 13
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 14
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlNotNeighborhoodLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlNotNeighborhoodLayout:Landroid/widget/RelativeLayout;

    .line 15
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->e:Landroid/view/View;

    .line 16
    new-instance v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c23

    const-string v2, "field \'tvOnlyToFriends\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvOnlyToFriends:Landroid/widget/TextView;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c24

    const-string v2, "field \'tvOnlyToFriendsTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvOnlyToFriendsTip:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a092c

    const-string v2, "field \'rbOnlyToFriends\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    const v0, 0x7f0a09b2

    const-string v1, "field \'rlOnlyToFriendsLayout\' and method \'onViewClicked\'"

    .line 20
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 21
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlOnlyToFriendsLayout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlOnlyToFriendsLayout:Landroid/widget/RelativeLayout;

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->f:Landroid/view/View;

    .line 23
    new-instance v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c06

    const-string v2, "field \'tvClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvClose:Landroid/widget/TextView;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c07

    const-string v2, "field \'tvCloseTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvCloseTip:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/RadioButton;

    const v1, 0x7f0a0928

    const-string v2, "field \'rbClose\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    const v0, 0x7f0a09a7

    const-string v1, "field \'rlCloseLayout\' and method \'onViewClicked\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 28
    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'rlCloseLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlCloseLayout:Landroid/widget/RelativeLayout;

    .line 29
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->g:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding$d;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvDefault:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvDefaultTip:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlDefaultLayout:Landroid/widget/RelativeLayout;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvNotNeighborhood:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvNotNeighborhoodTip:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlNotNeighborhoodLayout:Landroid/widget/RelativeLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvOnlyToFriends:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvOnlyToFriendsTip:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlOnlyToFriendsLayout:Landroid/widget/RelativeLayout;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvClose:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->tvCloseTip:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rlCloseLayout:Landroid/widget/RelativeLayout;

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->d:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->e:Landroid/view/View;

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->f:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity_ViewBinding;->g:Landroid/view/View;

    .line 27
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
