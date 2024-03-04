.class public final Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u00a2\u0006\u0002\u0008\u0014J\u001e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;",
        "",
        "()V",
        "LOG_TAG",
        "",
        "VK_EXTRA_AUTH_PARAMS",
        "VK_EXTRA_VALIDATION_URL",
        "VK_RESULT_INTENT_NAME",
        "validationResult",
        "Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        "getValidationResult",
        "()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;",
        "setValidationResult",
        "(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V",
        "createAuthIntent",
        "Landroid/content/Intent;",
        "ctx",
        "Landroid/content/Context;",
        "params",
        "Lcom/vk/api/sdk/auth/VKAuthParams;",
        "createAuthIntent$core_release",
        "startForAuth",
        "",
        "activity",
        "Landroid/app/Activity;",
        "code",
        "",
        "startForValidation",
        "context",
        "validationUrl",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAuthIntent$core_release(Landroid/content/Context;Lcom/vk/api/sdk/auth/VKAuthParams;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/auth/VKAuthParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p2}, Lcom/vk/api/sdk/auth/VKAuthParams;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "vk_auth_params"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Intent(ctx, VKWebViewAut\u2026ARAMS, params.toBundle())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getValidationResult()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->access$getValidationResult$cp()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;

    move-result-object v0

    return-object v0
.end method

.method public final setValidationResult(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V
    .locals 0
    .param p1    # Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->access$setValidationResult$cp(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V

    return-void
.end method

.method public final startForAuth(Landroid/app/Activity;Lcom/vk/api/sdk/auth/VKAuthParams;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/api/sdk/auth/VKAuthParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;->createAuthIntent$core_release(Landroid/content/Context;Lcom/vk/api/sdk/auth/VKAuthParams;)Landroid/content/Intent;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final startForValidation(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validationUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "vk_validation_url"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "Intent(context, VKWebVie\u2026ATION_URL, validationUrl)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/vk/api/sdk/extensions/ContextExtKt;->toActivitySafe(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
