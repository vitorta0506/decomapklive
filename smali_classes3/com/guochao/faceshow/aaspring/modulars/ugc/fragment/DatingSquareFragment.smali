.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Laa/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/DatingSquare;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;",
        "Laa/g;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field e:Laa/c;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->a:I

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;Lcom/guochao/faceshow/aaspring/beans/DatingSquare;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->X1(Lcom/guochao/faceshow/aaspring/beans/DatingSquare;)V

    return-void
.end method

.method public static V1(ILjava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "id"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private X1(Lcom/guochao/faceshow/aaspring/beans/DatingSquare;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->K(Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingSquare;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a059a

    .line 1
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/RatioHeightImageView;

    const v3, 0x7f0a056a

    .line 2
    invoke-virtual {v1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/cardview/widget/CardView;

    const v4, 0x7f0a0411

    .line 3
    invoke-virtual {v1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f0a0841

    .line 4
    invoke-virtual {v1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a0842

    .line 5
    invoke-virtual {v1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a0dc5

    .line 6
    invoke-virtual {v1, v7}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a0088

    .line 7
    invoke-virtual {v1, v8}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a009e

    .line 8
    invoke-virtual {v1, v9}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    const v10, 0x7f0a06af

    .line 9
    invoke-virtual {v1, v10}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x8

    if-eqz v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->getIsLive()I

    move-result v11

    if-ne v11, v12, :cond_0

    const v11, 0x7f0a06ae

    .line 11
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a0ae1

    .line 12
    invoke-virtual {v1, v12}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v15, -0x1

    .line 13
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setTextColor(I)V

    const v12, 0x7f080478

    .line 14
    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundResource(I)V

    const v11, 0x7f0a00ac

    .line 15
    invoke-virtual {v1, v11}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 16
    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 18
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 19
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getOnLineStatue()I

    move-result v1

    if-ne v1, v12, :cond_1

    .line 24
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0f000a

    .line 26
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1206f0

    .line 27
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    :goto_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 31
    rem-int/lit8 v5, p2, 0x2

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v10, 0x40800000    # 4.0f

    if-nez v5, :cond_2

    .line 32
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 33
    invoke-static {v10}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 34
    :cond_2
    invoke-static {v10}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 35
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 36
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->d:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->px2dip(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 38
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getGender()I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getAge()I

    move-result v3

    invoke-virtual {v9, v1, v3}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b(II)V

    .line 39
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, ""

    if-nez v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getNickName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getCountryName()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/bumptech/glide/h;->e()Lcom/bumptech/glide/g;

    move-result-object v1

    .line 44
    invoke-virtual/range {p3 .. p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getGifUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/g;->Z0(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v1

    const v3, 0x7f0f025e

    .line 45
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/a;->b0(I)Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    .line 46
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/a;->l(I)Lcom/bumptech/glide/request/a;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/g;

    .line 47
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 48
    :cond_5
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$b;

    move-object/from16 v2, p3

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;Lcom/guochao/faceshow/aaspring/beans/DatingSquare;)V

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public W1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingSquare;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->getIsLive()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->getLiveId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->getLiveType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getLiveData()Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/MyFriendsBean$LiveData;->getLiveImg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->c()Lcom/guochao/faceshow/aaspring/modulars/live/common/t;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/common/t;->g(Landroid/content/Context;Ljava/util/List;III)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingSquare;)V

    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->d:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->a:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->b:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->m0()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->c:I

    return-void
.end method

.method public loadData(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->m0()I

    move-result v0

    const-string v1, "tokens/appoint/userList"

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->b:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v4, "recommend"

    invoke-virtual {v1, v4, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    const-string v2, "dateLang"

    :goto_0
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v4, "sex"

    :goto_2
    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DatingSquareActivity;->m0()I

    move-result v0

    :goto_3
    invoke-virtual {v1, v4, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "currPage"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const/16 v1, 0x14

    const-string v2, "pageSize"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;I)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 3
    instance-of v0, p1, Laa/c;

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Laa/c;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->e:Laa/c;

    :cond_0
    return-void
.end method

.method public onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$c;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d036f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onGenderChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->c:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->reload()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DatingSquare;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->W1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/DatingSquare;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 14
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DatingSquareFragment;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
