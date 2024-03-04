.class public Lcom/vk/api/sdk/VKDefaultValidationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/VKApiValidationHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0002J\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0016J\u001e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00100\nH\u0016J\u001e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00130\nH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKDefaultValidationHandler;",
        "Lcom/vk/api/sdk/VKApiValidationHandler;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "getContext",
        "()Landroid/content/Context;",
        "checkCaptchaActivity",
        "",
        "cb",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;",
        "",
        "handleCaptcha",
        "img",
        "handleConfirm",
        "confirmationText",
        "",
        "handleValidation",
        "validationUrl",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/VKDefaultValidationHandler;->context:Landroid/content/Context;

    return-void
.end method

.method private final checkCaptchaActivity(Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/api/sdk/VKApiValidationHandler$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->Companion:Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;

    invoke-virtual {v0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;->getLastKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;->getLastKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/vk/api/sdk/VKApiValidationHandler$Callback;->submit(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/vk/api/sdk/VKApiValidationHandler$Callback;->cancel()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKDefaultValidationHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public handleCaptcha(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/VKApiValidationHandler$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/VKApiValidationHandler$Callback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "img"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vk/api/sdk/ui/VKCaptchaActivity;->Companion:Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;

    iget-object v1, p0, Lcom/vk/api/sdk/VKDefaultValidationHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/vk/api/sdk/ui/VKCaptchaActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/vk/api/sdk/utils/VKValidationLocker;->INSTANCE:Lcom/vk/api/sdk/utils/VKValidationLocker;

    invoke-virtual {p1}, Lcom/vk/api/sdk/utils/VKValidationLocker;->await()V

    .line 3
    invoke-direct {p0, p2}, Lcom/vk/api/sdk/VKDefaultValidationHandler;->checkCaptchaActivity(Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V

    return-void
.end method

.method public handleConfirm(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/VKApiValidationHandler$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/VKApiValidationHandler$Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "confirmationText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vk/api/sdk/ui/VKConfirmationActivity;->Companion:Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;->setResult(Z)V

    .line 2
    iget-object v2, p0, Lcom/vk/api/sdk/VKDefaultValidationHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/vk/api/sdk/utils/VKValidationLocker;->INSTANCE:Lcom/vk/api/sdk/utils/VKValidationLocker;

    invoke-virtual {p1}, Lcom/vk/api/sdk/utils/VKValidationLocker;->await()V

    .line 4
    invoke-virtual {v0}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;->getResult()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/vk/api/sdk/VKApiValidationHandler$Callback;->submit(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/ui/VKConfirmationActivity$Companion;->setResult(Z)V

    return-void
.end method

.method public handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/VKApiValidationHandler$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/VKApiValidationHandler$Callback<",
            "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "validationUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->Companion:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;->setValidationResult(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V

    .line 2
    iget-object v2, p0, Lcom/vk/api/sdk/VKDefaultValidationHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;->startForValidation(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/vk/api/sdk/utils/VKValidationLocker;->INSTANCE:Lcom/vk/api/sdk/utils/VKValidationLocker;

    invoke-virtual {p1}, Lcom/vk/api/sdk/utils/VKValidationLocker;->await()V

    .line 4
    invoke-virtual {v0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;->getValidationResult()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2, p1}, Lcom/vk/api/sdk/VKApiValidationHandler$Callback;->submit(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/vk/api/sdk/VKApiValidationHandler$Callback;->cancel()V

    .line 8
    :cond_1
    invoke-virtual {v0, v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;->setValidationResult(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V

    return-void
.end method

.method public tryToHandleException(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;Lcom/vk/api/sdk/VKApiManager;)V
    .locals 0
    .param p1    # Lcom/vk/api/sdk/exceptions/VKApiExecutionException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/VKApiManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vk/api/sdk/exceptions/VKApiExecutionException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/vk/api/sdk/VKApiValidationHandler$DefaultImpls;->tryToHandleException(Lcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/exceptions/VKApiExecutionException;Lcom/vk/api/sdk/VKApiManager;)V

    return-void
.end method
