.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/login/LoginResult;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "result is null"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;->onError(Lcom/facebook/FacebookException;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->o(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;Lcom/facebook/AccessToken;)V

    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "called cancel"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .locals 2
    .param p1    # Lcom/facebook/FacebookException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;Lcom/facebook/FacebookException;)V

    invoke-static {v0}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zune\uff1a"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;->a(Lcom/facebook/login/LoginResult;)V

    return-void
.end method
