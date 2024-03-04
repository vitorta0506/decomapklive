.class public interface abstract Lcom/vk/api/sdk/auth/VKAuthCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vk/api/sdk/auth/VKAuthCallback;",
        "",
        "onLogin",
        "",
        "token",
        "Lcom/vk/api/sdk/auth/VKAccessToken;",
        "onLoginFailed",
        "authException",
        "Lcom/vk/api/sdk/exceptions/VKAuthException;",
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
.method public abstract onLogin(Lcom/vk/api/sdk/auth/VKAccessToken;)V
    .param p1    # Lcom/vk/api/sdk/auth/VKAccessToken;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onLoginFailed(Lcom/vk/api/sdk/exceptions/VKAuthException;)V
    .param p1    # Lcom/vk/api/sdk/exceptions/VKAuthException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
