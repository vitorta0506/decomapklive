.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field ChooseFriendSetting:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;",
            ">;"
        }
    .end annotation
.end field

.field btnSearch:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;",
            ">;"
        }
    .end annotation
.end field

.field ivMan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivUnlimited:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivWoman:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlChooseFriendSetting:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlChooseLanguage:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlResidence:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvChooseLanguage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFriendSetting:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMan:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMax:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvResidence:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUnlimited:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWonam:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0053

    return v0
.end method

.method public initView()V
    .locals 4

    const v0, 0x7f120954

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlResidence:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rlChooseLanguage:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0f02f9

    const/4 v2, 0x2

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 7
    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivMan:Landroid/widget/ImageView;

    const v1, 0x7f0f02fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivWoman:Landroid/widget/ImageView;

    const v1, 0x7f0f02f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 12
    :cond_2
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivUnlimited:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 14
    :cond_3
    iput v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivUnlimited:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    const/high16 v1, 0x424c0000    # 51.0f

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->r(FF)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    const/high16 v1, 0x420c0000    # 35.0f

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->q(FF)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->setIndicatorTextDecimalFormat(Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string p2, "  "

    const v0, 0x7f06009c

    const v1, 0x7f060373

    const/16 v2, 0x3eb

    if-ne p1, v2, :cond_4

    if-eqz p3, :cond_e

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->c:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->c:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string p1, "result_language"

    .line 5
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_3

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    .line 11
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvChooseLanguage:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvChooseLanguage:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvChooseLanguage:Landroid/widget/TextView;

    const p2, 0x7f12097c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvChooseLanguage:Landroid/widget/TextView;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_4
    const/16 v2, 0x3ec

    if-ne p1, v2, :cond_9

    if-eqz p3, :cond_e

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->b:Ljava/util/ArrayList;

    if-nez p1, :cond_5

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->b:Ljava/util/ArrayList;

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string p1, "result_residence"

    .line 19
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;

    .line 24
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;

    .line 26
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ResidenceBean;->getCname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 27
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvResidence:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvResidence:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 29
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvResidence:Landroid/widget/TextView;

    const p2, 0x7f12097d

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvResidence:Landroid/widget/TextView;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    :cond_9
    const/16 v2, 0x3ef

    if-ne p1, v2, :cond_e

    if-eqz p3, :cond_e

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->d:Ljava/util/ArrayList;

    if-nez p1, :cond_a

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->d:Ljava/util/ArrayList;

    .line 33
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const-string p1, "result_find_friendsetting"

    .line 34
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_d

    .line 36
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    .line 39
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 40
    :cond_b
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;

    .line 41
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/FriendSettingBean;->getTname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 42
    :cond_c
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ChooseFriendSetting:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ChooseFriendSetting:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 44
    :cond_d
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ChooseFriendSetting:Landroid/widget/TextView;

    const p2, 0x7f1203b9

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 45
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ChooseFriendSetting:Landroid/widget/TextView;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0f0303

    const v1, 0x7f0f0304

    const v2, 0x7f0f0302

    const v3, 0x7f06009c

    const v4, 0x7f060129

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseResidenceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->b:Ljava/util/ArrayList;

    const-string v1, "result_residence"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v0, 0x3ec

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 5
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseLanguageActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->c:Ljava/util/ArrayList;

    const-string v1, "result_language"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v0, 0x3eb

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 8
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ChooseFriendSettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->d:Ljava/util/ArrayList;

    const-string v1, "result_find_friendsetting"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v0, 0x3ef

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 11
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivWoman:Landroid/widget/ImageView;

    const v2, 0x7f0f02f8

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvWonam:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivMan:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMan:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivUnlimited:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvUnlimited:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    goto/16 :goto_0

    .line 18
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivUnlimited:Landroid/widget/ImageView;

    const v1, 0x7f0f02f9

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvUnlimited:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivMan:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMan:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivWoman:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvWonam:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    goto/16 :goto_0

    .line 25
    :sswitch_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivMan:Landroid/widget/ImageView;

    const v0, 0x7f0f02fa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvMan:Landroid/widget/TextView;

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivWoman:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvWonam:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->ivUnlimited:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->tvUnlimited:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    goto :goto_0

    .line 32
    :sswitch_6
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouListActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->c:Ljava/util/ArrayList;

    const-string v1, "languageList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->b:Ljava/util/ArrayList;

    const-string v1, "residence"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->d:Ljava/util/ArrayList;

    const-string v1, "friendSetting"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 36
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getLeftSeekBar()Lcom/guochao/faceshow/aaspring/views/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->s()F

    move-result v0

    float-to-int v0, v0

    const-string v1, "minYear"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->rsbYear:Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/RangeSeekBar;->getRightSeekBar()Lcom/guochao/faceshow/aaspring/views/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/r;->s()F

    move-result v0

    float-to-int v0, v0

    const-string v1, "maxYear"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/FindYouActivity;->a:I

    const-string v1, "sex"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "friends_meetme_search_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0198 -> :sswitch_6
        0x7f0a06d5 -> :sswitch_5
        0x7f0a06d6 -> :sswitch_4
        0x7f0a06d7 -> :sswitch_3
        0x7f0a09bb -> :sswitch_2
        0x7f0a09bc -> :sswitch_1
        0x7f0a09c8 -> :sswitch_0
    .end sparse-switch
.end method
