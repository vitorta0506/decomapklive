.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/auth/VKAuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;->i(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/vk/api/sdk/auth/VKAccessToken;)V
    .locals 4
    .param p1    # Lcom/vk/api/sdk/auth/VKAccessToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAccessToken;->getUserId()Lcom/vk/dto/common/id/UserId;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/vk/api/sdk/auth/VKAccessToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoginFailed(Lcom/vk/api/sdk/exceptions/VKAuthException;)V
    .locals 2
    .param p1    # Lcom/vk/api/sdk/exceptions/VKAuthException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->d()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoginFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VKLoginManager"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
