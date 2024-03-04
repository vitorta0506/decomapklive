.class public final Lcom/vk/api/sdk/okhttp/LoggingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 A2\u00020\u0001:\u0001AB\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B%\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\nB\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\tH\u0002R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001b\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001a\u001a\u0004\u0008\u001c\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R-\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020#0!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u001a\u001a\u0004\u0008$\u0010%R\'\u0010\'\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u001a\u001a\u0004\u0008)\u0010*R\u001b\u0010,\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010\u001a\u001a\u0004\u0008-\u0010\u0018R\'\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00081\u0010\u001a\u001a\u0004\u00080\u0010*R\u001b\u00102\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u0010\u001a\u001a\u0004\u00083\u0010\u0018R\u001b\u00105\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00087\u0010\u001a\u001a\u0004\u00086\u0010\u0018R\'\u00108\u001a\u000e\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008:\u0010\u001a\u001a\u0004\u00089\u0010*\u00a8\u0006B"
    }
    d2 = {
        "Lcom/vk/api/sdk/okhttp/LoggingInterceptor;",
        "Lokhttp3/Interceptor;",
        "filterCredentials",
        "",
        "logger",
        "Lcom/vk/api/sdk/utils/log/Logger;",
        "(ZLcom/vk/api/sdk/utils/log/Logger;)V",
        "keysToFilter",
        "",
        "",
        "(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;)V",
        "loggingPrefixer",
        "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;",
        "(ZLcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V",
        "(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V",
        "delegate",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        "getDelegate",
        "()Lokhttp3/logging/HttpLoggingInterceptor;",
        "delegate$delegate",
        "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;",
        "kvKeysExtractorPattern",
        "Lkotlin/text/Regex;",
        "getKvKeysExtractorPattern",
        "()Lkotlin/text/Regex;",
        "kvKeysExtractorPattern$delegate",
        "Lkotlin/Lazy;",
        "kvKeysRestorePattern",
        "getKvKeysRestorePattern",
        "kvKeysRestorePattern$delegate",
        "prefix",
        "Ljava/lang/ThreadLocal;",
        "restoreKVKeysTransformer",
        "Lkotlin/Function2;",
        "Lkotlin/text/MatchResult;",
        "",
        "getRestoreKVKeysTransformer",
        "()Lkotlin/jvm/functions/Function2;",
        "restoreKVKeysTransformer$delegate",
        "sensitiveKeyRequestTransformer",
        "Lkotlin/Function1;",
        "getSensitiveKeyRequestTransformer",
        "()Lkotlin/jvm/functions/Function1;",
        "sensitiveKeyRequestTransformer$delegate",
        "sensitiveKeyValuesResponseRegex",
        "getSensitiveKeyValuesResponseRegex",
        "sensitiveKeyValuesResponseRegex$delegate",
        "sensitiveKeyValuesResponseTransformer",
        "getSensitiveKeyValuesResponseTransformer",
        "sensitiveKeyValuesResponseTransformer$delegate",
        "sensitiveKeysRequestRegex",
        "getSensitiveKeysRequestRegex",
        "sensitiveKeysRequestRegex$delegate",
        "sensitiveKeysResponseRegex",
        "getSensitiveKeysResponseRegex",
        "sensitiveKeysResponseRegex$delegate",
        "sensitiveKeysResponseTransformer",
        "getSensitiveKeysResponseTransformer",
        "sensitiveKeysResponseTransformer$delegate",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "removeSensitiveKeys",
        "msg",
        "Companion",
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


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final levelsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/logging/HttpLoggingInterceptor$Level;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final delegate$delegate:Lcom/vk/api/sdk/utils/ThreadLocalDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final filterCredentials:Z

.field private final keysToFilter:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final kvKeysExtractorPattern$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final kvKeysRestorePattern$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logger:Lcom/vk/api/sdk/utils/log/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private prefix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final restoreKVKeysTransformer$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sensitiveKeyRequestTransformer$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sensitiveKeyValuesResponseRegex$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sensitiveKeyValuesResponseTransformer$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sensitiveKeysRequestRegex$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sensitiveKeysResponseRegex$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sensitiveKeysResponseTransformer$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 1
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;

    const-string v4, "delegate"

    const-string v5, "getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v6

    sput-object v1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->Companion:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$Companion;

    const/4 v1, 0x6

    new-array v1, v1, [Lkotlin/Pair;

    .line 2
    sget-object v2, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->NONE:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-virtual {v2}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v6

    .line 3
    sget-object v3, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->ERROR:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-virtual {v3}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v1, v0

    .line 4
    sget-object v0, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->WARNING:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    .line 5
    sget-object v0, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->DEBUG:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    .line 6
    sget-object v0, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->VERBOSE:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v1, v3

    .line 7
    invoke-virtual {v2}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 8
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->levelsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ZLcom/vk/api/sdk/utils/log/Logger;)V
    .locals 3
    .param p2    # Lcom/vk/api/sdk/utils/log/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access_token"

    const-string v1, "key"

    const-string v2, "client_secret"

    .line 17
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 18
    new-instance v1, Lcom/vk/api/sdk/okhttp/DefaultLoggingPrefixer;

    invoke-direct {v1}, Lcom/vk/api/sdk/okhttp/DefaultLoggingPrefixer;-><init>()V

    .line 19
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;-><init>(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V

    return-void
.end method

.method public constructor <init>(ZLcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V
    .locals 3
    .param p2    # Lcom/vk/api/sdk/utils/log/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingPrefixer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "access_token"

    const-string v1, "key"

    const-string v2, "client_secret"

    .line 22
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;-><init>(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;)V
    .locals 1
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/utils/log/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vk/api/sdk/utils/log/Logger;",
            ")V"
        }
    .end annotation

    const-string v0, "keysToFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/vk/api/sdk/okhttp/DefaultLoggingPrefixer;

    invoke-direct {v0}, Lcom/vk/api/sdk/okhttp/DefaultLoggingPrefixer;-><init>()V

    .line 21
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;-><init>(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Collection;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;)V
    .locals 1
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/utils/log/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vk/api/sdk/utils/log/Logger;",
            "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;",
            ")V"
        }
    .end annotation

    const-string v0, "keysToFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingPrefixer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->filterCredentials:Z

    .line 3
    iput-object p2, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->keysToFilter:Ljava/util/Collection;

    .line 4
    iput-object p3, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    .line 5
    iput-object p4, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    .line 6
    new-instance p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeysRequestRegex$2;

    invoke-direct {p1, p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeysRequestRegex$2;-><init>(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeysRequestRegex$delegate:Lkotlin/Lazy;

    .line 7
    sget-object p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyRequestTransformer$2;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyRequestTransformer$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeyRequestTransformer$delegate:Lkotlin/Lazy;

    .line 8
    new-instance p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeysResponseRegex$2;

    invoke-direct {p1, p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeysResponseRegex$2;-><init>(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeysResponseRegex$delegate:Lkotlin/Lazy;

    .line 9
    sget-object p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeysResponseTransformer$2;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeysResponseTransformer$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeysResponseTransformer$delegate:Lkotlin/Lazy;

    .line 10
    sget-object p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$kvKeysExtractorPattern$2;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$kvKeysExtractorPattern$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->kvKeysExtractorPattern$delegate:Lkotlin/Lazy;

    .line 11
    sget-object p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$kvKeysRestorePattern$2;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$kvKeysRestorePattern$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->kvKeysRestorePattern$delegate:Lkotlin/Lazy;

    .line 12
    sget-object p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$restoreKVKeysTransformer$2;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$restoreKVKeysTransformer$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->restoreKVKeysTransformer$delegate:Lkotlin/Lazy;

    .line 13
    new-instance p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseRegex$2;

    invoke-direct {p1, p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseRegex$2;-><init>(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeyValuesResponseRegex$delegate:Lkotlin/Lazy;

    .line 14
    sget-object p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$sensitiveKeyValuesResponseTransformer$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeyValuesResponseTransformer$delegate:Lkotlin/Lazy;

    .line 15
    new-instance p1, Ljava/lang/ThreadLocal;

    invoke-direct {p1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->prefix:Ljava/lang/ThreadLocal;

    .line 16
    new-instance p1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$delegate$2;

    invoke-direct {p1, p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$delegate$2;-><init>(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)V

    invoke-static {p1}, Lcom/vk/api/sdk/utils/ThreadLocalDelegateKt;->threadLocal(Lkotlin/jvm/functions/Function0;)Lcom/vk/api/sdk/utils/ThreadLocalDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->delegate$delegate:Lcom/vk/api/sdk/utils/ThreadLocalDelegate;

    return-void
.end method

.method public static final synthetic access$getFilterCredentials$p(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->filterCredentials:Z

    return p0
.end method

.method public static final synthetic access$getKeysToFilter$p(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->keysToFilter:Ljava/util/Collection;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)Lcom/vk/api/sdk/utils/log/Logger;
    .locals 0

    iget-object p0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$getPrefix$p(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->prefix:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static final synthetic access$getRestoreKVKeysTransformer(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;)Lkotlin/jvm/functions/Function2;
    .locals 0

    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getRestoreKVKeysTransformer()Lkotlin/jvm/functions/Function2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeSensitiveKeys(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->removeSensitiveKeys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 3

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->delegate$delegate:Lcom/vk/api/sdk/utils/ThreadLocalDelegate;

    sget-object v1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/vk/api/sdk/utils/ThreadLocalDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method

.method private final getKvKeysExtractorPattern()Lkotlin/text/Regex;
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->kvKeysExtractorPattern$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method

.method private final getKvKeysRestorePattern()Lkotlin/text/Regex;
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->kvKeysRestorePattern$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method

.method private final getRestoreKVKeysTransformer()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlin/text/MatchResult;",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->restoreKVKeysTransformer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method private final getSensitiveKeyRequestTransformer()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/text/MatchResult;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeyRequestTransformer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final getSensitiveKeyValuesResponseRegex()Lkotlin/text/Regex;
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeyValuesResponseRegex$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method

.method private final getSensitiveKeyValuesResponseTransformer()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/text/MatchResult;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeyValuesResponseTransformer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final getSensitiveKeysRequestRegex()Lkotlin/text/Regex;
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeysRequestRegex$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method

.method private final getSensitiveKeysResponseRegex()Lkotlin/text/Regex;
    .locals 1

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeysResponseRegex$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method

.method private final getSensitiveKeysResponseTransformer()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/text/MatchResult;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->sensitiveKeysResponseTransformer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private final removeSensitiveKeys(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getKvKeysExtractorPattern()Lkotlin/text/Regex;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$removeSensitiveKeys$hiddenKVKeys$1;->INSTANCE:Lcom/vk/api/sdk/okhttp/LoggingInterceptor$removeSensitiveKeys$hiddenKVKeys$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getSensitiveKeysRequestRegex()Lkotlin/text/Regex;

    move-result-object v1

    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getSensitiveKeyRequestTransformer()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getSensitiveKeysResponseRegex()Lkotlin/text/Regex;

    move-result-object v1

    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getSensitiveKeysResponseTransformer()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getKvKeysRestorePattern()Lkotlin/text/Regex;

    move-result-object v1

    new-instance v2, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$removeSensitiveKeys$1;

    invoke-direct {v2, p0, v0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor$removeSensitiveKeys$1;-><init>(Lcom/vk/api/sdk/okhttp/LoggingInterceptor;Ljava/util/Iterator;)V

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getSensitiveKeyValuesResponseRegex()Lkotlin/text/Regex;

    move-result-object v0

    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getSensitiveKeyValuesResponseTransformer()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 9
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    .line 3
    :goto_0
    const-class v1, Lcom/vk/api/sdk/okhttp/LogLevelRequestTag;

    invoke-virtual {v0, v1}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/okhttp/LogLevelRequestTag;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/vk/api/sdk/okhttp/LogLevelRequestTag;->getLevel()Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    invoke-interface {v0}, Lcom/vk/api/sdk/utils/log/Logger;->getLogLevel()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v1

    const-wide/16 v6, 0x1000

    cmp-long v8, v4, v6

    if-gtz v8, :cond_4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    sget-object v2, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->levelsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    goto :goto_3

    .line 6
    :cond_4
    :goto_2
    sget-object v2, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->levelsMap:Ljava/util/Map;

    sget-object v3, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->WARNING:Lcom/vk/api/sdk/utils/log/Logger$LogLevel;

    invoke-virtual {v3}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v3

    invoke-virtual {v0}, Lcom/vk/api/sdk/utils/log/Logger$LogLevel;->getLevel()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 7
    :goto_3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v1, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    .line 9
    iget-object v0, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->prefix:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    invoke-interface {v1}, Lcom/vk/api/sdk/okhttp/LoggingPrefixer;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/vk/api/sdk/okhttp/LoggingInterceptor;->getDelegate()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/logging/HttpLoggingInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
