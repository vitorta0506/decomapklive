.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;

.field chatTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivHeaderImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMatchNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvReceiveGift:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSendGift:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTotalTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0244

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;I)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->a:Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;

    .line 2
    new-instance p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {p2}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getUser_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getSex()I

    move-result v0

    iput v0, p2, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getImg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getLogo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getAccountUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->ivHeaderImg:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->vipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->userName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getNick_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->userGenderAge:Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getSex()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getAge()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->b(II)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->levelView:Lcom/guochao/faceshow/aaspring/views/LevelView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getLevelId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 14
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getEnd_time()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->chatTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/guochao/faceshow/utils/Tool;->timeString(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvTotalTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getAllTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TimeUtil;->getTotalTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getStotalgiftPrice()I

    move-result p2

    const-string v0, ""

    const-string v1, "-"

    if-gez p2, :cond_1

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvReceiveGift:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getStotalgiftPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getStotalgiftPrice()I

    move-result p2

    if-nez p2, :cond_2

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvReceiveGift:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getStotalgiftPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 20
    :cond_2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvReceiveGift:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getStotalgiftPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getZtotalgiftPrice()I

    move-result p2

    if-nez p2, :cond_3

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvSendGift:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getZtotalgiftPrice()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvSendGift:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getZtotalgiftPrice()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->tvMatchNum:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a05ae

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->a:Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;

    if-eqz p1, :cond_1

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryHolder;->a:Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/OneVOneHistoryBean$ListBean;->getUser_id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method
