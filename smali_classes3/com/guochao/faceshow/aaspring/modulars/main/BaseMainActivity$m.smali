.class Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v2, "type"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "total"

    const-wide/16 v5, 0x0

    .line 2
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v4, "current"

    .line 3
    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "isLottery"

    .line 4
    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v9, "lotteryUrl"

    .line 5
    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    if-ne v6, v10, :cond_1

    .line 6
    iget-object v6, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/guochao/faceshow/utils/ActivityTypeDialog;->getPrizeDialog(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_1
    const v9, 0x7f0a027e

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    if-ne v2, v10, :cond_5

    .line 7
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v4, "100%"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2, v13}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    :cond_2
    const-string v2, "img"

    .line 11
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shortUrl"

    .line 12
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "prospectus"

    .line 13
    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const v8, 0x7f0d0408

    invoke-static {v2, v8, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 16
    new-instance v8, Lcom/guochao/faceshow/utils/ShareVideoHelper;

    invoke-direct {v8, v2}, Lcom/guochao/faceshow/utils/ShareVideoHelper;-><init>(Landroid/view/View;)V

    .line 17
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v14, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v15, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    const v6, 0x7f0f044e

    invoke-direct {v14, v15, v6}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    const v14, 0x7f0f0459

    const-string v15, "Twitter"

    invoke-direct {v6, v15, v14}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v14, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    const v15, 0x7f0f0458

    invoke-direct {v6, v14, v15}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    sget-object v14, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Youtube;->NAME:Ljava/lang/String;

    const v15, 0x7f0f045d

    invoke-direct {v6, v14, v15}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;

    const v14, 0x7f0f04c0

    const-string v15, "More"

    invoke-direct {v6, v15, v14}, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {v8, v13}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->setPlatformList(Ljava/util/List;)V

    .line 24
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;

    invoke-direct {v6}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;-><init>()V

    .line 25
    invoke-virtual {v6, v4}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setImgUrl(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6, v5}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setShortUrl(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v4

    const v5, 0x7f120827

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v13, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v13}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v13

    invoke-virtual {v13}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-array v5, v11, [Ljava/lang/Object;

    .line 29
    iget-object v11, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v11

    invoke-virtual {v11}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v3

    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    aput-object v7, v5, v12

    const-string v3, "%s | %s | %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    new-array v5, v12, [Ljava/lang/Object;

    .line 30
    iget-object v7, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    const-string v3, "%s | %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 31
    :goto_0
    invoke-virtual {v6, v4}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setTitle(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v3}, Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;->setContent(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v8, v6}, Lcom/guochao/faceshow/utils/ShareVideoHelper;->setShareContentBean(Lcom/guochao/faceshow/aaspring/beans/ShareContentBean;)V

    .line 34
    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 35
    :try_start_0
    iget-object v3, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :goto_1
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_4

    .line 38
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowTopshareAnim(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 39
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->q0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m$a;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 40
    :cond_4
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;J)V

    goto/16 :goto_2

    :cond_5
    if-ne v2, v12, :cond_7

    .line 41
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 43
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0, v13}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 44
    :cond_6
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->t0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)V

    goto/16 :goto_2

    :cond_7
    if-ne v2, v11, :cond_c

    const-string v2, "imgPath"

    .line 45
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-nez v2, :cond_8

    .line 47
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/guochao/faceshow/utils/Tool;->createPopWindowTopAnimInstance(Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 48
    :cond_8
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v2, v6}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->p0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 49
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v0, :cond_9

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 51
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->o0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const v6, 0x7f080220

    invoke-static {v2, v0, v6}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 52
    :cond_9
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v6, 0x1020002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x33

    const/16 v9, 0xa

    invoke-virtual {v0, v2, v6, v3, v9}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_a
    const-wide/16 v2, 0x64

    mul-long v4, v4, v2

    .line 53
    div-long/2addr v4, v7

    cmp-long v0, v4, v2

    if-ltz v0, :cond_b

    const-wide/16 v4, 0x63

    .line 54
    :cond_b
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->l0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_c
    const/4 v0, 0x4

    if-ne v2, v0, :cond_d

    .line 55
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 56
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 57
    iget-object v0, v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$m;->a:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {v0, v13}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    :cond_d
    :goto_2
    return-void
.end method
