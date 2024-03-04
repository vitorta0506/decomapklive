.class Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->g0(Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const v0, 0x7f1209c2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const v0, 0x7f120225

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-virtual {p1}, Lg7/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->a:Ljava/lang/String;

    const-string v0, "email"

    invoke-static {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->b0(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const-class p2, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;)I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const p2, 0x7f120224

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const p2, 0x7f120226

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method
