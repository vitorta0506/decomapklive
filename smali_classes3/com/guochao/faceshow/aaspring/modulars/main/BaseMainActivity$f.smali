.class Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->u0(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/UserBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->a:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p2, p1, Lcom/guochao/faceshow/bean/UserBean;->del:I

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->v0()V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/guochao/faceshow/BaseAppContext;->normalLogined:Z

    const-string p2, "token\u767b\u9646\u6210\u529f\uff0c10\u79d2\u540e\u5f00\u59cb\u8bbe\u7f6e\u6781\u5149Alias"

    .line 6
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-string v1, "userToken"

    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    .line 9
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1, v0}, Lb8/d;->d(Lb8/a;ZZZ)V

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;)V

    invoke-virtual {p2, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p2

    .line 11
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    invoke-virtual {p2, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 12
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->a:Z

    if-nez p2, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getBirthdayStr()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p2, p1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget p1, p1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Q0(Landroid/app/Activity;)V

    const-string p1, "zune\uff1a"

    const-string p2, "\u5237\u65b0token\u4e4b\u540e\uff0c\u66f4\u65b0\u5f39\u6846"

    .line 15
    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;->Y0()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->s()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->b(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    const v2, 0x9c41

    if-eq v1, v2, :cond_0

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lb8/d;->a(Lb8/a;Z)V

    .line 5
    :cond_0
    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->d(Landroid/content/Context;Lg7/a;)V

    .line 7
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c43

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c47

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p1

    const v0, 0x9c4a

    if-ne p1, v0, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_3
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/BaseMainActivity$f;->a(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
