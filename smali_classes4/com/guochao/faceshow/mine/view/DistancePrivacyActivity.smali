.class public Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field rbClose:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rbDefault:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rbNotNeighborhood:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rbOnlyToFriends:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlCloseLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlDefaultLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlNotNeighborhoodLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlOnlyToFriendsLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvClose:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCloseTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDefault:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDefaultTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNotNeighborhood:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNotNeighborhoodTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvOnlyToFriends:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvOnlyToFriendsTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    new-instance v1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    new-instance v1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    new-instance v1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    new-instance v1, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->DISTANCE_MODE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "distance"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "nearby"

    .line 4
    invoke-virtual {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "friends"

    .line 5
    invoke-virtual {p1, v0, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "language"

    const-string v1, "1"

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "closeDistance"

    .line 7
    invoke-virtual {p1, v0, p5}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v6, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private initData()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->DISTANCE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->DISTANCE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->NEARBY:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->FRIENDS:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->CLOSEDISTANCE:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0098

    return v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120815

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->initData()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->d0()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string/jumbo v0, "userId"

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 7
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    const-string v6, "2"

    const-string v7, "1"

    const-string v8, "2"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 13
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    const-string v6, "1"

    const-string v7, "2"

    const-string v8, "2"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 19
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    const-string v6, "2"

    const-string v7, "2"

    const-string v8, "2"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbClose:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbDefault:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbNotNeighborhood:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->rbOnlyToFriends:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 25
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    const-string v6, "2"

    const-string v7, "2"

    const-string v8, "1"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/mine/view/DistancePrivacyActivity;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a09a7 -> :sswitch_3
        0x7f0a09a9 -> :sswitch_2
        0x7f0a09b1 -> :sswitch_1
        0x7f0a09b2 -> :sswitch_0
    .end sparse-switch
.end method
