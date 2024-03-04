.class public final Lcom/guochao/faceshow/aaspring/modulars/login/activity/DeleteAccountInfoActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/login/activity/DeleteAccountInfoActivity;",
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
        "()V",
        "click",
        "",
        "view",
        "Landroid/view/View;",
        "getLayoutId",
        "",
        "initView",
        "loadData",
        "onBackPressed",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final click(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x814d

    .line 1
    invoke-static {p0, p1}, Lcn/jpush/android/api/JPushInterface;->deleteAlias(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lb8/d;->a(Lb8/a;Z)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->killActivity(Ljava/lang/Class;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const-string v0, "logout_reason"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLastLoginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "log_out_click"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0043

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v0, 0x7f120201

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
