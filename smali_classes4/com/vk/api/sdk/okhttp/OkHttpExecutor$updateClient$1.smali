.class public final Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->updateClient(Lcom/vk/api/sdk/VKOkHttpProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1",
        "Lcom/vk/api/sdk/VKOkHttpProvider$BuilderUpdateFunction;",
        "update",
        "Lokhttp3/OkHttpClient$Builder;",
        "builder",
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
.field final synthetic this$0:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;


# direct methods
.method constructor <init>(Lcom/vk/api/sdk/okhttp/OkHttpExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;->this$0:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->NONE:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    iget-object v1, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;->this$0:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    invoke-virtual {v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getConfig()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getLogger()Lcom/vk/api/sdk/utils/log/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/vk/api/sdk/utils/log/Logger;->getLogLevel()Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;->this$0:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    invoke-virtual {v0}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getConfig()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getLogFilterCredentials()Z

    move-result v1

    iget-object v2, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;->this$0:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    invoke-virtual {v2}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getConfig()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getLogger()Lcom/vk/api/sdk/utils/log/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/api/sdk/okhttp/OkHttpExecutor$updateClient$1;->this$0:Lcom/vk/api/sdk/okhttp/OkHttpExecutor;

    invoke-virtual {v3}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->getConfig()Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/api/sdk/okhttp/OkHttpExecutorConfig;->getLoggingPrefixer()Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/vk/api/sdk/okhttp/OkHttpExecutor;->createLoggingInterceptor(ZLcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)Lcom/vk/api/sdk/okhttp/LoggingInterceptor;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    return-object p1
.end method
