.class public final Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;
.super Lcom/vk/api/sdk/VKOkHttpProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/VKOkHttpProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;",
        "Lcom/vk/api/sdk/VKOkHttpProvider;",
        "()V",
        "okHttpClient",
        "Lokhttp3/OkHttpClient;",
        "getClient",
        "updateClient",
        "",
        "f",
        "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;",
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
.field private volatile okHttpClient:Lokhttp3/OkHttpClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/vk/api/sdk/VKOkHttpProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient()Lokhttp3/OkHttpClient;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;->okHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const-wide/16 v4, 0x1e

    .line 4
    invoke-virtual {v0, v4, v5, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/vk/api/sdk/okhttp/UserAgentInterceptor;

    sget-object v2, Lcom/vk/api/sdk/VK;->INSTANCE:Lcom/vk/api/sdk/VK;

    invoke-virtual {v2}, Lcom/vk/api/sdk/VK;->getSDKUserAgent$core_release()Lcom/vk/api/sdk/utils/DefaultUserAgent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vk/api/sdk/okhttp/UserAgentInterceptor;-><init>(Lcom/vk/api/sdk/utils/UserAgentProvider;)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public updateClient(Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;)V
    .locals 1
    .param p1    # Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;->update(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method
