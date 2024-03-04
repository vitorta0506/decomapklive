.class public final Lcom/vk/api/sdk/utils/ApiExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u000c\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0007\u001a.\u0010\u0008\u001a\u00020\t\"\u0004\u0008\u0000\u0010\n*\u0008\u0012\u0004\u0012\u0002H\n0\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u0002H\nH\u0086\u0002\u00a2\u0006\u0002\u0010\u000f\u001a\u001e\u0010\u0010\u001a\u00020\u0011*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a$\u0010\u0013\u001a\u00020\u0011*\u00020\u00022\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "hasExecuteError",
        "",
        "",
        "ignoredErrors",
        "",
        "hasSimpleError",
        "isOAuthBlank",
        "Landroid/net/Uri;",
        "set",
        "",
        "E",
        "Landroidx/collection/LongSparseArray;",
        "key",
        "",
        "value",
        "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V",
        "toExecuteError",
        "Lcom/vk/api/sdk/exceptions/VKApiException;",
        "method",
        "toSimpleError",
        "accessToken",
        "core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final hasExecuteError(Ljava/lang/String;[I)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/api/sdk/internal/VKErrorUtils;->INSTANCE:Lcom/vk/api/sdk/internal/VKErrorUtils;

    invoke-virtual {v0, p0, p1}, Lcom/vk/api/sdk/internal/VKErrorUtils;->hasExecuteError(Ljava/lang/String;[I)Z

    move-result p0

    return p0
.end method

.method public static final hasSimpleError(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/api/sdk/internal/VKErrorUtils;->INSTANCE:Lcom/vk/api/sdk/internal/VKErrorUtils;

    invoke-virtual {v0, p0}, Lcom/vk/api/sdk/internal/VKErrorUtils;->hasSimpleError(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isOAuthBlank(Landroid/net/Uri;)Z
    .locals 2
    .param p0    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oauth.vk.com"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/blank.html"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final set(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V
    .locals 1
    .param p0    # Landroidx/collection/LongSparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public static final toExecuteError(Ljava/lang/String;Ljava/lang/String;[I)Lcom/vk/api/sdk/exceptions/VKApiException;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/api/sdk/internal/VKErrorUtils;->INSTANCE:Lcom/vk/api/sdk/internal/VKErrorUtils;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vk/api/sdk/internal/VKErrorUtils;->parseExecuteError(Ljava/lang/String;Ljava/lang/String;[I)Lcom/vk/api/sdk/exceptions/VKApiException;

    move-result-object p0

    return-object p0
.end method

.method public static final toSimpleError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/exceptions/VKApiException;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/api/sdk/internal/VKErrorUtils;->INSTANCE:Lcom/vk/api/sdk/internal/VKErrorUtils;

    invoke-virtual {v0, p0, p1, p2}, Lcom/vk/api/sdk/internal/VKErrorUtils;->parseSimpleError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/exceptions/VKApiException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toSimpleError$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/exceptions/VKApiException;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/vk/api/sdk/utils/ApiExtKt;->toSimpleError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/exceptions/VKApiException;

    move-result-object p0

    return-object p0
.end method
