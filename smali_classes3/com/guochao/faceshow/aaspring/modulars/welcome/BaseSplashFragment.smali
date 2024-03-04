.class public Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/guochao/faceshow/views/g;

.field d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

.field e:Lcom/guochao/faceshow/views/g;

.field f:Lcom/guochao/faceshow/aaspring/base/utils/a;

.field mImageViewSplash:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSplashViewGroup:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewSplashCountDown:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->b:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->b:I

    return p1
.end method

.method private Q1()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->redirectToMainActivity(Landroid/content/Intent;Z)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private R1()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->hasNotchScreen(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method private S1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/SplashUtils;->getSplashData(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Y1()V

    return-void
.end method

.method private T1(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;)Z
    .locals 1

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->total:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static W1(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Splash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TAG_KEY_FORM_PUSH"

    invoke-static {v2, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string p0, "ext"

    .line 3
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u817e\u8baf\u534e\u4e3a\u63a8\u9001\uff0c\u804a\u5929\u683c\u5f0f = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "type_id"

    const-string p2, "10000"

    .line 6
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "google.message_id"

    .line 7
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "firm_type"

    const-string p2, "1"

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/PushUtils;->jumpToChat(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "jumpToChat = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KEY_FROM_PUSH\uff1a"

    invoke-static {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120824

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    const-string v1, "com.guochao.faceshow"

    const/4 v2, 0x1

    aput-object v1, p0, v2

    const-string v1, "%s://%s?"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 13
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "n_extras"

    .line 14
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 15
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 17
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_3
    invoke-static {p2, p1}, Lcom/guochao/faceshow/utils/PushUtils;->savePushTag(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0

    :cond_4
    const-string v1, "pushscheme://com.tencent.qcloud.tim/detail"

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p0

    const-class p1, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    if-nez p0, :cond_5

    .line 25
    new-instance p0, Lcom/guochao/faceshow/aaspring/beans/PushBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/beans/PushBean;-><init>()V

    .line 26
    :cond_5
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/beans/PushBean;->withEmptyChat:Z

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    return v0

    .line 28
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 29
    invoke-static {p2, p1}, Lcom/guochao/faceshow/utils/PushUtils;->saveShareTag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_7
    return v0
.end method

.method private X1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    return-void
.end method

.method private Y1()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->T1(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->mSplashViewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->mImageViewSplash:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->mImageViewSplash:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;->fileUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->c:Lcom/guochao/faceshow/views/g;

    if-nez v0, :cond_1

    const/16 v0, 0x1388

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;->stayTime:I

    if-lez v1, :cond_0

    mul-int/lit16 v0, v1, 0x3e8

    .line 7
    :cond_0
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;JJ)V

    iput-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->c:Lcom/guochao/faceshow/views/g;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->c:Lcom/guochao/faceshow/views/g;

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->mImageViewSplash:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->mSplashViewGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->b:I

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Z1()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected U1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->W1(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)Z

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/PushUtils;->isWithDataSplash()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->b:I

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Z1()V

    goto :goto_0

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->S1()V

    .line 12
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Q0()V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->X1()V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/utils/DataCleanManager;->clearThirdPartyDir()V

    return-void
.end method

.method protected V1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->R1()Z

    move-result v1

    const-string v2, "checkNotch"

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashActivity;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/welcome/PushChooseLoginTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public Z1()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->c:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->e:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->f:Lcom/guochao/faceshow/aaspring/base/utils/a;

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/utils/a;->cancel()V

    .line 10
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "userToken"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    if-eqz v1, :cond_6

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->d:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->result:Lcom/guochao/faceshow/aaspring/beans/SplashInfoData$ResultData;

    const-string v3, "splashInfoData"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->Q1()V

    return-void

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->V1()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d1

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->c:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 5
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
