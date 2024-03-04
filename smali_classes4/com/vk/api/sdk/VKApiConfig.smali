.class public final Lcom/vk/api/sdk/VKApiConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/VKApiConfig$Builder;,
        Lcom/vk/api/sdk/VKApiConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0018\u0002\n\u0002\u0008#\u0008\u0086\u0008\u0018\u0000 v2\u00020\u0001:\u0002uvB\u00bb\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0018\u0012\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000b\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c\u0012\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\"\u0012\u0008\u0008\u0002\u0010#\u001a\u00020$\u0012\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b\u0012\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u000b\u0012\u0010\u0008\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000b\u00a2\u0006\u0002\u0010*J\u0006\u0010S\u001a\u00020TJ\u000e\u0010U\u001a\u00020T2\u0006\u0010\u0002\u001a\u00020\u0003J\t\u0010V\u001a\u00020\u0003H\u00c6\u0003J\u0014\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c0\u0003\u00a2\u0006\u0002\u0008XJ\u0016\u0010Y\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u00c0\u0003\u00a2\u0006\u0002\u0008ZJ\t\u0010[\u001a\u00020\u000cH\u00c6\u0003J\t\u0010\\\u001a\u00020\u0018H\u00c6\u0003J\u000f\u0010]\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000bH\u00c6\u0003J\t\u0010^\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001cH\u00c6\u0003J\u000f\u0010`\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001cH\u00c6\u0003J\t\u0010a\u001a\u00020\u001fH\u00c6\u0003J\u000f\u0010b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003J\t\u0010c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010d\u001a\u00020\"H\u00c6\u0003J\t\u0010e\u001a\u00020$H\u00c6\u0003J\u0011\u0010f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u00c6\u0003J\u0011\u0010g\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u000bH\u00c6\u0003J\u0011\u0010h\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010j\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000f\u0010k\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003J\t\u0010l\u001a\u00020\u000cH\u00c6\u0003J\t\u0010m\u001a\u00020\u000fH\u00c6\u0003J\t\u0010n\u001a\u00020\u0011H\u00c6\u0003J\t\u0010o\u001a\u00020\u0013H\u00c6\u0003J\u00c1\u0002\u0010p\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c2\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f2\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0008\u0002\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010#\u001a\u00020$2\u0010\u0008\u0002\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b2\u0010\u0008\u0002\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u000b2\u0010\u0008\u0002\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000bH\u00c6\u0001J\u0013\u0010q\u001a\u00020\u00182\u0008\u0010r\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010s\u001a\u00020\u0005H\u00d6\u0001J\t\u0010t\u001a\u00020\u000cH\u00d6\u0001R\u001a\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0019\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010,R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0011\u0010\u001a\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00103R\u0011\u0010\u0016\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108R\u0017\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010,R\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010,R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010,R\u0019\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010,R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u0011\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u0010@R\u0011\u0010A\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008B\u00106R\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010>R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010ER\u0011\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010GR\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010IR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010KR\u0011\u0010!\u001a\u00020\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u0010MR\u0019\u0010(\u001a\n\u0012\u0004\u0012\u00020)\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008N\u0010,R\u001c\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008O\u0010,R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008P\u0010QR\u0011\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u00106\u00a8\u0006w"
    }
    d2 = {
        "Lcom/vk/api/sdk/VKApiConfig;",
        "",
        "context",
        "Landroid/content/Context;",
        "appId",
        "",
        "validationHandler",
        "Lcom/vk/api/sdk/VKApiValidationHandler;",
        "apiCallListener",
        "Lcom/vk/api/sdk/VKApiCallListener;",
        "deviceId",
        "Lkotlin/Lazy;",
        "",
        "version",
        "okHttpProvider",
        "Lcom/vk/api/sdk/VKOkHttpProvider;",
        "logger",
        "Lcom/vk/api/sdk/utils/log/Logger;",
        "loggingPrefixer",
        "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;",
        "accessToken",
        "secret",
        "clientSecret",
        "logFilterCredentials",
        "",
        "debugCycleCalls",
        "callsPerSecondLimit",
        "httpApiHostProvider",
        "Lkotlin/Function0;",
        "langProvider",
        "keyValueStorage",
        "Lcom/vk/api/sdk/VKKeyValueStorage;",
        "customApiEndpoint",
        "rateLimitBackoffTimeoutMs",
        "",
        "apiMethodPriorityBackoff",
        "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;",
        "externalDeviceId",
        "anonymousTokenProvider",
        "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;",
        "responseValidator",
        "Lcom/vk/api/sdk/VKApiResponseValidator;",
        "(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V",
        "getAccessToken$core_release",
        "()Lkotlin/Lazy;",
        "getAnonymousTokenProvider",
        "getApiCallListener",
        "()Lcom/vk/api/sdk/VKApiCallListener;",
        "getApiMethodPriorityBackoff",
        "()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;",
        "getAppId",
        "()I",
        "getCallsPerSecondLimit",
        "getClientSecret",
        "()Ljava/lang/String;",
        "getContext",
        "()Landroid/content/Context;",
        "getCustomApiEndpoint",
        "getDebugCycleCalls",
        "getDeviceId",
        "getExternalDeviceId",
        "getHttpApiHostProvider",
        "()Lkotlin/jvm/functions/Function0;",
        "getKeyValueStorage",
        "()Lcom/vk/api/sdk/VKKeyValueStorage;",
        "lang",
        "getLang",
        "getLangProvider",
        "getLogFilterCredentials",
        "()Z",
        "getLogger",
        "()Lcom/vk/api/sdk/utils/log/Logger;",
        "getLoggingPrefixer",
        "()Lcom/vk/api/sdk/okhttp/LoggingPrefixer;",
        "getOkHttpProvider",
        "()Lcom/vk/api/sdk/VKOkHttpProvider;",
        "getRateLimitBackoffTimeoutMs",
        "()J",
        "getResponseValidator",
        "getSecret$core_release",
        "getValidationHandler",
        "()Lcom/vk/api/sdk/VKApiValidationHandler;",
        "getVersion",
        "buildUpon",
        "Lcom/vk/api/sdk/VKApiConfig$Builder;",
        "builder",
        "component1",
        "component10",
        "component10$core_release",
        "component11",
        "component11$core_release",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Builder",
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
.field public static final Companion:Lcom/vk/api/sdk/VKApiConfig$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_API_DOMAIN:Ljava/lang/String; = "api.vk.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_API_ENDPOINT:Ljava/lang/String; = "https://api.vk.com/method"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_API_VERSION:Ljava/lang/String; = "5.131"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_DOMAIN:Ljava/lang/String; = "vk.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_OAUTH_DOMAIN:Ljava/lang/String; = "oauth.vk.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_STATIC_DOMAIN:Ljava/lang/String; = "static.vk.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accessToken:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final anonymousTokenProvider:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final appId:I

.field private final callsPerSecondLimit:I

.field private final clientSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final customApiEndpoint:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final debugCycleCalls:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceId:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final externalDeviceId:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final httpApiHostProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final langProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final logFilterCredentials:Z

.field private final logger:Lcom/vk/api/sdk/utils/log/Logger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rateLimitBackoffTimeoutMs:J

.field private final responseValidator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/VKApiResponseValidator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final secret:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final version:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/VKApiConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/VKApiConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/VKApiConfig;->Companion:Lcom/vk/api/sdk/VKApiConfig$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/VKApiValidationHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/vk/api/sdk/VKApiCallListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/vk/api/sdk/VKOkHttpProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/vk/api/sdk/utils/log/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Lcom/vk/api/sdk/VKKeyValueStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p23    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p24    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/vk/api/sdk/VKApiValidationHandler;",
            "Lcom/vk/api/sdk/VKApiCallListener;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/VKOkHttpProvider;",
            "Lcom/vk/api/sdk/utils/log/Logger;",
            "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vk/api/sdk/VKKeyValueStorage;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vk/api/sdk/VKApiResponseValidator;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p14

    move-object/from16 v11, p16

    move-object/from16 v12, p17

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v15, p22

    move-object/from16 v0, p23

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpProvider"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingPrefixer"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secret"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugCycleCalls"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpApiHostProvider"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "langProvider"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueStorage"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customApiEndpoint"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiMethodPriorityBackoff"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalDeviceId"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anonymousTokenProvider"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p23

    .line 2
    iput-object v1, v0, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    move/from16 v1, p2

    .line 3
    iput v1, v0, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    move-object/from16 v1, p3

    .line 4
    iput-object v1, v0, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    move-object/from16 v1, p4

    .line 5
    iput-object v1, v0, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    .line 6
    iput-object v2, v0, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    .line 7
    iput-object v3, v0, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    .line 8
    iput-object v4, v0, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    .line 9
    iput-object v5, v0, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    .line 10
    iput-object v6, v0, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    .line 11
    iput-object v7, v0, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    .line 12
    iput-object v8, v0, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    .line 13
    iput-object v9, v0, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    move/from16 v1, p13

    .line 14
    iput-boolean v1, v0, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    .line 15
    iput-object v10, v0, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    .line 17
    iput-object v11, v0, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    .line 18
    iput-object v12, v0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    .line 19
    iput-object v13, v0, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    .line 20
    iput-object v14, v0, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    move-wide/from16 v1, p20

    .line 21
    iput-wide v1, v0, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    move-object/from16 v1, p22

    .line 22
    iput-object v1, v0, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    .line 23
    iput-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    move-object/from16 v1, p24

    .line 24
    iput-object v1, v0, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    move-object/from16 v1, p25

    .line 25
    iput-object v1, v0, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    .line 26
    sget-object v5, Lcom/vk/api/sdk/VKApiConfig$1;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$1;

    invoke-static {v5}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    const-string v6, "5.131"

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    .line 27
    new-instance v7, Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;

    invoke-direct {v7}, Lcom/vk/api/sdk/VKOkHttpProvider$DefaultProvider;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    .line 28
    new-instance v8, Lcom/vk/api/sdk/utils/log/DefaultApiLogger;

    sget-object v9, Lcom/vk/api/sdk/VKApiConfig$2;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$2;

    invoke-static {v9}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v9

    const-string v10, "VKSdkApi"

    invoke-direct {v8, v9, v10}, Lcom/vk/api/sdk/utils/log/DefaultApiLogger;-><init>(Lkotlin/Lazy;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    .line 29
    new-instance v9, Lcom/vk/api/sdk/okhttp/DefaultLoggingPrefixer;

    invoke-direct {v9}, Lcom/vk/api/sdk/okhttp/DefaultLoggingPrefixer;-><init>()V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    .line 30
    sget-object v10, Lcom/vk/api/sdk/VKApiConfig$3;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$3;

    invoke-static {v10}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v10

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    .line 31
    sget-object v11, Lcom/vk/api/sdk/VKApiConfig$4;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$4;

    invoke-static {v11}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    const-string v12, ""

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    goto :goto_b

    :cond_b
    move/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_c

    .line 32
    sget-object v14, Lcom/vk/api/sdk/VKApiConfig$5;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$5;

    invoke-static {v14}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v14

    goto :goto_c

    :cond_c
    move-object/from16 v14, p14

    :goto_c
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_d

    const/4 v15, 0x3

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    .line 33
    sget-object v16, Lcom/vk/api/sdk/VKApiConfig$6;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$6;

    goto :goto_e

    :cond_e
    move-object/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    .line 34
    sget-object v17, Lcom/vk/api/sdk/VKApiConfig$7;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$7;

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    move/from16 p27, v15

    .line 35
    new-instance v15, Lcom/vk/api/sdk/VKPreferencesKeyValueStorage;

    move-object/from16 v18, v14

    const/4 v14, 0x2

    move/from16 v19, v13

    move-object/from16 v13, p1

    invoke-direct {v15, v13, v3, v14, v3}, Lcom/vk/api/sdk/VKPreferencesKeyValueStorage;-><init>(Landroid/content/Context;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_10

    :cond_10
    move/from16 v19, v13

    move-object/from16 v18, v14

    move/from16 p27, v15

    move-object/from16 v13, p1

    move-object/from16 v15, p18

    :goto_10
    const/high16 v14, 0x40000

    and-int/2addr v14, v0

    if-eqz v14, :cond_11

    .line 36
    sget-object v14, Lcom/vk/api/sdk/VKApiConfig$8;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$8;

    invoke-static {v14}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v14

    goto :goto_11

    :cond_11
    move-object/from16 v14, p19

    :goto_11
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    .line 37
    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v20, v14

    const-wide/16 v13, 0x1

    invoke-virtual {v3, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    goto :goto_12

    :cond_12
    move-object/from16 v20, v14

    move-wide/from16 v13, p20

    :goto_12
    const/high16 v3, 0x100000

    and-int/2addr v3, v0

    if-eqz v3, :cond_13

    .line 38
    sget-object v3, Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;->Companion:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;

    invoke-virtual {v3}, Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff$Companion;->getDEFAULT()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    move-result-object v3

    goto :goto_13

    :cond_13
    move-object/from16 v3, p22

    :goto_13
    const/high16 v21, 0x200000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    .line 39
    sget-object v21, Lcom/vk/api/sdk/VKApiConfig$9;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$9;

    invoke-static/range {v21 .. v21}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v21

    goto :goto_14

    :cond_14
    move-object/from16 v21, p23

    :goto_14
    const/high16 v22, 0x400000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    .line 40
    sget-object v22, Lcom/vk/api/sdk/VKApiConfig$10;->INSTANCE:Lcom/vk/api/sdk/VKApiConfig$10;

    invoke-static/range {v22 .. v22}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v22

    goto :goto_15

    :cond_15
    move-object/from16 v22, p24

    :goto_15
    const/high16 v23, 0x800000

    and-int v0, v0, v23

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v0, p25

    :goto_16
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    move/from16 p15, v19

    move-object/from16 p16, v18

    move/from16 p17, p27

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move-object/from16 p20, v15

    move-object/from16 p21, v20

    move-wide/from16 p22, v13

    move-object/from16 p24, v3

    move-object/from16 p25, v21

    move-object/from16 p26, v22

    move-object/from16 p27, v0

    .line 41
    invoke-direct/range {p2 .. p27}, Lcom/vk/api/sdk/VKApiConfig;-><init>(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/api/sdk/VKApiConfig;Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;ILjava/lang/Object;)Lcom/vk/api/sdk/VKApiConfig;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p26

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move/from16 p13, v14

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-wide v14, v0, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    goto :goto_13

    :cond_13
    move-wide/from16 v14, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p20, v14

    if-eqz v16, :cond_14

    iget-object v14, v0, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    goto :goto_14

    :cond_14
    move-object/from16 v14, p22

    :goto_14
    const/high16 v15, 0x200000

    and-int/2addr v15, v1

    if-eqz v15, :cond_15

    iget-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p24

    :goto_16
    const/high16 v16, 0x800000

    and-int v1, v1, v16

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p25

    :goto_17
    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p22, v14

    move-object/from16 p24, v15

    move-object/from16 p25, v1

    invoke-virtual/range {p0 .. p25}, Lcom/vk/api/sdk/VKApiConfig;->copy(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)Lcom/vk/api/sdk/VKApiConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/vk/api/sdk/VKApiConfig$Builder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/vk/api/sdk/VKApiConfig$Builder;

    invoke-direct {v0, p0}, Lcom/vk/api/sdk/VKApiConfig$Builder;-><init>(Lcom/vk/api/sdk/VKApiConfig;)V

    return-object v0
.end method

.method public final builder(Landroid/content/Context;)Lcom/vk/api/sdk/VKApiConfig$Builder;
    .locals 30
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v1, p1

    const-string v0, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lcom/vk/api/sdk/VKApiConfig$Builder;

    new-instance v14, Lcom/vk/api/sdk/VKApiConfig;

    move-object v0, v14

    new-instance v4, Lcom/vk/api/sdk/VKDefaultValidationHandler;

    move-object v3, v4

    invoke-direct {v4, v2}, Lcom/vk/api/sdk/VKDefaultValidationHandler;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v28, v14

    move-object/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v29, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v26, 0xfffffa

    const/16 v27, 0x0

    invoke-direct/range {v0 .. v27}, Lcom/vk/api/sdk/VKApiConfig;-><init>(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v28

    move-object/from16 v0, v29

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/VKApiConfig$Builder;-><init>(Lcom/vk/api/sdk/VKApiConfig;)V

    return-object v0
.end method

.method public final component1()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final component10$core_release()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component11$core_release()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    return v0
.end method

.method public final component14()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    return v0
.end method

.method public final component16()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final component17()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final component18()Lcom/vk/api/sdk/VKKeyValueStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    return-object v0
.end method

.method public final component19()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    return v0
.end method

.method public final component20()J
    .locals 2

    iget-wide v0, p0, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    return-wide v0
.end method

.method public final component21()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    return-object v0
.end method

.method public final component22()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component23()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component24()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/VKApiResponseValidator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component3()Lcom/vk/api/sdk/VKApiValidationHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    return-object v0
.end method

.method public final component4()Lcom/vk/api/sdk/VKApiCallListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    return-object v0
.end method

.method public final component5()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/vk/api/sdk/VKOkHttpProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    return-object v0
.end method

.method public final component8()Lcom/vk/api/sdk/utils/log/Logger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    return-object v0
.end method

.method public final component9()Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    return-object v0
.end method

.method public final copy(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)Lcom/vk/api/sdk/VKApiConfig;
    .locals 28
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/api/sdk/VKApiValidationHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/vk/api/sdk/VKApiCallListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/vk/api/sdk/VKOkHttpProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/vk/api/sdk/utils/log/Logger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Lcom/vk/api/sdk/VKKeyValueStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p19    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p22    # Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p23    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p24    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p25    # Lkotlin/Lazy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/vk/api/sdk/VKApiValidationHandler;",
            "Lcom/vk/api/sdk/VKApiCallListener;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vk/api/sdk/VKOkHttpProvider;",
            "Lcom/vk/api/sdk/utils/log/Logger;",
            "Lcom/vk/api/sdk/okhttp/LoggingPrefixer;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vk/api/sdk/VKKeyValueStorage;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;",
            ">;",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vk/api/sdk/VKApiResponseValidator;",
            ">;)",
            "Lcom/vk/api/sdk/VKApiConfig;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-wide/from16 v20, p20

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    const-string v0, "context"

    move-object/from16 v26, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "version"

    move-object/from16 v1, p6

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpProvider"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    move-object/from16 v1, p8

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggingPrefixer"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    move-object/from16 v1, p10

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secret"

    move-object/from16 v1, p11

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientSecret"

    move-object/from16 v1, p12

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugCycleCalls"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpApiHostProvider"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "langProvider"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyValueStorage"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customApiEndpoint"

    move-object/from16 v1, p19

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiMethodPriorityBackoff"

    move-object/from16 v1, p22

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalDeviceId"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anonymousTokenProvider"

    move-object/from16 v1, p24

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v27, Lcom/vk/api/sdk/VKApiConfig;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct/range {v0 .. v25}, Lcom/vk/api/sdk/VKApiConfig;-><init>(Landroid/content/Context;ILcom/vk/api/sdk/VKApiValidationHandler;Lcom/vk/api/sdk/VKApiCallListener;Lkotlin/Lazy;Ljava/lang/String;Lcom/vk/api/sdk/VKOkHttpProvider;Lcom/vk/api/sdk/utils/log/Logger;Lcom/vk/api/sdk/okhttp/LoggingPrefixer;Lkotlin/Lazy;Lkotlin/Lazy;Ljava/lang/String;ZLkotlin/Lazy;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vk/api/sdk/VKKeyValueStorage;Lkotlin/Lazy;JLcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;Lkotlin/Lazy;Lkotlin/Lazy;Lkotlin/Lazy;)V

    return-object v27
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/api/sdk/VKApiConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/api/sdk/VKApiConfig;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    iget v3, p1, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    iget-boolean v3, p1, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    iget v3, p1, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    iget-wide v5, p1, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    iget-object v3, p1, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    iget-object p1, p1, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    return v2

    :cond_19
    return v0
.end method

.method public final getAccessToken$core_release()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getAnonymousTokenProvider()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/auth/VKAccessTokenProvider;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getApiCallListener()Lcom/vk/api/sdk/VKApiCallListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    return-object v0
.end method

.method public final getApiMethodPriorityBackoff()Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    return-object v0
.end method

.method public final getAppId()I
    .locals 1

    iget v0, p0, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    return v0
.end method

.method public final getCallsPerSecondLimit()I
    .locals 1

    iget v0, p0, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    return v0
.end method

.method public final getClientSecret()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCustomApiEndpoint()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getDebugCycleCalls()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getDeviceId()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getExternalDeviceId()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getHttpApiHostProvider()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getKeyValueStorage()Lcom/vk/api/sdk/VKKeyValueStorage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLangProvider()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getLogFilterCredentials()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    return v0
.end method

.method public final getLogger()Lcom/vk/api/sdk/utils/log/Logger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    return-object v0
.end method

.method public final getLoggingPrefixer()Lcom/vk/api/sdk/okhttp/LoggingPrefixer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    return-object v0
.end method

.method public final getOkHttpProvider()Lcom/vk/api/sdk/VKOkHttpProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    return-object v0
.end method

.method public final getRateLimitBackoffTimeoutMs()J
    .locals 2

    iget-wide v0, p0, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    return-wide v0
.end method

.method public final getResponseValidator()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Lcom/vk/api/sdk/VKApiResponseValidator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getSecret$core_release()Lkotlin/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    return-object v0
.end method

.method public final getValidationHandler()Lcom/vk/api/sdk/VKApiValidationHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    invoke-static {v3, v4}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VKApiConfig(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/api/sdk/VKApiConfig;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", validationHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->validationHandler:Lcom/vk/api/sdk/VKApiValidationHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apiCallListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->apiCallListener:Lcom/vk/api/sdk/VKApiCallListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->deviceId:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", okHttpProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->okHttpProvider:Lcom/vk/api/sdk/VKOkHttpProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->logger:Lcom/vk/api/sdk/utils/log/Logger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loggingPrefixer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->loggingPrefixer:Lcom/vk/api/sdk/okhttp/LoggingPrefixer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->accessToken:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->secret:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clientSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logFilterCredentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vk/api/sdk/VKApiConfig;->logFilterCredentials:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", debugCycleCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->debugCycleCalls:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callsPerSecondLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vk/api/sdk/VKApiConfig;->callsPerSecondLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", httpApiHostProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->httpApiHostProvider:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", langProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->langProvider:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keyValueStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->keyValueStorage:Lcom/vk/api/sdk/VKKeyValueStorage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customApiEndpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->customApiEndpoint:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rateLimitBackoffTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/vk/api/sdk/VKApiConfig;->rateLimitBackoffTimeoutMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", apiMethodPriorityBackoff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->apiMethodPriorityBackoff:Lcom/vk/api/sdk/utils/ApiMethodPriorityBackoff;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", externalDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->externalDeviceId:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anonymousTokenProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->anonymousTokenProvider:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseValidator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vk/api/sdk/VKApiConfig;->responseValidator:Lkotlin/Lazy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
