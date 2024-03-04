.class Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;
.super Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/ContributionListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter<",
        "Lcom/guochao/faceshow/mine/model/ContributionBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/ContributionBean;)V
    .locals 9

    const v0, 0x7f0a0201

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v1, 0x7f0a0e13

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    const v2, 0x7f0a0c1e

    .line 3
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0c1f

    .line 4
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0c26

    .line 5
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    .line 6
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-nez v6, :cond_0

    const p1, 0x7f0f01e6

    .line 8
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const p1, 0x7f0f01e7

    .line 10
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_2

    const p1, 0x7f0f01e8

    .line 12
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v6, 0x7f06038c

    .line 13
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    add-int/2addr p1, v7

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    new-instance p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {p1}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 16
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getUser_id()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 18
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getCountryFlag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 19
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 21
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/high16 p1, 0x42a00000    # 80.0f

    .line 23
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 24
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    goto :goto_1

    :cond_3
    const/16 p1, 0x8

    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    :goto_1
    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getNick_name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getTotalPrice()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    new-instance p1, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;-><init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;Lcom/guochao/faceshow/mine/model/ContributionBean;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/guochao/faceshow/mine/model/ContributionBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/ContributionBean;)V

    return-void
.end method
