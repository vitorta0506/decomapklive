.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;
.super Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;
.source "SourceFile"


# instance fields
.field private d:Lcom/opensource/svgaplayer/SVGAImageView;

.field private e:Landroid/view/View;

.field private f:Lcom/guochao/faceshow/views/NormalCircleImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Lp7/h;

.field private k:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->X1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->Z1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->Y1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->V1()V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method private V1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private W1(Landroid/content/Context;IZI)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const p4, 0x7f0f01f8

    goto :goto_0

    :cond_0
    const p4, 0x7f0f01f7

    .line 1
    :goto_0
    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string p3, "Win"

    goto :goto_1

    :cond_1
    const p3, 0x7f1205d5

    .line 2
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_1
    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    const-string p2, "%s : {diamond} %s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez p4, :cond_2

    return-object p3

    .line 4
    :cond_2
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    .line 5
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 6
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 7
    invoke-virtual {v2, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    invoke-virtual {v2, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 9
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    mul-float v1, v1, p1

    float-to-int v1, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p2, p2, v2

    int-to-float v0, v0

    div-float/2addr p2, v0

    float-to-int p2, p2

    mul-float p1, p1, v2

    float-to-int p1, p1

    .line 10
    invoke-virtual {p4, v3, v1, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    new-instance p1, Lcom/guochao/faceshow/views/r;

    invoke-direct {p1, p4}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "{diamond}"

    invoke-virtual {p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_3

    add-int/lit8 p4, p2, 0x9

    .line 13
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p4, v0, :cond_3

    const/16 v0, 0x11

    .line 14
    invoke-virtual {p3, p1, p2, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-object p3
.end method

.method private synthetic X1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->V1()V

    return-void
.end method

.method private static synthetic Y1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic Z1(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->j:Lp7/h;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->j:Lp7/h;

    invoke-interface {v0}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->j:Lp7/h;

    invoke-interface {v1}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a2(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Lp7/h;ILjava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    check-cast p2, Landroid/os/Parcelable;

    const-string v2, "userAvatar"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "liveRoomModel"

    .line 4
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "winDiamond"

    .line 5
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "realNumber"

    .line 6
    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "flag"

    .line 7
    invoke-virtual {v1, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 8
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    const-string p2, "rewardDiamond"

    .line 9
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 11
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0134

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "userAvatar"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lp7/h;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->j:Lp7/h;

    const-string v1, "liveRoomModel"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const-string v2, "winDiamond"

    .line 5
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "rewardDiamond"

    .line 6
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "realNumber"

    .line 7
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "flag"

    .line 8
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 9
    new-instance v5, La9/c;

    invoke-direct {v5, p0}, La9/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0af9

    .line 10
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    const v5, 0x7f0a0139

    .line 11
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->e:Landroid/view/View;

    .line 12
    sget-object v6, La9/e;->a:La9/e;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0d86

    .line 13
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/views/NormalCircleImageView;

    iput-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->f:Lcom/guochao/faceshow/views/NormalCircleImageView;

    const v5, 0x7f0a0d92

    .line 14
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/views/NormalCircleImageView;

    .line 15
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->f:Lcom/guochao/faceshow/views/NormalCircleImageView;

    new-instance v7, La9/d;

    invoke-direct {v7, p0}, La9/d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0e6b

    .line 16
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->g:Landroid/widget/TextView;

    const v6, 0x7f0a093f

    .line 17
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 18
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a02c1

    .line 19
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 20
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->g:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->j:Lp7/h;

    invoke-interface {v8}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->g:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSelected(Z)V

    .line 23
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->f:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->j:Lp7/h;

    invoke-interface {v8}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 24
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->j:Lp7/h;

    invoke-interface {v6}, Lp7/h;->getCountryFlag()Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0f0122

    invoke-static {v5, v6, v8}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    const v5, 0x7f0a0986

    .line 25
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->h:Landroid/widget/TextView;

    const v5, 0x7f0a0187

    .line 26
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->i:Landroid/view/View;

    .line 27
    new-instance v6, La9/b;

    invoke-direct {v6, p0}, La9/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a02c2

    .line 28
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-ne v0, v7, :cond_1

    const v6, 0x7f0f0277

    goto :goto_0

    :cond_1
    const v6, 0x7f0f0272

    .line 29
    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v6, 0x8

    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->e:Landroid/view/View;

    const v1, 0x7f0f003f

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f060085

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->W1(Landroid/content/Context;IZI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v3, :cond_3

    .line 35
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->h:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const v1, 0x7f0a02c3

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 37
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->g:Landroid/widget/TextView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 40
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->i:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->e:Landroid/view/View;

    const v1, 0x7f0f0040

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f060084

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2, v7, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->W1(Landroid/content/Context;IZI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_3
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/CallingActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->containActivity(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110027

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->k:Landroid/media/MediaPlayer;

    .line 47
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 48
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V

    const-string v2, "lottery"

    invoke-virtual {p1, v0, v2, v1, v7}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 49
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->d:Lcom/opensource/svgaplayer/SVGAImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;)V

    invoke-virtual {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    return-void

    .line 50
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f130197

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->k:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->k:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberWinDialog;->k:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/BaseGameWinDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
