.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# instance fields
.field private e:Lcom/twitter/sdk/android/core/identity/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initTwitter()V

    return-void
.end method


# virtual methods
.method public i(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;->e:Lcom/twitter/sdk/android/core/identity/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/h;->e()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;->e:Lcom/twitter/sdk/android/core/identity/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/identity/h;->g(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;->e:Lcom/twitter/sdk/android/core/identity/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/core/identity/h;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/identity/h;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;->e:Lcom/twitter/sdk/android/core/identity/h;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;->e:Lcom/twitter/sdk/android/core/identity/h;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/h;->d()V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;->e:Lcom/twitter/sdk/android/core/identity/h;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/sdk/android/core/identity/h;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V

    return-void
.end method
