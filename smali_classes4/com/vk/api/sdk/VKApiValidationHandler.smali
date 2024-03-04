.class public interface abstract Lcom/vk/api/sdk/VKApiValidationHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/VKApiValidationHandler$Callback;,
        Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;,
        Lcom/vk/api/sdk/VKApiValidationHandler$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\u0013\u0014J\u001e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H&J\u001e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0007H&J\u001e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKApiValidationHandler;",
        "",
        "handleCaptcha",
        "",
        "img",
        "",
        "cb",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Callback;",
        "handleConfirm",
        "confirmationText",
        "",
        "handleValidation",
        "validationUrl",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        "tryToHandleException",
        "ex",
        "Lcom/vk/api/sdk/exceptions/VKApiExecutionException;",
        "apiManager",
        "Lcom/vk/api/sdk/VKApiManager;",
        "Callback",
        "Credentials",
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


# virtual methods
.method public abstract handleCaptcha(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
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
.end method

.method public abstract handleConfirm(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
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
.end method

.method public abstract handleValidation(Ljava/lang/String;Lcom/vk/api/sdk/VKApiValidationHandler$Callback;)V
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
.end method

.method public abstract tryToHandleException(Lcom/vk/api/sdk/exceptions/VKApiExecutionException;Lcom/vk/api/sdk/VKApiManager;)V
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
.end method
