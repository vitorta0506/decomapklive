.class public final Lcom/vk/api/sdk/auth/VKAuthResultContract;
.super Landroidx/activity/result/contract/ActivityResultContract;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/activity/result/contract/ActivityResultContract<",
        "Ljava/util/Collection<",
        "+",
        "Lcom/vk/api/sdk/auth/VKScope;",
        ">;",
        "Lcom/vk/api/sdk/auth/VKAuthenticationResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0004\u0012\u00020\u00040\u0001B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u001a\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vk/api/sdk/auth/VKAuthResultContract;",
        "Landroidx/activity/result/contract/ActivityResultContract;",
        "",
        "Lcom/vk/api/sdk/auth/VKScope;",
        "Lcom/vk/api/sdk/auth/VKAuthenticationResult;",
        "authManager",
        "Lcom/vk/api/sdk/auth/VKAuthManager;",
        "(Lcom/vk/api/sdk/auth/VKAuthManager;)V",
        "createIntent",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "input",
        "parseResult",
        "resultCode",
        "",
        "intent",
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
.field private final authManager:Lcom/vk/api/sdk/auth/VKAuthManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/api/sdk/auth/VKAuthManager;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/auth/VKAuthManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "authManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/activity/result/contract/ActivityResultContract;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/api/sdk/auth/VKAuthResultContract;->authManager:Lcom/vk/api/sdk/auth/VKAuthManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic createIntent(Landroid/content/Context;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/vk/api/sdk/auth/VKAuthResultContract;->createIntent(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public createIntent(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/vk/api/sdk/auth/VKScope;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/vk/api/sdk/auth/VKAuthParams;

    invoke-static {p1}, Lcom/vk/api/sdk/VK;->getAppId(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/vk/api/sdk/auth/VKAuthParams;-><init>(ILjava/lang/String;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string p2, "com.vkontakte.android.action.SDK_AUTH"

    const/4 v1, 0x0

    const-string v2, "com.vkontakte.android"

    .line 3
    invoke-static {p1, p2, v1, v2}, Lcom/vk/api/sdk/utils/VKUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/vk/api/sdk/auth/VKAuthResultContract;->authManager:Lcom/vk/api/sdk/auth/VKAuthManager;

    invoke-virtual {p1, v0}, Lcom/vk/api/sdk/auth/VKAuthManager;->createVKClientAuthIntent(Lcom/vk/api/sdk/auth/VKAuthParams;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->Companion:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;

    invoke-virtual {p2, p1, v0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;->createAuthIntent$core_release(Landroid/content/Context;Lcom/vk/api/sdk/auth/VKAuthParams;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public parseResult(ILandroid/content/Intent;)Lcom/vk/api/sdk/auth/VKAuthenticationResult;
    .locals 4
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    new-instance p2, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;

    .line 3
    new-instance v0, Lcom/vk/api/sdk/exceptions/VKAuthException;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "Authentication cancelled with activity code = "

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/vk/api/sdk/exceptions/VKAuthException;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    invoke-direct {p2, v0}, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Failed;-><init>(Lcom/vk/api/sdk/exceptions/VKAuthException;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/vk/api/sdk/auth/VKAuthResultContract;->authManager:Lcom/vk/api/sdk/auth/VKAuthManager;

    invoke-virtual {p1, p2}, Lcom/vk/api/sdk/auth/VKAuthManager;->processResult(Landroid/content/Intent;)Lcom/vk/api/sdk/auth/VKAuthenticationResult;

    move-result-object p2

    .line 6
    :goto_0
    instance-of p1, p2, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/vk/api/sdk/auth/VKAuthResultContract;->authManager:Lcom/vk/api/sdk/auth/VKAuthManager;

    move-object v0, p2

    check-cast v0, Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;

    invoke-virtual {p1, v0}, Lcom/vk/api/sdk/auth/VKAuthManager;->storeLoginResult(Lcom/vk/api/sdk/auth/VKAuthenticationResult$Success;)V

    .line 8
    sget-object p1, Lcom/vk/api/sdk/VK;->INSTANCE:Lcom/vk/api/sdk/VK;

    invoke-virtual {p1}, Lcom/vk/api/sdk/VK;->trackVisitor$core_release()V

    :cond_1
    return-object p2
.end method

.method public bridge synthetic parseResult(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vk/api/sdk/auth/VKAuthResultContract;->parseResult(ILandroid/content/Intent;)Lcom/vk/api/sdk/auth/VKAuthenticationResult;

    move-result-object p1

    return-object p1
.end method
