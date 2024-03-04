.class public abstract Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ThirdPartyLoginTypeFragment$a;
.implements Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;


# static fields
.field static final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

.field b:Landroid/os/Handler;

.field c:I

.field protected d:I

.field public e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->f:Landroid/util/SparseArray;

    .line 2
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->g:Landroid/util/SparseArray;

    .line 3
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->h:Landroid/util/SparseArray;

    const/4 v3, 0x7

    const-string v4, "facebook_click_2737"

    .line 4
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v4, 0x9

    const-string v5, "g_click_2737"

    .line 5
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v5, 0x8

    const-string v6, "twitter_click_2737"

    .line 6
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v6, 0xa

    const-string v7, "ins_click_2737"

    .line 7
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v7, 0xb

    const-string v8, "line_click_2737"

    .line 8
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v8, 0xc

    const-string v9, "vk_click_2737"

    .line 9
    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v9, 0x4

    const-string v10, "wechat_click_2737"

    .line 10
    invoke-virtual {v0, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v10, 0x6

    const-string v11, "weibo_click_2737"

    .line 11
    invoke-virtual {v0, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v11, 0x5

    const-string v12, "qq_click_2737"

    .line 12
    invoke-virtual {v0, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v12, 0x3

    const-string v13, "phone_click_2737"

    .line 13
    invoke-virtual {v0, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v13, 0x2

    const-string v14, "mail_click_2737"

    .line 14
    invoke-virtual {v0, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "facebook_port_result_2737"

    .line 15
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "g_port_result_2737"

    .line 16
    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "twitter_port_result_2737"

    .line 17
    invoke-virtual {v1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "ins_port_result_2737"

    .line 18
    invoke-virtual {v1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "line_port_result_2737"

    .line 19
    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "vk_port_result_2737"

    .line 20
    invoke-virtual {v1, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "wechat_port_result_2737"

    .line 21
    invoke-virtual {v1, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "weibo_port_result_2737"

    .line 22
    invoke-virtual {v1, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "qq_port_result_2737"

    .line 23
    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "phone_port_result_2737"

    .line 24
    invoke-virtual {v1, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "mail_port_result_2737"

    .line 25
    invoke-virtual {v1, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "Facebook_sigin_success_2737"

    .line 26
    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "g_sigin_success_2737"

    .line 27
    invoke-virtual {v2, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "twitter_sigin_success_2737"

    .line 28
    invoke-virtual {v2, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "ins_sigin_success_2737"

    .line 29
    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "line_sigin_success_2737"

    .line 30
    invoke-virtual {v2, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "vk_sigin_success_2737"

    .line 31
    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "wechat_sigin_success_2737"

    .line 32
    invoke-virtual {v2, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "weibo_sigin_success_2737"

    .line 33
    invoke-virtual {v2, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "qq_sigin_success_2737"

    .line 34
    invoke-virtual {v2, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "phone_sigin_success_2737"

    .line 35
    invoke-virtual {v2, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v0, "mail_sigin_success_2737"

    .line 36
    invoke-virtual {v2, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method private e0(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getReg()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    iput-boolean v2, p2, Lcom/guochao/faceshow/BaseAppContext;->normalLogined:Z

    .line 4
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget v1, v1, Lcom/guochao/faceshow/bean/UserBean;->logoutStatus:I

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;

    invoke-direct {v3, p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    invoke-static {v2, p1, v1, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->g(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Lcom/guochao/faceshow/bean/UserBean;ILcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 8
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    if-lez p2, :cond_1

    const/16 v1, 0x12

    if-ge p2, v1, :cond_1

    const p1, 0x7f1201e8

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    return-void

    :cond_1
    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result p2

    .line 12
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_type"

    const-string v3, "\u6ce8\u518c"

    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    .line 17
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->checkInterceptLoginType(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->l0(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private g0(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V
    .locals 3

    .line 1
    invoke-static {p1, p0}, Ly6/a;->a(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->g()V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 6
    :cond_2
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->k(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->m()V

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private i0(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->e(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    .line 2
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityUpIn(Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result p1

    .line 4
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "content_type"

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "\u767b\u5f55"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v2

    invoke-virtual {v2, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    :cond_0
    sget-object p2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->h:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLogoutReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const-string v0, "last_login_type"

    invoke-static {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method


# virtual methods
.method public A(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->n(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V

    return-void
.end method

.method public D(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/LoginOrRegisterActivity;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/LoginGate;->canLogin()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->z(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result p1

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result p1

    const/4 v1, 0x2

    const/high16 v2, 0x14000000

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    .line 9
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    goto :goto_0

    :cond_3
    const p1, 0x7f120755

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$a;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "com.tencent.mm"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7f120002

    .line 12
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    .line 13
    :cond_5
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    goto :goto_0

    .line 14
    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 16
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public H(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getReg()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->a()I

    move-result v6

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->d()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->t(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->a()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e0(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;I)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAge()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e0(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;I)V

    .line 7
    :goto_1
    invoke-virtual {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->n(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public k(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->b:Landroid/os/Handler;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->a:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->n(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V

    return-void
.end method

.method protected k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p5

    const/16 v0, 0x12

    if-le p5, v0, :cond_0

    const/4 p5, 0x0

    .line 3
    invoke-virtual {p3, p5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p5

    invoke-virtual {p5, p1, p6}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->x(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->q(Ljava/lang/String;)V

    :try_start_0
    const-string p1, "2"

    .line 7
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p4, "0"

    .line 8
    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->u(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public l0(Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;->getUnionid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->A(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/CompletePersonalInfoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public synthetic onAuthResponse(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/m;->a(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "LoginType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->c:I

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->d:I

    .line 3
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0848

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->c:I

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/OtherThirdLoginTypeFragment;->R1(I)Lcom/guochao/faceshow/aaspring/modulars/login/fragment/OtherThirdLoginTypeFragment;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    const p1, 0x7f0a0ade

    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->g()V

    :cond_0
    return-void
.end method

.method public shouldShowLiveFloatWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
