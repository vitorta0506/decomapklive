.class final Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/api/sdk/okhttp/LoggingInterceptor;-><init>(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lkotlin/text/MatchResult;",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n"
    }
    d2 = {
        "Lkotlin/Function1;",
        "Lkotlin/text/MatchResult;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;

    invoke-direct {v0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;->invoke()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/text/MatchResult;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2$1;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2$1;

    return-object v0
.end method
