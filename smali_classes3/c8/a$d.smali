.class Lc8/a$d;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/a;->n(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;

.field final synthetic c:Lc8/a;


# direct methods
.method constructor <init>(Lc8/a;Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V
    .locals 0

    iput-object p1, p0, Lc8/a$d;->c:Lc8/a;

    iput-object p2, p0, Lc8/a$d;->a:Landroid/app/Activity;

    iput-object p3, p0, Lc8/a$d;->b:Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method

.method private a(Lcom/guochao/faceshow/aaspring/beans/AdsBean;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/dialog/a;

    iget-object v1, p0, Lc8/a$d;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AdsBean;->getDiamondNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/guochao/faceshow/dialog/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    new-instance p1, Lc8/a$d$a;

    invoke-direct {p1, p0}, Lc8/a$d$a;-><init>(Lc8/a$d;)V

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x15f91

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lc8/a$d;->c:Lc8/a;

    iget-object v0, p0, Lc8/a$d;->a:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lc8/a$d;->b:Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;

    invoke-static {p1, v0, v1}, Lc8/a;->j(Lc8/a;Landroidx/fragment/app/FragmentActivity;Lcom/guochao/faceshow/aaspring/beans/AdsRequestBean;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/AdsBean;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/AdsBean;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/AdsBean;->getDiamondNum()I

    move-result v2

    if-lez v2, :cond_1

    .line 7
    invoke-direct {p0, v1}, Lc8/a$d;->a(Lcom/guochao/faceshow/aaspring/beans/AdsBean;)V

    .line 8
    iget-object v1, p0, Lc8/a$d;->c:Lc8/a;

    invoke-virtual {v1, v0}, Lc8/a;->x(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lg7/a;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    :cond_2
    iget-object p1, p0, Lc8/a$d;->c:Lc8/a;

    invoke-virtual {p1, v0}, Lc8/a;->x(I)V

    .line 11
    :cond_3
    iget-object p1, p0, Lc8/a$d;->c:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lc8/a$d;->c:Lc8/a;

    invoke-static {p1}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p1

    invoke-interface {p1}, Lc8/a$h;->onError()V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "(\u4ec5\u6d4b\u8bd5) tokens/live/userLookAdvertisement \u54cd\u5e94error"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_4
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lc8/a$d;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p2, "result"

    const/4 v0, -0x1

    const-string v1, ""

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lc8/a$d;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p0, Lc8/a$d;->c:Lc8/a;

    invoke-virtual {p1, v2}, Lc8/a;->x(I)V

    .line 7
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lc8/a$d;->onFailure(Lg7/a;)V

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/AdsBean;

    invoke-virtual {p2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/AdsBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    iget-object p2, p0, Lc8/a$d;->c:Lc8/a;

    invoke-static {p2}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p2

    const-string v0, "key_select_advertisement"

    const-string v1, "module_sever_config_time"

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AdsBean;->getResult()I

    move-result p2

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p0, Lc8/a$d;->a:Landroid/app/Activity;

    invoke-static {p2, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    iget-object p2, p0, Lc8/a$d;->c:Lc8/a;

    invoke-static {p2}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p2

    invoke-interface {p2, p1}, Lc8/a$h;->b(Lcom/guochao/faceshow/aaspring/beans/AdsBean;)V

    .line 12
    iget-object p2, p0, Lc8/a$d;->c:Lc8/a;

    invoke-static {p2}, Lc8/a;->b(Lc8/a;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 13
    iget-object p2, p0, Lc8/a$d;->c:Lc8/a;

    invoke-static {p2}, Lc8/a;->g(Lc8/a;)Lc8/a$h;

    move-result-object p2

    invoke-interface {p2}, Lc8/a$h;->onError()V

    const-string p2, "zune\uff1a"

    const-string v0, "(\u4ec5\u6d4b\u8bd5) tokens/live/userLookAdvertisement \u54cd\u5e94\u6210\u529f\uff0c\u4f46\u662f\u518d\u6b21\u521d\u59cb\u5316erroronError() "

    .line 14
    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const-string v0, "(\u4ec5\u6d4b\u8bd5) tokens/live/userLookAdvertisement \u54cd\u5e94\u6210\u529f\uff0c\u4f46\u662f\u518d\u6b21\u521d\u59cb\u5316error"

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 16
    iget-object p2, p0, Lc8/a$d;->c:Lc8/a;

    invoke-static {p2}, Lc8/a;->i(Lc8/a;)V

    goto :goto_0

    .line 17
    :cond_2
    iget-object p2, p0, Lc8/a$d;->c:Lc8/a;

    invoke-virtual {p2, v2}, Lc8/a;->x(I)V

    .line 18
    iget-object p2, p0, Lc8/a$d;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {p2, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p2, 0x0

    .line 19
    invoke-virtual {p0, p2}, Lc8/a$d;->onFailure(Lg7/a;)V

    .line 20
    :cond_3
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->z()V

    if-eqz p1, :cond_4

    .line 21
    iget-object p2, p0, Lc8/a$d;->a:Landroid/app/Activity;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lc8/a$d;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AdsBean;->getDiamondCount()I

    move-result p2

    if-lez p2, :cond_4

    .line 22
    invoke-direct {p0, p1}, Lc8/a$d;->a(Lcom/guochao/faceshow/aaspring/beans/AdsBean;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string p2, "(\u4ec5\u6d4b\u8bd5) tokens/live/userLookAdvertisement \u54cd\u5e94\u6210\u529f\uff0c\u5176\u5b83\u539f\u56e0error"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_1
    return-void

    .line 24
    :catch_0
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lc8/a$d;->onFailure(Lg7/a;)V

    return-void
.end method
