.class public final Lcom/appsflyer/internal/AFa1aSDK;
.super Lcom/appsflyer/AppsFlyerLib;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFa1aSDK$AFa1wSDK;,
        Lcom/appsflyer/internal/AFa1aSDK$AFa1vSDK;,
        Lcom/appsflyer/internal/AFa1aSDK$AFa1ySDK;
    }
.end annotation


# static fields
.field static AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener; = null

.field public static volatile AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener; = null

.field public static final AFKeystoreWrapper:Ljava/lang/String;

.field private static AFLogger:Ljava/lang/String; = null

.field private static AFLogger$LogLevel:Ljava/lang/String; = null

.field private static AFVersionDeclaration:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static AppsFlyerLib:I = 0x1

.field private static final afInfoLog:Ljava/lang/String;

.field private static afRDLog:Ljava/lang/String;

.field private static afWarnLog:Ljava/lang/String;

.field private static getLevel:Lcom/appsflyer/internal/AFa1aSDK;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static init:Ljava/lang/String;

.field private static onValidateInApp:I

.field private static onValidateInAppFailure:[C

.field public static final valueOf:Ljava/lang/String;

.field static final values:Ljava/lang/String;


# instance fields
.field private AppsFlyer2dXConversionCallback:Ljava/lang/String;

.field private final AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public afDebugLog:Lcom/appsflyer/internal/AFa1cSDK;

.field afErrorLog:Ljava/lang/String;

.field private onAppOpenAttribution:Landroid/content/SharedPreferences;

.field private onAppOpenAttributionNative:J

.field private onAttributionFailure:Lcom/appsflyer/internal/AFb1gSDK;

.field private onAttributionFailureNative:J

.field private onConversionDataFail:Landroid/app/Application;

.field private onConversionDataSuccess:Z

.field private onDeepLinking:Ljava/lang/String;

.field private onDeepLinkingNative:Z

.field private onInstallConversionDataLoadedNative:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onInstallConversionFailureNative:J

.field private onResponse:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private onResponseError:Z

.field private onResponseErrorNative:Z

.field private final onResponseNative:Lcom/appsflyer/internal/AFb1vSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper()V

    const-string v0, "126"

    .line 1
    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->values:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const-string v1, "\u0000"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6.9.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->valueOf:Ljava/lang/String;

    const-string v1, "https://%sstats.%s/stats"

    .line 3
    sput-object v1, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/androidevent?buildnumber=6.9.0&app_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v1, "https://%sadrevenue.%s/api/v2/generic/v6.9.0/android?app_id="

    .line 5
    sput-object v1, Lcom/appsflyer/internal/AFa1aSDK;->afRDLog:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/androidevent?app_id="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->afInfoLog:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sconversions.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFa1aSDK;->afWarnLog:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%slaunches.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFa1aSDK;->init:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sinapps.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger$LogLevel:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://%sattr.%s/api/v"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFVersionDeclaration:Ljava/lang/String;

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    .line 12
    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 13
    new-instance v1, Lcom/appsflyer/internal/AFa1aSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFa1aSDK;-><init>()V

    sput-object v1, Lcom/appsflyer/internal/AFa1aSDK;->getLevel:Lcom/appsflyer/internal/AFa1aSDK;

    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x17

    if-nez v1, :cond_0

    const/16 v1, 0x14

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    :goto_0
    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :array_0
    .array-data 4
        0x21
        0x1
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/AppsFlyerLib;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionFailureNative:J

    .line 3
    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailureNative:J

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttributionNative:J

    .line 5
    new-instance v0, Lcom/appsflyer/internal/AFb1vSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1vSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponseNative:Lcom/appsflyer/internal/AFb1vSDK;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onDeepLinkingNative:Z

    .line 7
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponseError:Z

    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-static {}, Lcom/appsflyer/AFVersionDeclaration;->init()V

    .line 10
    new-instance v1, Lcom/appsflyer/internal/AFb1bSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFb1bSDK;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 11
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFa1aSDK$AFa1wSDK;

    invoke-direct {v2, p0, v0}, Lcom/appsflyer/internal/AFa1aSDK$AFa1wSDK;-><init>(Lcom/appsflyer/internal/AFa1aSDK;B)V

    .line 12
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1mSDK;->AFInAppEventParameterName:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static AFInAppEventParameterName(Landroid/content/SharedPreferences;Z)I
    .locals 2

    .line 71
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "appsFlyerInAppEventCount"

    if-nez v0, :cond_1

    invoke-static {p0, v1, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    :cond_1
    invoke-static {p0, v1, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public static AFInAppEventParameterName()Ljava/lang/String;
    .locals 3

    .line 7
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-nez v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    const-string v2, "AppUserId"

    if-eq v0, v1, :cond_3

    invoke-static {v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/16 v1, 0x49

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    return-object v0

    :cond_3
    invoke-static {v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    add-int/lit8 v1, v1, 0x39

    .line 42
    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    const-string v1, "fb\\d*?://authorize.*"

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "access_token"

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 45
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    if-nez v2, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    :goto_0
    if-ne v2, v3, :cond_b

    .line 46
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x29

    if-nez v2, :cond_3

    const/16 v2, 0xa

    goto :goto_1

    :cond_3
    const/16 v2, 0x29

    :goto_1
    if-eq v2, v3, :cond_4

    return-object p0

    .line 48
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "&"

    .line 49
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 51
    :cond_5
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 52
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 54
    sget v6, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/2addr v6, v3

    rem-int/lit16 v3, v6, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v6, v6, 0x2

    .line 55
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 56
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x17

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v3, v3, 0x2

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_7

    .line 59
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v3, v3, 0x2

    .line 60
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 61
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 62
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_8

    .line 63
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const-string v6, "?"

    .line 64
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_9
    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 67
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_b
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    .line 70
    throw p0

    :cond_c
    return-object p0
.end method

.method public static AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "meta"

    .line 26
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x34

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    goto :goto_0

    :cond_0
    const/16 v1, 0x34

    :goto_0
    if-eq v1, v2, :cond_1

    .line 27
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    .line 28
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 29
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 30
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method private AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1bSDK;)V
    .locals 4

    .line 8
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v2, 0x5d

    if-eqz p1, :cond_1

    const/16 v3, 0x5d

    goto :goto_1

    :cond_1
    const/16 v3, 0x18

    :goto_1
    if-eq v3, v2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    if-eqz p1, :cond_3

    add-int/lit8 v1, v1, 0x27

    .line 11
    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->afDebugLog()Lcom/appsflyer/internal/AFd1dSDK;

    move-result-object v0

    .line 14
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1lSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1dSDK;->valueOf()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1dSDK;->AFKeystoreWrapper:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "api_name"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p1}, Lcom/appsflyer/internal/AFd1dSDK;->values(Lcom/appsflyer/internal/AFd1iSDK;)V

    .line 18
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    .line 19
    :cond_4
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1dSDK;->values()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 20
    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    throw p1
.end method

.method public static AFInAppEventParameterName(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "disableCollectNetworkData"

    .line 31
    invoke-static {v1, v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    sget-object v1, Lcom/appsflyer/internal/AFa1iSDK$AFa1xSDK;->valueOf:Lcom/appsflyer/internal/AFa1iSDK;

    .line 33
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1iSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1iSDK$AFa1vSDK;

    move-result-object p0

    .line 34
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1vSDK;->values:Ljava/lang/String;

    const-string v2, "network"

    .line 35
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 36
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1vSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const/16 v2, 0x27

    if-eqz v1, :cond_0

    const/16 v3, 0x21

    goto :goto_0

    :cond_0
    const/16 v3, 0x27

    :goto_0
    if-eq v3, v2, :cond_1

    .line 37
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    const-string v2, "operator"

    .line 38
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v0, :cond_4

    .line 39
    iget-object p0, p0, Lcom/appsflyer/internal/AFa1iSDK$AFa1vSDK;->AFInAppEventType:Ljava/lang/String;

    const/16 v0, 0x1b

    if-eqz p0, :cond_2

    const/16 v1, 0x63

    goto :goto_1

    :cond_2
    const/16 v1, 0x1b

    :goto_1
    if-eq v1, v0, :cond_4

    .line 40
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "carrier"

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Lcom/appsflyer/internal/AFa1tSDK;)V

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 5

    .line 76
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf()Z

    move-result v3

    const/16 v4, 0x59

    if-eqz v3, :cond_2

    const/16 v3, 0x2a

    goto :goto_2

    :cond_2
    const/16 v3, 0x59

    :goto_2
    if-eq v3, v4, :cond_3

    const-string p1, "CustomerUserId not set, reporting is disabled"

    .line 78
    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    :cond_3
    const/16 v3, 0x4c

    if-eqz v0, :cond_4

    const/16 v0, 0x63

    goto :goto_3

    :cond_4
    const/16 v0, 0x4c

    :goto_3
    if-eq v0, v3, :cond_a

    .line 79
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v3, "launchProtectEnabled"

    if-nez v0, :cond_5

    .line 80
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 82
    :cond_5
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 84
    :goto_4
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1aSDK;->afRDLog()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 85
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 86
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    const/16 v0, 0x4d

    if-eqz p1, :cond_6

    const/16 v1, 0x43

    goto :goto_5

    :cond_6
    const/16 v1, 0x4d

    :goto_5
    if-eq v1, v0, :cond_7

    .line 87
    sget v0, Lcom/appsflyer/attribution/RequestError;->EVENT_TIMEOUT:I

    sget-object v1, Lcom/appsflyer/internal/AFb1fSDK;->AFKeystoreWrapper:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    const-string v0, "Allowing multiple launches within a 5 second time window."

    .line 88
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 89
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionFailureNative:J

    .line 90
    :cond_a
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 91
    new-instance v2, Lcom/appsflyer/internal/AFa1aSDK$AFa1ySDK;

    invoke-direct {v2, p0, p1, v1}, Lcom/appsflyer/internal/AFa1aSDK$AFa1ySDK;-><init>(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    const-wide/16 v3, 0x0

    .line 92
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v2, v3, v4, p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private static AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p0    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x1d

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_0

    :cond_0
    const/16 v0, 0x1d

    :goto_0
    if-eq v0, v1, :cond_1

    .line 73
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const/16 p0, 0x4b

    div-int/lit8 p0, p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_1
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :goto_2
    const-string p1, "scheduleJob failed with Exception"

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_3
    const-string p1, "scheduleJob failed with RejectedExecutionException Exception"

    .line 75
    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;Ljava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 2
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1

    :goto_1
    invoke-static {p0, p1, v0, v1, p2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z
    .locals 4

    .line 22
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 23
    invoke-static {p2, v2}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/SharedPreferences;Z)I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_0
    invoke-static {p2, v1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/SharedPreferences;Z)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 24
    :goto_0
    instance-of p1, p1, Lcom/appsflyer/internal/AFd1cSDK;

    const/16 v3, 0x61

    if-nez p1, :cond_1

    const/16 p1, 0x61

    goto :goto_1

    :cond_1
    const/16 p1, 0x5e

    :goto_1
    if-eq p1, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    :goto_3
    const-string v3, "newGPReferrerSent"

    .line 25
    invoke-interface {p2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_6

    sget p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p2, p2, 0x4d

    rem-int/lit16 v3, p2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p2, p2, 0x2

    if-ne v0, v2, :cond_6

    add-int/lit8 v3, v3, 0x1b

    rem-int/lit16 p2, v3, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    const/4 p2, 0x0

    goto :goto_4

    :cond_4
    const/4 p2, 0x1

    :goto_4
    if-eq p2, v2, :cond_5

    goto :goto_5

    :cond_5
    const/4 p2, 0x1

    goto :goto_6

    :cond_6
    :goto_5
    const/4 p2, 0x0

    :goto_6
    const/16 v0, 0x62

    if-nez p2, :cond_7

    const/16 p2, 0x62

    goto :goto_7

    :cond_7
    const/16 p2, 0x34

    :goto_7
    if-eq p2, v0, :cond_8

    goto :goto_8

    :cond_8
    if-eqz p1, :cond_9

    :goto_8
    return v2

    :cond_9
    return v1
.end method

.method private static AFInAppEventParameterName(Ljava/lang/String;Z)Z
    .locals 2

    .line 6
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/AFa1aSDK;J)J
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v0, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    iput-wide p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailureNative:J

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    return-wide p1
.end method

.method private static AFInAppEventType(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7

    const-string v0, "af"

    const/16 v1, 0x60

    if-eqz p0, :cond_0

    const/16 v2, 0x60

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    :goto_0
    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    goto/16 :goto_6

    .line 83
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 84
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    .line 85
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/16 v4, 0x2b

    if-eqz v2, :cond_2

    const/16 v5, 0x2b

    goto :goto_1

    :cond_2
    const/16 v5, 0x37

    :goto_1
    if-eq v5, v4, :cond_3

    goto :goto_4

    .line 86
    :cond_3
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_6

    .line 87
    sget v5, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v5, v5, 0xd

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const-string v6, "Push Notification received af payload = "

    if-nez v5, :cond_5

    .line 88
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_5

    .line 91
    :cond_5
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    move-object v3, v4

    .line 94
    :goto_4
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_6

    :catchall_1
    move-exception p0

    .line 95
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_6
    return-object v3
.end method

.method public static AFInAppEventType(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 1

    const-string v0, "UTC"

    .line 62
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 63
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/AFa1aSDK;)Ljava/util/Map;
    .locals 3

    .line 2
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponse:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private AFInAppEventType(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/appsflyer/internal/AFe1xSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1xSDK;-><init>()V

    const/16 v1, 0x1a

    if-eqz p1, :cond_0

    const/16 v2, 0x1a

    goto :goto_0

    :cond_0
    const/16 v2, 0x22

    :goto_0
    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    .line 57
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    .line 58
    :goto_1
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    .line 59
    iput-object p3, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    .line 60
    instance-of p2, p1, Landroid/app/Activity;

    const/16 p3, 0x12

    if-eqz p2, :cond_2

    const/16 p2, 0x12

    goto :goto_2

    :cond_2
    const/16 p2, 0x30

    :goto_2
    if-eq p2, p3, :cond_3

    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    check-cast p1, Landroid/app/Activity;

    .line 61
    :goto_3
    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Lcom/appsflyer/internal/AFa1tSDK;Landroid/app/Activity;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x3b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static AFInAppEventType(Ljava/lang/String;)V
    .locals 4

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "pid"

    .line 133
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "Cannot set preinstall attribution data without a media source"

    .line 134
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_1
    const-string v0, "preInstallName"

    .line 136
    invoke-static {v0, p0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    const-string v0, "Error parsing JSON for preinstall"

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private AFInAppEventType(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectAndroidIdForceByUser"

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 66
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v3, 0x35

    if-nez v0, :cond_0

    const/16 v0, 0x63

    goto :goto_0

    :cond_0
    const/16 v0, 0x35

    :goto_0
    const-string v4, "collectIMEIForceByUser"

    if-eq v0, v3, :cond_1

    .line 67
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v4, v1}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 69
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 70
    invoke-virtual {v0, v4, v2}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_d

    .line 71
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    const-string v3, "advertiserId"

    if-eq v0, v1, :cond_7

    .line 72
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eq v2, v1, :cond_8

    goto :goto_7

    :cond_7
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x14

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_d

    .line 73
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->afErrorLog:Ljava/lang/String;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android_id"

    .line 74
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "validateGaidAndIMEI :: removing: android_id"

    .line 75
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 78
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "imei"

    .line 79
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/16 v0, 0x37

    if-eqz p1, :cond_a

    const/16 p1, 0x37

    goto :goto_5

    :cond_a
    const/4 p1, 0x7

    :goto_5
    if-eq p1, v0, :cond_b

    goto :goto_6

    :cond_b
    const-string/jumbo p1, "validateGaidAndIMEI :: removing: imei"

    .line 80
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_c
    :goto_6
    return-void

    :catch_0
    move-exception p1

    const-string v0, "failed to remove IMEI or AndroidID key from params; "

    .line 81
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_0
    move-exception p1

    throw p1

    :cond_d
    :goto_7
    return-void
.end method

.method private static AFInAppEventType(Landroid/content/SharedPreferences;)Z
    .locals 5
    .param p0    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const-string v4, "sentSuccessfully"

    invoke-interface {p0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x19

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static synthetic AFInAppEventType(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z
    .locals 2

    .line 3
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return p0
.end method

.method public static declared-synchronized AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4

    const-class v0, Lcom/appsflyer/internal/AFa1aSDK;

    monitor-enter v0

    .line 86
    :try_start_0
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    .line 87
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v1

    iget-object v1, v1, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttribution:Landroid/content/SharedPreferences;

    const/16 v2, 0x3f

    if-nez v1, :cond_0

    const/16 v1, 0x3f

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    :goto_0
    if-eq v1, v2, :cond_1

    goto :goto_3

    .line 88
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x4d

    if-eqz v1, :cond_2

    const/16 v1, 0x4d

    goto :goto_1

    :cond_2
    const/4 v1, 0x5

    :goto_1
    if-eq v1, v2, :cond_3

    .line 89
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_2
    iput-object p0, v1, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttribution:Landroid/content/SharedPreferences;

    goto :goto_3

    .line 91
    :cond_3
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "appsflyer-data"

    const/4 v3, 0x1

    .line 92
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_2

    .line 93
    :goto_3
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object p0

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttribution:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 43
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x4a

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    return-object p0

    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0
.end method

.method public static AFKeystoreWrapper(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 95
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eq v5, v3, :cond_1

    goto :goto_1

    .line 96
    :cond_1
    sget v4, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v4, v4, 0x29

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 97
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x3a

    div-int/2addr v5, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 98
    :goto_1
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 99
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x0

    .line 100
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v6, :cond_3

    const/16 v6, 0xa

    .line 101
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    goto :goto_3

    :cond_3
    const-string v6, ""

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    goto :goto_2

    .line 102
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 103
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :catchall_0
    move-exception v6

    move-object v9, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v9

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v6, v5

    move-object v5, v1

    goto :goto_4

    :catchall_2
    move-exception v4

    move-object v5, v1

    move-object v6, v5

    .line 104
    :goto_4
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not read connection response from: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v5, :cond_5

    .line 105
    :try_start_6
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_6

    :cond_5
    :goto_5
    if-eqz v6, :cond_8

    .line 106
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v4, p0, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eq v2, v3, :cond_7

    .line 107
    :try_start_7
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    goto :goto_7

    :cond_7
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 108
    :goto_6
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    .line 109
    :cond_8
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 110
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p0

    .line 111
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v1, "string_response"

    .line 112
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    return-object p0

    .line 114
    :catch_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_4
    move-exception p0

    if-eqz v5, :cond_9

    .line 115
    :try_start_a
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_9

    :cond_9
    :goto_8
    if-eqz v6, :cond_a

    .line 116
    invoke-virtual {v6}, Ljava/io/Reader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_a

    .line 117
    :goto_9
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/Throwable;)V

    .line 118
    :cond_a
    :goto_a
    throw p0
.end method

.method private AFKeystoreWrapper(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 77
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 78
    invoke-static {p2}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "appsFlyerFirstInstall"

    .line 79
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 80
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 81
    invoke-static {p2}, Lcom/appsflyer/internal/AFa1aSDK;->afInfoLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AppsFlyer: first launch detected"

    .line 82
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    move-object v0, p1

    .line 84
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppsFlyer: first launch date: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return-object v0
.end method

.method private static AFKeystoreWrapper([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 119
    sget-object v0, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventParameterName:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 120
    :try_start_0
    aget v2, p0, v1

    const/4 v3, 0x1

    .line 121
    aget v4, p0, v3

    const/4 v5, 0x2

    .line 122
    aget v6, p0, v5

    const/4 v7, 0x3

    .line 123
    aget v7, p0, v7

    .line 124
    sget-object v8, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInAppFailure:[C

    .line 125
    new-array v9, v4, [C

    .line 126
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_3

    .line 127
    new-array v2, v4, [C

    .line 128
    sput v1, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    if-ge v10, v4, :cond_2

    .line 129
    aget-byte v11, p1, v10

    if-ne v11, v3, :cond_1

    .line 130
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 131
    :cond_1
    aget-char v11, v9, v10

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 132
    :goto_1
    aget-char v8, v2, v10

    add-int/lit8 v10, v10, 0x1

    .line 133
    sput v10, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    goto :goto_0

    :cond_2
    move-object v9, v2

    :cond_3
    if-lez v7, :cond_4

    .line 134
    new-array p1, v4, [C

    .line 135
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v2, v4, v7

    .line 136
    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-eqz p2, :cond_6

    .line 138
    new-array p1, v4, [C

    .line 139
    sput v1, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    :goto_2
    sget p2, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    if-ge p2, v4, :cond_5

    sub-int v2, v4, p2

    sub-int/2addr v2, v3

    .line 140
    aget-char v2, v9, v2

    aput-char v2, p1, p2

    add-int/lit8 p2, p2, 0x1

    .line 141
    sput p2, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    goto :goto_2

    :cond_5
    move-object v9, p1

    :cond_6
    if-lez v6, :cond_7

    .line 142
    sput v1, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    :goto_3
    sget p1, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    if-ge p1, v4, :cond_7

    .line 143
    aget-char p2, v9, p1

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    add-int/lit8 p1, p1, 0x1

    .line 144
    sput p1, Lcom/appsflyer/internal/AFf1vSDK;->values:I

    goto :goto_3

    .line 145
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 146
    monitor-exit v0

    throw p0
.end method

.method static AFKeystoreWrapper()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInAppFailure:[C

    return-void

    :array_0
    .array-data 2
        0x77s
        0xe5s
        0xe2s
        0xe9s
        0xe3s
        0xdes
        0xdds
        0xe4s
        0xe9s
        0xe6s
        0xe4s
        0xe7s
        0x37s
        0x97s
        0x99s
        0xa3s
        0x96s
        0xa7s
        0x30s
        0x56s
        0x60s
        0x73s
        0x72s
        0x6ds
        0x67s
        0x65s
        0x6cs
        0x6as
        0x52s
        0x56s
        0x65s
        0x68s
        0x71s
        0x17s
    .end array-data
.end method

.method private AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "use cached AndroidId: "

    .line 44
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "deviceTrackingDisabled"

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "true"

    .line 46
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 48
    new-instance v4, Lcom/appsflyer/internal/AFb1eSDK;

    .line 49
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 50
    iget-object v2, v2, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    if-eqz v2, :cond_9

    .line 51
    invoke-static {v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/appsflyer/internal/AFb1eSDK;-><init>(Landroid/content/SharedPreferences;)V

    .line 52
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/appsflyer/internal/AFd1lSDK;->values(Lcom/appsflyer/internal/AFd1oSDK;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v2}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "imei"

    .line 54
    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "collectAndroidId"

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "androidIdCached"

    const/4 v3, 0x0

    .line 56
    invoke-interface {v4, v2, v3}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_id"

    if-eqz v1, :cond_4

    .line 57
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->afErrorLog:Ljava/lang/String;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1nSDK;->values(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v3, v1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_5

    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz v5, :cond_3

    .line 61
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    move-object v3, v5

    .line 62
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->afErrorLog:Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v3, v0

    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    .line 64
    invoke-interface {v4, v2, v3}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-interface {p2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    const-string v0, "Android ID was not collected."

    .line 66
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 67
    :goto_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1xSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1qSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    const-string v2, "isManual"

    .line 70
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p1, Lcom/appsflyer/internal/AFa1qSDK;->valueOf:Ljava/lang/String;

    const-string v2, "val"

    .line 72
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1qSDK;->values:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    const-string v1, "isLat"

    .line 74
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string p1, "oaid"

    .line 75
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void

    .line 76
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context must be set via setContext method before calling this dependency."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic AFKeystoreWrapper(Lcom/appsflyer/internal/AFa1aSDK;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger()V

    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static AFKeystoreWrapper(Ljava/lang/String;Z)V
    .locals 2

    .line 42
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private AFLogger()V
    .locals 4

    .line 8
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 9
    invoke-static {}, Lcom/appsflyer/internal/AFd1zSDK;->afErrorLog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object v1

    new-instance v2, Lcom/appsflyer/internal/AFd1zSDK;

    invoke-direct {v2, v0}, Lcom/appsflyer/internal/AFd1zSDK;-><init>(Lcom/appsflyer/internal/AFc1ySDK;)V

    .line 12
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1mSDK;->valueOf:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/internal/AFc1mSDK$5;

    invoke-direct {v3, v1, v2}, Lcom/appsflyer/internal/AFc1mSDK$5;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static AFLogger(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x58

    if-eqz v0, :cond_0

    const/16 v0, 0x58

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    const-string v2, "collectAndroidIdForceByUser"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    :goto_2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "collectIMEIForceByUser"

    .line 7
    invoke-virtual {v0, v1, v4}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eq v0, v3, :cond_6

    goto :goto_6

    :cond_6
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    :goto_6
    return v3

    :cond_7
    return v4
.end method

.method private AFLogger$LogLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "ro.appsflyer.preinstall.path"

    .line 1
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "AF_PRE_INSTALL_PATH"

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 6
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "/data/local/tmp/pre_install.appsflyer"

    .line 9
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 10
    :goto_1
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "/etc/pre_install.appsflyer"

    .line 11
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 12
    :cond_3
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    if-eq v2, v3, :cond_5

    .line 13
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    return-object p1

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method private AFVersionDeclaration(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    const/16 v1, 0x9

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const-string v3, "preInstallName"

    if-nez v0, :cond_8

    .line 2
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-static {v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    .line 4
    :cond_0
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->afInfoLog(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    :cond_2
    if-eq v1, v2, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger$LogLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    const-string v0, "AF_PRE_INSTALL_NAME"

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 9
    :cond_5
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    :goto_1
    if-eqz v4, :cond_6

    .line 10
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 11
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    invoke-interface {p1, v3, v4}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_7

    .line 12
    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_7
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    .line 14
    :cond_8
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 15
    invoke-static {v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 17
    throw p1
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFa1aSDK;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private static afDebugLog(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 11
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v0, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x5d

    if-eqz v1, :cond_0

    const/16 v1, 0x23

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    :goto_0
    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    const/16 v1, 0x61

    if-eqz p0, :cond_1

    const/16 v2, 0x3e

    goto :goto_1

    :cond_1
    const/16 v2, 0x61

    :goto_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 13
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 14
    :cond_2
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_2

    .line 15
    :cond_3
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v3
.end method

.method private static afDebugLog()Ljava/lang/String;
    .locals 4

    .line 10
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "appid"

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    const/16 v1, 0x4a

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static afDebugLog(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v1, 0x8000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eq v2, v1, :cond_3

    .line 4
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "appsflyer_backup_rules"

    const-string/jumbo v3, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0x20

    if-eqz p0, :cond_1

    const/16 p0, 0x32

    goto :goto_1

    :cond_1
    const/16 p0, 0x20

    :goto_1
    if-eq p0, v0, :cond_2

    .line 6
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    :try_start_2
    const-string p0, "appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data"

    .line 7
    invoke-static {p0, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string p0, "\'allowBackup\' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application\'s <full-backup-content> rules"

    .line 8
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "checkBackupRules Exception: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return-void
.end method

.method private afErrorLog(Landroid/content/Context;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponse:Ljava/util/Map;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    new-instance v2, Lcom/appsflyer/internal/AFa1aSDK$5;

    invoke-direct {v2, p0, v0, v1}, Lcom/appsflyer/internal/AFa1aSDK$5;-><init>(Lcom/appsflyer/internal/AFa1aSDK;J)V

    .line 4
    :try_start_0
    const-class v0, Lcom/facebook/FacebookSdk;

    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    const-string v1, "sdkInitialize"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 5
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v6

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.facebook.applinks.AppLinkData"

    .line 7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.facebook.applinks.AppLinkData$CompletionHandler"

    .line 8
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v5, "fetchDeferredAppLinkData"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    .line 9
    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v6

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-virtual {v0, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 10
    new-instance v8, Lcom/appsflyer/internal/AFa1mSDK$1;

    invoke-direct {v8, v0, v2}, Lcom/appsflyer/internal/AFa1mSDK$1;-><init>(Ljava/lang/Class;Lcom/appsflyer/internal/AFa1mSDK$AFa1zSDK;)V

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v10, v3, [Ljava/lang/Class;

    aput-object v1, v10, v6

    invoke-static {v0, v10, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v8, "facebook_app_id"

    const-string v10, "string"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/16 v8, 0x58

    :goto_0
    if-eqz v8, :cond_1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v6

    aput-object v1, v7, v3

    aput-object v0, v7, v9

    .line 14
    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 15
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v9

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-string v0, "Facebook app id not defined in resources"

    if-eq p1, v3, :cond_3

    .line 16
    :try_start_1
    invoke-interface {v2, v0}, Lcom/appsflyer/internal/AFa1mSDK$AFa1zSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2, v0}, Lcom/appsflyer/internal/AFa1mSDK$AFa1zSDK;->AFInAppEventParameterName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 p1, 0x14

    :try_start_2
    div-int/2addr p1, v6
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 17
    throw p1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_6

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1mSDK$AFa1zSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void

    .line 18
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1mSDK$AFa1zSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void

    .line 19
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1mSDK$AFa1zSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void

    .line 20
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFa1mSDK$AFa1zSDK;->AFInAppEventParameterName(Ljava/lang/String;)V

    return-void
.end method

.method private afErrorLog()Z
    .locals 4

    .line 21
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v0, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x22

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    :goto_0
    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponse:Ljava/util/Map;

    const/4 v2, 0x5

    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponse:Ljava/util/Map;

    if-eqz v1, :cond_7

    :goto_1
    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x57

    if-eqz v0, :cond_2

    const/16 v0, 0x52

    goto :goto_2

    :cond_2
    const/16 v0, 0x57

    :goto_2
    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponse:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/16 v1, 0xd

    :try_start_1
    div-int/2addr v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_7

    goto :goto_4

    :catchall_1
    move-exception v0

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponse:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/16 v1, 0x5b

    if-nez v0, :cond_4

    const/4 v0, 0x4

    goto :goto_3

    :cond_4
    const/16 v0, 0x5b

    :goto_3
    if-eq v0, v1, :cond_7

    :goto_4
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    if-nez v1, :cond_5

    const/4 v1, 0x6

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    :goto_5
    if-ne v1, v2, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    throw v0

    :cond_7
    return v3
.end method

.method private static afInfoLog(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "appsFlyerCount"

    .line 3
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    const/16 v0, 0x35

    if-nez p0, :cond_0

    const/16 p0, 0x35

    goto :goto_0

    :cond_0
    const/16 p0, 0x15

    :goto_0
    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p0, 0x1

    return p0
.end method

.method private afInfoLog()[Lcom/appsflyer/internal/AFe1iSDK;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x18

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    :goto_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->getLevel()Lcom/appsflyer/internal/AFe1fSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper()[Lcom/appsflyer/internal/AFe1iSDK;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->getLevel()Lcom/appsflyer/internal/AFe1fSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper()[Lcom/appsflyer/internal/AFe1iSDK;

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static afRDLog(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFb1wSDK;->valueOf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    const-string v1, "OPPO device found"

    .line 2
    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    .line 3
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_2

    const-string v0, "keyPropDisableAFKeystore"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "OS SDK is="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; use KeyStore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/appsflyer/AFKeystoreWrapper;

    invoke-direct {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1uSDK;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p0

    .line 8
    iput-object p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName:Ljava/lang/String;

    const/4 p0, 0x0

    .line 9
    iput p0, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:I

    .line 10
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->values(Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType()Ljava/lang/String;

    move-result-object p0

    .line 12
    iget-object v1, v0, Lcom/appsflyer/AFKeystoreWrapper;->values:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_0
    iget v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType:I

    const-string v2, "Deleting key with alias: "

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object v2, v0, Lcom/appsflyer/AFKeystoreWrapper;->values:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :try_start_2
    iget-object v3, v0, Lcom/appsflyer/AFKeystoreWrapper;->AFKeystoreWrapper:Ljava/security/KeyStore;

    invoke-virtual {v3, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 17
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p0

    .line 18
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " occurred"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AFKeystoreWrapper;->values(Ljava/lang/String;)V

    :goto_2
    const-string p0, "KSAppsFlyerId"

    .line 21
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KSAppsFlyerRICounter"

    .line 22
    invoke-virtual {v0}, Lcom/appsflyer/AFKeystoreWrapper;->values()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    .line 23
    monitor-exit v1

    throw p0

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "OS SDK is="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; no KeyStore usage"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    return-void
.end method

.method private afRDLog()Z
    .locals 11

    .line 25
    iget-wide v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionFailureNative:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_4

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionFailureNative:J

    sub-long/2addr v0, v2

    .line 28
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "yyyy/MM/dd HH:mm:ss.SSS Z"

    invoke-direct {v2, v6, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    iget-wide v6, p0, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionFailureNative:J

    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v6

    .line 30
    iget-wide v7, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailureNative:J

    invoke-static {v2, v7, v8}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v2

    .line 31
    iget-wide v7, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttributionNative:J

    const/4 v9, 0x1

    cmp-long v10, v0, v7

    if-gez v10, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v5

    aput-object v2, v7, v9

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    iget-wide v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttributionNative:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms"

    invoke-static {v3, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    return v9

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    const/16 v10, 0x61

    if-nez v7, :cond_2

    const/16 v7, 0x61

    goto :goto_1

    :cond_2
    const/16 v7, 0x58

    :goto_1
    if-eq v7, v10, :cond_3

    goto :goto_2

    :cond_3
    new-array v7, v8, [Ljava/lang/Object;

    aput-object v6, v7, v5

    aput-object v2, v7, v9

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v4

    const-string v0, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)"

    invoke-static {v3, v0, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_4
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    if-nez v0, :cond_5

    .line 36
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v0, v4

    const-string v0, "Sending first launch for this session!"

    .line 37
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 38
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v0, v4

    :cond_5
    :goto_2
    return v5
.end method

.method private afWarnLog(Landroid/content/Context;)J
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AppsFlyerTimePassedSincePrevLaunch"

    const-wide/16 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    invoke-interface {p1, v1, v6, v7}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    .line 5
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, p1, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x29

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    :goto_0
    if-eq v0, v1, :cond_1

    xor-long v0, v6, v4

    goto :goto_1

    :cond_1
    sub-long v0, v6, v4

    :goto_1
    add-int/lit8 p1, p1, 0x4b

    .line 6
    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/16 p1, 0x45

    goto :goto_2

    :cond_2
    const/4 p1, 0x1

    :goto_2
    const-wide/16 v3, 0x3e8

    .line 7
    div-long/2addr v0, v3

    return-wide v0

    :cond_3
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    if-nez v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    const-string v2, "api_store_value"

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x53

    .line 3
    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    .line 4
    :goto_1
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v1, 0x4b

    if-nez p1, :cond_2

    const/16 p1, 0x3f

    goto :goto_2

    :cond_2
    const/16 p1, 0x4b

    :goto_2
    if-ne p1, v1, :cond_3

    return-object v0

    :cond_3
    const/4 p1, 0x0

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 6
    throw p1

    :cond_4
    const-string v0, "AF_STORE"

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 7
    throw p1
.end method

.method private init(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 45
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "INSTALL_STORE"

    .line 46
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    if-eq v2, v4, :cond_1

    .line 47
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->afInfoLog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    .line 49
    :goto_1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    if-eq v3, v4, :cond_3

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 50
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->getLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x6d

    .line 51
    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 52
    :goto_2
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    invoke-interface {p1, v1, v5}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-object v5
.end method

.method private static onAttributionFailureNative(Landroid/content/Context;)Z
    .locals 9

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const-string v3, "Failed collecting ivc data"

    const/4 v4, 0x1

    if-lt v1, v2, :cond_5

    .line 3
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "connectivity"

    if-eqz v1, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x0

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 7
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    .line 8
    :goto_1
    sget v6, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v6, v6, 0x6b

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v6, v6, 0x2

    :goto_2
    const/16 v6, 0xf

    const/16 v7, 0x44

    if-ge v5, v2, :cond_2

    const/16 v8, 0xf

    goto :goto_3

    :cond_2
    const/16 v8, 0x44

    :goto_3
    if-eq v8, v7, :cond_4

    sget v7, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v7, v7, 0x35

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v7, v7, 0x2

    .line 9
    :try_start_1
    aget-object v7, v1, v5

    .line 10
    invoke-virtual {p0, v7}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v7

    const/4 v8, 0x4

    .line 11
    invoke-virtual {v7, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v6, :cond_3

    return v4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return v0

    :catch_0
    move-exception p0

    .line 12
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 13
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 15
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    const/4 v5, 0x1

    :goto_5
    if-eq v5, v4, :cond_6

    .line 16
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string v1, "tun0"

    .line 17
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 18
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    if-nez v0, :cond_a

    return p0

    :cond_a
    const/4 p0, 0x0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    .line 19
    invoke-static {v3, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_6
    return v0
.end method

.method private static onInstallConversionDataLoadedNative(Landroid/content/Context;)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "level"

    const/4 v2, -0x1

    .line 2
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 3
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eq v3, v0, :cond_2

    .line 4
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x16

    if-ne p0, v2, :cond_1

    const/16 v2, 0x16

    goto :goto_1

    :cond_1
    const/16 v2, 0x29

    :goto_1
    if-eq v2, v0, :cond_2

    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float v0, v0, p0

    goto :goto_2

    :cond_2
    const/high16 p0, 0x42480000    # 50.0f

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :catchall_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v0
.end method

.method public static valueOf(Landroid/content/SharedPreferences;Z)I
    .locals 3

    .line 136
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x12

    if-nez v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    const-string v2, "appsFlyerCount"

    if-eq v0, v1, :cond_1

    invoke-static {p0, v2, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result p0

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return p0

    :cond_1
    invoke-static {p0, v2, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFa1aSDK;)Landroid/app/Application;
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    if-eq v0, v2, :cond_1

    const/16 v0, 0x1e

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static valueOf(Lcom/appsflyer/internal/AFd1oSDK;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 121
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "CACHED_CHANNEL"

    const/4 v1, 0x0

    .line 122
    invoke-interface {p0, v0, v1}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    .line 123
    invoke-interface {p0, v0, p1}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    return-object p1

    :cond_1
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    return-object v2

    .line 125
    :cond_3
    :try_start_0
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 126
    throw p0
.end method

.method private static valueOf(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 105
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 106
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 107
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    const-string v3, "Found PreInstall property!"

    .line 108
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v0

    .line 113
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v2, :cond_0

    .line 114
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 115
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x7b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_2

    :catchall_3
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_0
    move-object v2, v0

    .line 117
    :catch_1
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "PreInstall file wasn\'t found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v2, :cond_0

    .line 118
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_0
    :goto_2
    return-object v0

    :catchall_4
    move-exception p0

    if-eqz v2, :cond_1

    :try_start_7
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    :cond_1
    :goto_3
    throw p0
.end method

.method private static valueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x3f

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eq v1, v3, :cond_3

    .line 104
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, p0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eq v2, v3, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private valueOf(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 17
    new-instance v0, Lcom/appsflyer/internal/AFe1ySDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFe1ySDK;-><init>()V

    const/16 v1, 0xa

    if-eqz p1, :cond_0

    const/16 v2, 0x30

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    :goto_0
    if-eq v2, v1, :cond_1

    .line 18
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    iput-object v1, v0, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    .line 20
    :cond_1
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    const/16 v1, 0x46

    if-eqz p2, :cond_2

    const/16 v2, 0x46

    goto :goto_1

    :cond_2
    const/16 v2, 0x41

    :goto_1
    if-eq v2, v1, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v1, 0x5

    if-le p2, v1, :cond_4

    .line 22
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;Landroid/content/SharedPreferences;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 23
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/appsflyer/internal/AFa1aSDK$AFa1ySDK;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/appsflyer/internal/AFa1aSDK$AFa1ySDK;-><init>(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    const-wide/16 v0, 0x5

    .line 25
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    :cond_4
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x5d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private valueOf(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 4
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v3, v3, 0x2f

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ne v3, v2, :cond_2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v3, Lcom/appsflyer/internal/AFe1xSDK;

    invoke-direct {v3}, Lcom/appsflyer/internal/AFe1xSDK;-><init>()V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    .line 8
    :cond_3
    :goto_1
    new-instance v3, Lcom/appsflyer/internal/AFe1uSDK;

    invoke-direct {v3}, Lcom/appsflyer/internal/AFe1uSDK;-><init>()V

    :goto_2
    if-eqz p1, :cond_6

    .line 9
    sget v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v4, v4, 0x39

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v3, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    goto :goto_4

    .line 11
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v3, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    .line 12
    :cond_6
    :goto_4
    iput-object p2, v3, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    .line 13
    iput-object p3, v3, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    .line 14
    iput-object p4, v3, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    .line 15
    iput-object p5, v3, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Ljava/lang/String;

    .line 16
    invoke-direct {p0, v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;)V

    return-void
.end method

.method private static valueOf(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "window"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    const/16 v0, 0x29

    if-eqz p0, :cond_0

    const/16 v1, 0x4b

    goto :goto_0

    :cond_0
    const/16 v1, 0x29

    :goto_0
    if-eq v1, v0, :cond_5

    .line 85
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    if-eq p0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    const-string p0, "lr"

    goto :goto_1

    .line 87
    :cond_2
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr p0, v1

    const-string p0, "pr"

    goto :goto_1

    :cond_3
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x53

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr p0, v1

    const-string p0, "l"

    goto :goto_1

    :cond_4
    const-string p0, "p"

    :goto_1
    const-string v0, "sc_o"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private static valueOf(Landroid/content/Context;ZLjava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ro.product.cpu.abi"

    .line 89
    invoke-static {v1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.product.cpu.abi2"

    .line 90
    invoke-static {v1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpu_abi2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "os.arch"

    .line 91
    invoke-static {v1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "arch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ro.build.display.id"

    .line 92
    invoke-static {v1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_display_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x2

    if-eqz p1, :cond_3

    .line 93
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v3

    .line 94
    invoke-static {p0, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;Ljava/util/Map;)V

    if-gt p3, v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    .line 95
    :cond_2
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1bSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1bSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1bSDK;->values()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 96
    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1fSDK;->values(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "dim"

    .line 97
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "deviceData"

    .line 98
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr p0, v3

    if-eqz p0, :cond_4

    return-void

    :cond_4
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private valueOf(Lcom/appsflyer/internal/AFa1tSDK;)V
    .locals 11

    .line 26
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_15

    .line 27
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    if-nez v0, :cond_0

    const-string p1, "sendWithEvent - got null context. skipping event/launch."

    .line 28
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 30
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 31
    iget-object v3, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFd1lSDK;->values()Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendWithEvent from activity: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType()Z

    move-result v3

    .line 34
    instance-of v4, p1, Lcom/appsflyer/internal/AFe1ySDK;

    .line 35
    instance-of v5, p1, Lcom/appsflyer/internal/AFd1cSDK;

    .line 36
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Lcom/appsflyer/internal/AFa1tSDK;)Ljava/util/Map;

    move-result-object v6

    const-string v7, "appsflyerKey"

    .line 37
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_12

    .line 38
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_7

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_4

    .line 40
    sget v7, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v7, v7, 0x77

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v7, v1

    const-string v10, "AppsFlyerLib.sendWithEvent"

    if-eqz v7, :cond_3

    .line 41
    invoke-static {v10}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/16 v7, 0x53

    :try_start_0
    div-int/2addr v7, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 42
    throw p1

    .line 43
    :cond_3
    invoke-static {v10}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 44
    :cond_4
    :goto_0
    invoke-static {v2, v9}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/SharedPreferences;Z)I

    move-result v2

    if-nez v5, :cond_9

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x1

    :goto_1
    if-eq v4, v8, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_8

    if-ge v2, v1, :cond_7

    .line 45
    sget-object v4, Lcom/appsflyer/internal/AFa1aSDK;->afWarnLog:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 47
    sget v5, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v5, v5, 0x65

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v5, v1

    goto :goto_3

    .line 48
    :cond_7
    sget-object v4, Lcom/appsflyer/internal/AFa1aSDK;->init:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 50
    :cond_8
    sget-object v4, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger$LogLevel:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    .line 51
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 52
    :cond_9
    :goto_2
    sget-object v4, Lcom/appsflyer/internal/AFa1aSDK;->AFVersionDeclaration:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 54
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&buildnumber=6.9.0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {p0, v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&channel="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 58
    :cond_a
    invoke-direct {p0, v6}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Ljava/util/Map;)V

    .line 59
    new-instance v0, Lcom/appsflyer/internal/AFa1aSDK$AFa1vSDK;

    .line 60
    invoke-virtual {p1, v4}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v6}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(I)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-direct {v0, p0, p1, v9}, Lcom/appsflyer/internal/AFa1aSDK$AFa1vSDK;-><init>(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    if-eqz v3, :cond_10

    .line 63
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1aSDK;->afInfoLog()[Lcom/appsflyer/internal/AFe1iSDK;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v3, v2, :cond_c

    .line 64
    sget v5, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v5, v5, 0x79

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v5, v1

    .line 65
    aget-object v5, p1, v3

    .line 66
    iget-object v6, v5, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    .line 67
    sget-object v7, Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;->valueOf:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    if-ne v6, v7, :cond_b

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Failed to get "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v5, v5, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:Ljava/lang/String;

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " referrer, wait ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 71
    :cond_c
    iget-boolean p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponseError:Z

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1aSDK;->afErrorLog()Z

    move-result p1

    if-nez p1, :cond_d

    .line 72
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    const-string p1, "fetching Facebook deferred AppLink data, wait ..."

    .line 73
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 74
    :cond_d
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFd1lSDK;->AFKeystoreWrapper()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 75
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_e

    const/4 v8, 0x0

    :cond_e
    move v9, v8

    goto :goto_5

    :cond_f
    move v9, v4

    .line 76
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventParameterName()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    if-eqz v9, :cond_11

    const-wide/16 v1, 0x1f4

    goto :goto_6

    :cond_11
    const-wide/16 v1, 0x0

    .line 77
    :goto_6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void

    :cond_12
    :goto_7
    const-string v0, "Not sending data yet, waiting for dev key"

    .line 78
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 79
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_13

    const/4 v8, 0x0

    :cond_13
    if-eqz v8, :cond_14

    goto :goto_8

    .line 80
    :cond_14
    sget v0, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v1, Lcom/appsflyer/internal/AFb1fSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :goto_8
    return-void

    .line 81
    :cond_15
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    const/4 p1, 0x0

    .line 82
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 83
    throw p1
.end method

.method private static valueOf(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "oneLinkSlug"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "onelinkVersion"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x2e

    :goto_0
    if-eq v4, v2, :cond_1

    const-string v2, "onelink_id"

    .line 101
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 102
    :cond_3
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "onelink_ver"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    return-void

    :cond_4
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method static synthetic valueOf(Lcom/appsflyer/internal/AFa1aSDK;Z)Z
    .locals 2

    .line 2
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    iput-boolean p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onDeepLinkingNative:Z

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    return p1
.end method

.method private static values(Landroid/content/SharedPreferences;Ljava/lang/String;Z)I
    .locals 4

    .line 83
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x39

    if-eqz v0, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 84
    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eq v3, v2, :cond_3

    :goto_2
    add-int/2addr v0, v2

    .line 85
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 86
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 87
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    :cond_3
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFb1pSDK;->afErrorLog()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 89
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    .line 90
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFb1pSDK;->valueOf(Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    .line 91
    throw p0

    :cond_5
    :goto_3
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x5b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    return v0
.end method

.method public static values()Lcom/appsflyer/internal/AFa1aSDK;
    .locals 4

    .line 2
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x63

    if-nez v1, :cond_0

    const/16 v1, 0x63

    goto :goto_0

    :cond_0
    const/16 v1, 0x34

    :goto_0
    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/appsflyer/internal/AFa1aSDK;->getLevel:Lcom/appsflyer/internal/AFa1aSDK;

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x18

    if-nez v0, :cond_1

    const/16 v0, 0x18

    goto :goto_1

    :cond_1
    const/16 v0, 0x36

    :goto_1
    if-eq v0, v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0
.end method

.method static synthetic values(Lcom/appsflyer/internal/AFa1aSDK;)Lcom/appsflyer/internal/AFb1bSDK;
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v0, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0xd

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :cond_0
    const/16 v1, 0x48

    :goto_0
    const/4 v3, 0x0

    iget-object p0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0xe

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    if-ne v3, v1, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private values(Ljava/util/Map;)Lcom/appsflyer/internal/AFd1ySDK$AFa1wSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appsflyer/internal/AFd1ySDK$AFa1wSDK;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/appsflyer/internal/AFa1aSDK$1;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK$1;-><init>(Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-object v0
.end method

.method private values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 77
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/16 v2, 0x33

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eq v2, v1, :cond_1

    const/4 p1, 0x0

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v2, 0x1e

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x1e

    :goto_1
    if-eq v1, v2, :cond_3

    .line 79
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    if-eqz p1, :cond_3

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1ySDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static values(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 70
    const-class v0, Ljava/lang/String;

    const-string v1, "android.os.SystemProperties"

    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    const/16 v3, 0x19

    if-eqz v2, :cond_0

    const/16 v2, 0x3f

    goto :goto_0

    :cond_0
    const/16 v2, 0x19

    :goto_0
    const-string v4, "get"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1

    .line 71
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Class;

    aput-object v0, v2, v7

    .line 72
    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 73
    :cond_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    aput-object v0, v2, v6

    .line 74
    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :goto_2
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    return-object v5
.end method

.method private synthetic values(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 6
    :cond_0
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 7
    new-instance v1, Lcom/appsflyer/internal/AFb1eSDK;

    .line 8
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 9
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 10
    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/appsflyer/internal/AFb1eSDK;-><init>(Landroid/content/SharedPreferences;)V

    .line 11
    invoke-static {p2}, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v2, "ddl_sent"

    .line 13
    invoke-interface {v1, v2}, Lcom/appsflyer/internal/AFd1oSDK;->AFKeystoreWrapper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 p1, 0x0

    const-string p2, "No direct deep link"

    .line 14
    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 15
    :cond_2
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, p2, p1}, Lcom/appsflyer/internal/AFa1uSDK;->values(Ljava/util/Map;Landroid/content/Intent;Landroid/content/Context;)V

    return-void

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context must be set via setContext method before calling this dependency."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static values(Landroid/content/Context;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 40
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 41
    sget-object v0, Lcom/appsflyer/internal/AFa1zSDK$AFa1xSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFa1zSDK;

    .line 42
    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/AFa1zSDK;->AFInAppEventParameterName(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1zSDK$AFa1vSDK;

    move-result-object p0

    .line 43
    iget v0, p0, Lcom/appsflyer/internal/AFa1zSDK$AFa1vSDK;->AFInAppEventType:F

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "btl"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p0, p0, Lcom/appsflyer/internal/AFa1zSDK$AFa1vSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/16 v0, 0x15

    if-eqz p0, :cond_0

    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    :goto_0
    if-eq v1, v0, :cond_2

    .line 46
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const-string v3, "btch"

    invoke-interface {p1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v0, v2, :cond_2

    const/16 p0, 0x26

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method private static values(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "prev_event_name"

    if-nez v0, :cond_4

    .line 49
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    :try_start_0
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "prev_event_timestamp"

    if-eqz v4, :cond_1

    .line 52
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v7, -0x1

    .line 53
    invoke-interface {p0, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "prev_event"

    .line 55
    invoke-interface {p1, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    invoke-interface {v0, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-interface {p0, v5, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x2f

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x2f

    :goto_1
    if-ne v1, p1, :cond_3

    return-void

    :cond_3
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 60
    :cond_4
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 61
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 62
    :try_start_3
    invoke-interface {p0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 63
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 64
    throw p0

    :goto_2
    const-string p1, "Error while processing previous event."

    invoke-static {p1, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static values(Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 2

    .line 39
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-nez p0, :cond_2

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 p0, 0x22

    if-eqz v1, :cond_0

    const/16 v0, 0x41

    goto :goto_0

    :cond_0
    const/16 v0, 0x22

    :goto_0
    if-eq v0, p0, :cond_1

    const/16 p0, 0x4f

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_1
    return-void

    :cond_2
    sput-object p0, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    return-void
.end method

.method private static values(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x62

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x62

    :goto_0
    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p0, p0, 0x2

    const/16 p1, 0x45

    if-eqz p0, :cond_1

    const/16 p0, 0x45

    goto :goto_1

    :cond_1
    const/16 p0, 0x5b

    :goto_1
    if-eq p0, p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0
.end method

.method private static values(Ljava/util/Map;Lcom/appsflyer/internal/AFd1dSDK;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFd1dSDK;",
            ")V"
        }
    .end annotation

    .line 333
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/appsflyer/internal/AFd1dSDK;->values:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 334
    iget-object v1, p1, Lcom/appsflyer/internal/AFd1dSDK;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 335
    iget-object p1, p1, Lcom/appsflyer/internal/AFd1dSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v1, "gcd"

    invoke-interface {p1, v1}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;)V

    .line 336
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p1, v3, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 338
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 339
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 340
    :cond_3
    invoke-static {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 341
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method private static values(Lorg/json/JSONObject;)V
    .locals 15

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 22
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 23
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_2
    move-object v4, v2

    .line 26
    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 27
    sget v5, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v5, v5, 0x7d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_a

    if-nez v4, :cond_b

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 29
    :try_start_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 30
    :goto_4
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v7, v8, :cond_3

    .line 31
    sget v8, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v8, v8, 0x45

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v8, v8, 0x2

    .line 32
    :try_start_2
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_2

    .line 33
    sget v8, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v8, v8, 0x29

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v8, v8, 0x2

    const/16 v9, 0x42

    if-eqz v8, :cond_4

    const/16 v8, 0x4f

    goto :goto_5

    :cond_4
    const/16 v8, 0x42

    :goto_5
    const/16 v10, 0x5b

    const/4 v11, 0x1

    if-eq v8, v9, :cond_5

    .line 34
    :try_start_3
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v14, v8, v12

    if-eqz v14, :cond_2

    goto :goto_7

    :cond_5
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    cmp-long v14, v8, v12

    if-eqz v14, :cond_6

    const/16 v8, 0x5b

    goto :goto_6

    :cond_6
    const/16 v8, 0x11

    :goto_6
    if-eq v8, v10, :cond_7

    goto/16 :goto_2

    .line 35
    :cond_7
    :goto_7
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v4, 0x31

    cmp-long v13, v8, v11

    if-nez v13, :cond_8

    goto :goto_8

    :cond_8
    const/16 v10, 0x31

    :goto_8
    if-eq v10, v4, :cond_9

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move-object v4, v5

    goto/16 :goto_4

    :catch_1
    nop

    goto/16 :goto_3

    .line 36
    :cond_a
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_b
    if-eqz v4, :cond_c

    .line 37
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_c
    return-void
.end method

.method public static values(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    .line 65
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/a;->m()Lcom/google/android/gms/common/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/a;->g(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x1f

    if-nez v1, :cond_0

    const/16 v1, 0x34

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    :goto_0
    if-eq v1, v2, :cond_1

    .line 66
    sget p0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p0, p0, 0x2

    return v0

    :cond_1
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    goto :goto_1

    :catchall_0
    move-exception v1

    const-string v2, "WARNING:  Google play services is unavailable. "

    .line 67
    invoke-static {v2, v1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v1, 0x0

    .line 68
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.google.android.gms"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string v0, "WARNING:  Google Play Services is unavailable. "

    .line 69
    invoke-static {v0, p0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static values(Ljava/io/File;)Z
    .locals 2

    .line 82
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x3a

    if-eqz p0, :cond_0

    const/16 v1, 0x3a

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    :goto_0
    if-eq v1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    :goto_1
    const/4 p0, 0x1

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0
.end method


# virtual methods
.method public final AFInAppEventParameterName(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eq v3, v2, :cond_3

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    :cond_3
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    :goto_3
    if-eq p1, v2, :cond_5

    const/16 p1, 0x62

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_5
    return-void
.end method

.method public final AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;
    .locals 3

    .line 4
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v0, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public final AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    .line 139
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v2, 0x4c

    if-eqz p1, :cond_0

    const/16 v3, 0x27

    goto :goto_0

    :cond_0
    const/16 v3, 0x4c

    :goto_0
    if-eq v3, v2, :cond_3

    .line 140
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    if-eqz p1, :cond_3

    add-int/lit8 v0, v0, 0x5b

    .line 141
    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x33

    if-nez v0, :cond_1

    const/16 v0, 0x16

    goto :goto_1

    :cond_1
    const/16 v0, 0x33

    .line 142
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 143
    throw p1

    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public final AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 97
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x3f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 98
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    const/16 v2, 0x1e

    .line 99
    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 100
    throw p1

    .line 101
    :cond_0
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 102
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    :cond_1
    const-string v0, "af_deeplink"

    .line 103
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 104
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v3

    .line 106
    iget-object v4, v3, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    if-eq v6, v5, :cond_8

    iget-object v6, v3, Lcom/appsflyer/internal/AFa1uSDK;->afDebugLog:Ljava/util/Map;

    const/16 v7, 0x9

    const/16 v8, 0xd

    if-eqz v6, :cond_3

    const/16 v6, 0x9

    goto :goto_2

    :cond_3
    const/16 v6, 0xd

    :goto_2
    if-eq v6, v8, :cond_8

    .line 107
    sget v6, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v6, v6, 0x61

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    :try_start_1
    div-int/2addr v7, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_8

    goto :goto_3

    :catchall_1
    move-exception p1

    throw p1

    .line 108
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_8

    .line 109
    :goto_3
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 110
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 111
    iget-object v3, v3, Lcom/appsflyer/internal/AFa1uSDK;->afDebugLog:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x53

    if-eqz v4, :cond_6

    const/16 v4, 0x58

    goto :goto_5

    :cond_6
    const/16 v4, 0x53

    :goto_5
    if-eq v4, v5, :cond_7

    .line 112
    sget v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/2addr v4, v8

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v4, v4, 0x2

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 116
    sget v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/2addr v4, v8

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v4, v4, 0x2

    goto :goto_4

    .line 117
    :cond_7
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appended_query_params"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 119
    :cond_8
    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "link"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v1, Lcom/appsflyer/internal/AFd1ySDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v1, v2, v3, p3}, Lcom/appsflyer/internal/AFd1ySDK;-><init>(Lcom/appsflyer/internal/AFc1ySDK;Ljava/util/UUID;Landroid/net/Uri;)V

    .line 123
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1ySDK;->afWarnLog()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isBrandedDomain"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_a
    invoke-static {p1, v0, p3}, Lcom/appsflyer/internal/AFb1wSDK;->values(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)Ljava/util/Map;

    .line 126
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFd1ySDK;->init()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 127
    invoke-direct {p0, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/util/Map;)Lcom/appsflyer/internal/AFd1ySDK$AFa1wSDK;

    move-result-object p1

    .line 128
    iput-object p1, v1, Lcom/appsflyer/internal/AFd1ySDK;->afRDLog:Lcom/appsflyer/internal/AFd1ySDK$AFa1wSDK;

    .line 129
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    .line 130
    iget-object p2, p1, Lcom/appsflyer/internal/AFc1mSDK;->valueOf:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFc1mSDK$5;

    invoke-direct {p3, p1, v1}, Lcom/appsflyer/internal/AFc1mSDK$5;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 131
    :cond_b
    invoke-static {v0}, Lcom/appsflyer/internal/AFb1kSDK;->valueOf(Ljava/util/Map;)V

    return-void
.end method

.method final AFInAppEventType(Ljava/lang/ref/WeakReference;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 5
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_e

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "app went to background"

    .line 7
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/appsflyer/AppsFlyerProperties;->saveProperties(Landroid/content/SharedPreferences;)V

    .line 10
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/appsflyer/internal/AFc1ySDK;->afDebugLog()Lcom/appsflyer/internal/AFd1dSDK;

    move-result-object v2

    .line 11
    iget-wide v2, v2, Lcom/appsflyer/internal/AFd1dSDK;->AFVersionDeclaration:J

    .line 12
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v5, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v5}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v5

    .line 14
    iget-object v5, v5, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_2

    const-string p1, "[callStats] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    .line 15
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v8, "KSAppsFlyerId"

    .line 16
    invoke-static {v8}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    const-string v10, "deviceTrackingDisabled"

    invoke-virtual {v9, v10, v7}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    const/16 v11, 0x2c

    if-eqz v9, :cond_3

    const/16 v9, 0x31

    goto :goto_1

    :cond_3
    const/16 v9, 0x2c

    :goto_1
    if-eq v9, v11, :cond_4

    const-string v9, "true"

    .line 18
    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget v9, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v9, v9, 0x55

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v9, v1

    .line 20
    :cond_4
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_6

    goto :goto_3

    .line 21
    :cond_6
    sget v10, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v10, v10, 0xb

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v10, v1

    .line 22
    iget-object v10, v9, Lcom/appsflyer/internal/AFa1qSDK;->valueOf:Ljava/lang/String;

    const-string v11, "amazon_aid"

    .line 23
    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v9, v9, Lcom/appsflyer/internal/AFa1qSDK;->values:Ljava/lang/Boolean;

    .line 25
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "amazon_aid_limit"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :goto_3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v9

    const-string v10, "advertiserId"

    invoke-virtual {v9, v10}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 27
    sget v11, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v11, v11, 0x15

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v11, v1

    if-nez v11, :cond_7

    .line 28
    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x62

    :try_start_0
    div-int/2addr v9, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 29
    throw p1

    .line 30
    :cond_7
    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_4
    sget v9, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v9, v9, 0x2d

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v9, v1

    .line 32
    :cond_8
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "app_id"

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "devkey"

    .line 33
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1uSDK;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "uid"

    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "time_in_app"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "statType"

    const-string v3, "user_closed_app"

    .line 36
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "platform"

    const-string v3, "Android"

    .line 37
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {v0, v7}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/SharedPreferences;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "launch_counter"

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_9

    .line 40
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_a

    const/16 p1, 0x51

    :try_start_1
    div-int/2addr p1, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    throw p1

    :cond_9
    const-string v8, ""

    :cond_a
    :goto_5
    const-string p1, "originalAppsflyerId"

    .line 41
    invoke-interface {v4, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-boolean p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onDeepLinkingNative:Z

    if-eqz p1, :cond_b

    .line 43
    new-instance p1, Lcom/appsflyer/internal/AFe1qSDK;

    invoke-direct {p1}, Lcom/appsflyer/internal/AFe1qSDK;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    .line 45
    iput-boolean v0, p1, Lcom/appsflyer/internal/AFe1zSDK;->getLevel:Z

    .line 46
    invoke-virtual {p1, v4}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFe1qSDK;

    .line 49
    new-instance v0, Lcom/appsflyer/internal/AFd1tSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-direct {v0, p1, v1}, Lcom/appsflyer/internal/AFd1tSDK;-><init>(Lcom/appsflyer/internal/AFa1tSDK;Lcom/appsflyer/internal/AFc1ySDK;)V

    .line 50
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1bSDK;->afErrorLog()Lcom/appsflyer/internal/AFc1mSDK;

    move-result-object p1

    .line 51
    iget-object v1, p1, Lcom/appsflyer/internal/AFc1mSDK;->valueOf:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/appsflyer/internal/AFc1mSDK$5;

    invoke-direct {v2, p1, v0}, Lcom/appsflyer/internal/AFc1mSDK$5;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    const-string p1, "Stats call is disabled, ignore ..."

    .line 52
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 53
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    if-eq p1, v6, :cond_d

    return-void

    :cond_d
    const/16 p1, 0x35

    :try_start_2
    div-int/2addr p1, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    throw p1

    :cond_e
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    const/4 p1, 0x0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 54
    throw p1
.end method

.method public final AFKeystoreWrapper(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "appsflyer_preinstall"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Ljava/lang/String;)V

    const/16 v0, 0x36

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 5
    throw p1

    .line 6
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Ljava/lang/String;)V

    :goto_1
    const-string v0, "****** onReceive called *******"

    .line 7
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    const-string v0, "referrer"

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Play store referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/16 v1, 0x3f

    if-eqz p2, :cond_3

    const/16 v2, 0x3f

    goto :goto_2

    :cond_3
    const/16 v2, 0x2a

    :goto_2
    if-eq v2, v1, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AF_REFERRER"

    .line 13
    invoke-virtual {v0, v1, p2}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iput-object p2, v0, Lcom/appsflyer/AppsFlyerProperties;->values:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->AFKeystoreWrapper()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "onReceive: isLaunchCalled"

    .line 17
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->valueOf:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1bSDK;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final AFKeystoreWrapper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13

    const-string v0, "extraReferrers"

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "received a new (extra) referrer: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 21
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 22
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v4, 0x0

    .line 23
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 24
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 25
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 26
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    move-object v12, v5

    move-object v5, v3

    move-object v3, v12

    .line 30
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    const/16 v10, 0x9

    cmp-long v11, v6, v8

    if-gez v11, :cond_2

    const/16 v6, 0x9

    goto :goto_2

    :cond_2
    const/16 v6, 0x3c

    :goto_2
    if-eq v6, v10, :cond_3

    goto :goto_3

    .line 31
    :cond_3
    sget v6, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v6, v6, 0x3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6

    .line 32
    :try_start_1
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 33
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v1, v1

    const-wide/16 v6, 0x4

    cmp-long v4, v1, v6

    if-ltz v4, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_5

    goto :goto_5

    .line 34
    :cond_5
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    .line 35
    :try_start_2
    invoke-static {v3}, Lcom/appsflyer/internal/AFa1aSDK;->values(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    .line 37
    :goto_5
    :try_start_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    .line 40
    :cond_6
    :try_start_4
    invoke-virtual {v5, v1, v2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t save referrer - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return-void
.end method

.method public final varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x53

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    goto :goto_0

    :cond_0
    const/16 v0, 0x53

    :goto_0
    if-eq v0, v1, :cond_2

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1uSDK;->afRDLog:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x6

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-nez v1, :cond_1

    const/16 v1, 0x23

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
    if-eq v1, v2, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    iget-object v0, v0, Lcom/appsflyer/internal/AFa1uSDK;->afRDLog:Ljava/util/List;

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v1, :cond_3

    const/16 p1, 0x38

    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    throw p1

    :cond_3
    :goto_3
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    :cond_4
    return-void
.end method

.method public final anonymizeUser(Z)V
    .locals 6

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "deviceTrackingDisabled"

    const-string v4, "anonymizeUser"

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final appendParametersToDeepLinkingURL(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x38

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    .line 3
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 4
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1uSDK;->afDebugLog:Ljava/util/Map;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    .line 6
    iput-object p1, v0, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    .line 7
    iput-object p2, v0, Lcom/appsflyer/internal/AFa1uSDK;->afDebugLog:Ljava/util/Map;

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final enableFacebookDeferredApplinks(Z)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    iput-boolean p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponseError:Z

    const/4 p1, 0x1

    add-int/2addr v1, p1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "getAppsFlyerUID"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/16 p1, 0x44

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_0
    :goto_0
    return-object v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 4
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    .line 5
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    add-int/lit8 v3, v3, 0x5f

    .line 6
    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 8
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 11
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1uSDK;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 14
    throw p1
.end method

.method public final getAttributionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lcom/appsflyer/internal/AFb1ySDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/appsflyer/internal/AFb1ySDK;-><init>(Landroid/content/Context;Lcom/appsflyer/internal/AFc1ySDK;)V

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1ySDK;->valueOf()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    const-string v1, "Could not collect facebook attribution id. "

    .line 3
    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    const-string v4, "custom_host"

    if-eqz v0, :cond_4

    .line 2
    invoke-static {v4}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    .line 3
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    const-string v0, "appsflyer.com"

    return-object v0

    .line 4
    :cond_4
    invoke-static {v4}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 6
    throw v0
.end method

.method public final getHostPrefix()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "custom_host_prefix"

    if-ne v0, v2, :cond_3

    .line 2
    invoke-static {v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eq v3, v2, :cond_2

    const-string v0, ""

    .line 3
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    const/16 v2, 0x31

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    return-object v0

    .line 4
    :cond_3
    invoke-static {v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 6
    throw v0
.end method

.method public final getOutOfStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "api_store_value"

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    .line 3
    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eq v3, v2, :cond_5

    .line 4
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v3, p1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eq p1, v2, :cond_4

    return-object v0

    :cond_4
    const/16 p1, 0x54

    .line 5
    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 6
    throw p1

    :cond_5
    const-string v0, "AF_STORE"

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x28

    if-eqz p1, :cond_6

    const/16 v1, 0x28

    goto :goto_4

    :cond_6
    const/16 v1, 0xf

    :goto_4
    const/4 v2, 0x0

    if-eq v1, v0, :cond_7

    const-string p1, "No out-of-store value set"

    .line 8
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 9
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-object v2

    :cond_7
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    return-object p1

    .line 10
    :cond_8
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    throw p1

    :catchall_2
    move-exception p1

    .line 12
    throw p1
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->afWarnLog()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "getSdkVersion"

    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    invoke-static {}, Lcom/appsflyer/internal/AFb1cSDK;->values()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public final init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataSuccess:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object p0

    .line 2
    :cond_1
    iput-boolean v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataSuccess:Z

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 4
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Ljava/lang/String;)V

    const/16 v0, 0x8

    if-eqz p3, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    :goto_1
    const/4 v4, 0x2

    if-eq v3, v0, :cond_8

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 8
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v3, v3, 0x31

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v3, v4

    .line 9
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    add-int/lit8 v5, v5, 0x35

    .line 10
    rem-int/lit16 v3, v5, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v5, v4

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->afDebugLog()Lcom/appsflyer/internal/AFd1dSDK;

    move-result-object p3

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/appsflyer/internal/AFd1dSDK;->AFInAppEventType:J

    .line 14
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->afInfoLog()Lcom/appsflyer/CreateOneLinkHttpTask;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/appsflyer/CreateOneLinkHttpTask;->values(Lcom/appsflyer/internal/AFd1oSDK;)V

    .line 15
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p3

    invoke-interface {p3}, Lcom/appsflyer/internal/AFc1ySDK;->getLevel()Lcom/appsflyer/internal/AFe1fSDK;

    move-result-object p3

    .line 16
    new-instance v0, Lcom/appsflyer/internal/AFe1lSDK;

    new-instance v3, Lcom/appsflyer/internal/AFa1aSDK$2;

    invoke-direct {v3, p0}, Lcom/appsflyer/internal/AFa1aSDK$2;-><init>(Lcom/appsflyer/internal/AFa1aSDK;)V

    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFe1lSDK;-><init>(Ljava/lang/Runnable;)V

    .line 17
    new-instance v3, Lcom/appsflyer/internal/AFa1aSDK$4;

    invoke-direct {v3, p0, v0}, Lcom/appsflyer/internal/AFa1aSDK$4;-><init>(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFe1lSDK;)V

    .line 18
    invoke-virtual {p3, v0}, Lcom/appsflyer/internal/AFe1fSDK;->values(Lcom/appsflyer/internal/AFe1iSDK;)V

    .line 19
    new-instance v0, Lcom/appsflyer/internal/AFe1hSDK;

    invoke-direct {v0, v3}, Lcom/appsflyer/internal/AFe1hSDK;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3, v0}, Lcom/appsflyer/internal/AFe1fSDK;->values(Lcom/appsflyer/internal/AFe1iSDK;)V

    .line 20
    new-instance v0, Lcom/appsflyer/internal/AFe1mSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/appsflyer/internal/AFe1mSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1ySDK;)V

    invoke-virtual {p3, v0}, Lcom/appsflyer/internal/AFe1fSDK;->values(Lcom/appsflyer/internal/AFe1iSDK;)V

    .line 21
    new-instance v0, Lcom/appsflyer/internal/AFe1jSDK;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lcom/appsflyer/internal/AFe1jSDK;-><init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1ySDK;)V

    invoke-virtual {p3, v0}, Lcom/appsflyer/internal/AFe1fSDK;->values(Lcom/appsflyer/internal/AFe1iSDK;)V

    .line 22
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v5

    .line 23
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.appsflyer.referrer.INSTALL_PROVIDER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 27
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 29
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v7, :cond_4

    .line 30
    new-instance v8, Lcom/appsflyer/internal/AFe1kSDK;

    invoke-direct {v8, v7, v3, v5}, Lcom/appsflyer/internal/AFe1kSDK;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/Runnable;Lcom/appsflyer/internal/AFc1ySDK;)V

    .line 31
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v7, "[Preinstall]: com.appsflyer.referrer.INSTALL_PROVIDER Action is set for non ContentProvider component"

    .line 32
    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 34
    iget-object v0, p3, Lcom/appsflyer/internal/AFe1fSDK;->valueOf:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[Preinstall]: Detected "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " valid preinstall provider(s)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 36
    :cond_6
    :goto_3
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFe1fSDK;->AFKeystoreWrapper()[Lcom/appsflyer/internal/AFe1iSDK;

    move-result-object p3

    array-length v0, p3

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_7

    aget-object v5, p3, v3

    .line 37
    iget-object v6, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    invoke-virtual {v5, v6}, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper(Landroid/content/Context;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 38
    :cond_7
    iget-object p3, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object p3

    invoke-virtual {p3}, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName()Z

    .line 39
    iget-object p3, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    .line 40
    sput-object p3, Lcom/appsflyer/internal/AFb1iSDK;->values:Landroid/app/Application;

    goto :goto_5

    :cond_8
    const-string p3, "context is null, Google Install Referrer will be not initialized"

    .line 41
    invoke-static {p3}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 42
    :goto_5
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p3

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v2

    const/16 p1, 0x28

    if-nez p2, :cond_9

    const/16 v3, 0x54

    goto :goto_6

    :cond_9
    const/16 v3, 0x28

    :goto_6
    if-eq v3, p1, :cond_a

    const-string p1, "null"

    goto :goto_7

    :cond_a
    const-string p1, "conversionDataListener"

    :goto_7
    aput-object p1, v0, v1

    const-string p1, "init"

    invoke-virtual {p3, p1, v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    new-array p1, v4, [Ljava/lang/Object;

    const-string p3, "6.9.0"

    aput-object p3, p1, v2

    .line 43
    sget-object p3, Lcom/appsflyer/internal/AFa1aSDK;->values:Ljava/lang/String;

    aput-object p3, p1, v1

    const-string p3, "Initializing AppsFlyer SDK: (v%s.%s)"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->AFInAppEventParameterName(Ljava/lang/String;)V

    .line 44
    sput-object p2, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    return-object p0
.end method

.method public final isPreInstalledApp(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_1
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v2, 0x48

    if-nez p1, :cond_2

    const/16 p1, 0x48

    goto :goto_1

    :cond_2
    const/16 p1, 0x2c

    :goto_1
    if-eq p1, v2, :cond_3

    return v1

    :cond_3
    return v0

    :catch_0
    move-exception p1

    const-string v1, "Could not check if app is pre installed"

    .line 4
    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return v0
.end method

.method public final isStopped()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1lSDK;->values()Z

    move-result v0

    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x46

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    goto :goto_0

    :cond_0
    const/16 v1, 0x57

    :goto_0
    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0xd

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/attribution/AppsFlyerRequestListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    :goto_0
    iget-object p3, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_1

    .line 4
    iget-object p3, p3, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p3, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 6
    :cond_1
    new-instance p3, Lcom/appsflyer/internal/AFe1xSDK;

    invoke-direct {p3}, Lcom/appsflyer/internal/AFe1xSDK;-><init>()V

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iput-object v2, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    .line 8
    :cond_2
    iput-object p2, p3, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    .line 9
    iput-object p4, p3, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz v1, :cond_4

    const-string p4, "af_touch_obj"

    .line 10
    invoke-interface {v1, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 13
    instance-of v4, v3, Landroid/view/MotionEvent;

    if-eqz v4, :cond_3

    .line 14
    check-cast v3, Landroid/view/MotionEvent;

    .line 15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 16
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string/jumbo v6, "y"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "loc"

    .line 18
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPressure()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v5, "pf"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "rad"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v3, "error"

    const-string v4, "Parsing failed due to invalid input in \'af_touch_obj\'."

    .line 21
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {v4}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    :goto_1
    const-string v3, "tch_data"

    .line 23
    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 24
    invoke-interface {v1, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {p3, v2}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    .line 26
    :cond_4
    iput-object v1, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    .line 27
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p4

    invoke-interface {p4}, Lcom/appsflyer/internal/AFc1ySDK;->afWarnLog()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    .line 28
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p3, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :cond_5
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "logEvent"

    .line 29
    invoke-virtual {p4, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez p2, :cond_6

    .line 30
    sget-object p2, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1bSDK;)V

    .line 31
    :cond_6
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :cond_7
    invoke-virtual {p0, p3, v0}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Lcom/appsflyer/internal/AFa1tSDK;Landroid/app/Activity;)V

    return-void
.end method

.method public final logLocation(Landroid/content/Context;DD)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "logLocation"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {p4, p5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p4

    const-string p5, "af_long"

    invoke-interface {v0, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p2

    const-string p3, "af_lat"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "af_location_coordinates"

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    const/4 p2, 0x4

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final logSession(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x12

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    const-string v2, "logSession"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1pSDK;->afDebugLog()V

    .line 4
    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-direct {p0, p1, v0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1bSDK;)V

    .line 5
    invoke-direct {p0, p1, v3, v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final onPause(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;->values(Landroid/content/Context;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x6d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    :cond_1
    return-void

    .line 4
    :cond_2
    sget-object p1, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 5
    throw p1
.end method

.method public final performOnAppAttribution(Landroid/content/Context;Ljava/net/URI;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x2f

    if-eqz p2, :cond_0

    const/16 v2, 0x3c

    goto :goto_0

    :cond_0
    const/16 v2, 0x2f

    :goto_0
    const-string v3, "\""

    if-eq v2, v0, :cond_3

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Context is \""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 7
    invoke-static {p1, v0, p2}, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventType(Landroid/content/Context;Ljava/util/Map;Landroid/net/Uri;)V

    return-void

    .line 8
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Link is \""

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object p2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-static {p1, p2}, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void
.end method

.method public final performOnDeepLinking(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v0, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string p2, "performOnDeepLinking was called with null intent"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eq v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x3d

    .line 3
    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 4
    sget-object p1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->DEVELOPER_ERROR:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    const-string p2, "performOnDeepLinking was called with null context"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFb1kSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v1, 0x39

    if-eqz p2, :cond_3

    const/16 v2, 0x39

    goto :goto_1

    :cond_3
    const/16 v2, 0x40

    :goto_1
    if-eq v2, v1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    .line 8
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    if-eqz p2, :cond_5

    .line 9
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 10
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->AFInAppEventType()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/internal/a;

    invoke-direct {v1, p0, p2, p1}, Lcom/appsflyer/internal/a;-><init>(Lcom/appsflyer/internal/AFa1aSDK;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V
    .locals 3

    .line 1
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x26

    if-eqz p1, :cond_0

    const/16 p1, 0x47

    goto :goto_0

    :cond_0
    const/16 p1, 0x26

    :goto_0
    const-string v1, "registerConversionListener"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-static {p2}, Lcom/appsflyer/internal/AFa1aSDK;->values(Lcom/appsflyer/AppsFlyerConversionListener;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eq v2, p2, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V
    .locals 2

    .line 1
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x1d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "registerValidatorListener"

    invoke-virtual {p1, v1, v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "registerValidatorListener called"

    .line 3
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 p1, 0x21

    if-nez p2, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    if-eq v0, p1, :cond_1

    const-string p1, "registerValidatorListener null listener"

    .line 4
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sput-object p2, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final sendAdRevenue(Landroid/content/Context;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->valueOf()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/16 v2, 0x42

    if-eqz p1, :cond_0

    const/16 v3, 0x42

    goto :goto_0

    :cond_0
    const/16 v3, 0x14

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v2, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v2, v5

    if-eqz v2, :cond_8

    .line 4
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 6
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v1, v5

    .line 7
    :cond_3
    :goto_2
    new-instance v1, Lcom/appsflyer/internal/AFd1aSDK;

    invoke-direct {v1}, Lcom/appsflyer/internal/AFd1aSDK;-><init>()V

    if-eqz p1, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v2, v5

    const/16 v3, 0x3f

    if-nez v2, :cond_6

    const/16 v2, 0x52

    goto :goto_4

    :cond_6
    const/16 v2, 0x3f

    :goto_4
    if-eq v2, v3, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    const/16 p1, 0x23

    :try_start_0
    div-int/2addr p1, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    .line 9
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, v1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    .line 10
    :goto_5
    sget-object p1, Lcom/appsflyer/internal/AFa1aSDK;->afRDLog:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->values()Lcom/appsflyer/internal/AFa1aSDK;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object p1, v0, Lcom/appsflyer/internal/AFb1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1dSDK;

    .line 14
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v2, v0, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v3, "appsFlyerAdRevenueCount"

    invoke-interface {v2, v3}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;)I

    move-result v2

    .line 18
    invoke-virtual {p0, v1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Lcom/appsflyer/internal/AFa1tSDK;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "ad_network"

    .line 19
    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "adrevenue_counter"

    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance p2, Lcom/appsflyer/internal/AFa1aSDK$AFa1vSDK;

    .line 22
    invoke-virtual {v1, p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v3}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/util/Map;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    .line 24
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1oSDK;

    const-string v1, "appsFlyerCount"

    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventType(Ljava/lang/String;)I

    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(I)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    invoke-direct {p2, p0, p1, v6}, Lcom/appsflyer/internal/AFa1aSDK$AFa1vSDK;-><init>(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFa1tSDK;B)V

    .line 26
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 27
    :cond_8
    iget-object p1, v1, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    const/4 p1, 0x0

    .line 28
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 29
    throw p1
.end method

.method public final sendInAppPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v3, v2, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v3, v3, 0x2

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eq v1, v2, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 6
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1ySDK;->AFLogger()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    const-string v0, "purchases"

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    new-instance v0, Lcom/appsflyer/internal/AFc1bSDK;

    iget-object v1, p1, Lcom/appsflyer/PurchaseHandler;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1ySDK;

    invoke-direct {v0, p2, p3, v1}, Lcom/appsflyer/internal/AFc1bSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFc1ySDK;)V

    .line 9
    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 10
    iget-object p2, p1, Lcom/appsflyer/internal/AFc1mSDK;->valueOf:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFc1mSDK$5;

    invoke-direct {p3, p1, v0}, Lcom/appsflyer/internal/AFc1mSDK$5;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final sendPurchaseData(Landroid/content/Context;Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eq v3, v1, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/16 v3, 0xa

    goto :goto_1

    :cond_2
    const/16 v3, 0x1f

    :goto_1
    if-eq v3, v1, :cond_3

    goto :goto_3

    .line 3
    :cond_3
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    const/16 p1, 0x3c

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 5
    throw p1

    .line 6
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 7
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    .line 8
    :goto_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/appsflyer/internal/AFc1ySDK;->AFLogger()Lcom/appsflyer/PurchaseHandler;

    move-result-object p1

    const-string v0, "subscriptions"

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lcom/appsflyer/PurchaseHandler;->AFKeystoreWrapper(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    new-instance v0, Lcom/appsflyer/internal/AFc1dSDK;

    iget-object v1, p1, Lcom/appsflyer/PurchaseHandler;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFc1ySDK;

    invoke-direct {v0, p2, p3, v1}, Lcom/appsflyer/internal/AFc1dSDK;-><init>(Ljava/util/Map;Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;Lcom/appsflyer/internal/AFc1ySDK;)V

    .line 11
    iget-object p1, p1, Lcom/appsflyer/PurchaseHandler;->values:Lcom/appsflyer/internal/AFc1mSDK;

    .line 12
    iget-object p2, p1, Lcom/appsflyer/internal/AFc1mSDK;->valueOf:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/appsflyer/internal/AFc1mSDK$5;

    invoke-direct {p3, p1, v0}, Lcom/appsflyer/internal/AFc1mSDK$5;-><init>(Lcom/appsflyer/internal/AFc1mSDK;Lcom/appsflyer/internal/AFc1nSDK;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method public final sendPushNotificationData(Landroid/app/Activity;)V
    .locals 17
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    const-string v0, "pid"

    .line 1
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    const/4 v3, 0x2

    rem-int/2addr v2, v3

    const/4 v2, 0x1

    const-string v4, "sendPushNotificationData"

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "activity_intent_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v6, v4, v7}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "activity_intent_null"

    aput-object v8, v7, v2

    invoke-virtual {v6, v4, v7}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v6

    const-string v7, "activity_null"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    const/16 v6, 0xc

    if-eqz v4, :cond_2

    const/16 v4, 0x37

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    :goto_1
    if-eq v4, v6, :cond_d

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 8
    iget-object v4, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    const-string v8, ")"

    if-nez v4, :cond_3

    const-string v0, "pushes: initializing pushes history.."

    .line 9
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    move-wide v11, v6

    goto/16 :goto_8

    .line 11
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v4

    const-string v9, "pushPayloadMaxAging"

    const-wide/32 v10, 0x1b7740

    invoke-virtual {v4, v9, v10, v11}, Lcom/appsflyer/AppsFlyerProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 12
    iget-object v4, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v11, v6

    :goto_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 13
    new-instance v14, Lorg/json/JSONObject;

    iget-object v15, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v15, Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v5, 0x28

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/16 v2, 0x28

    :goto_3
    if-eq v2, v5, :cond_7

    .line 16
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v2, v3

    const-string v5, "c"

    if-nez v2, :cond_5

    .line 17
    :try_start_2
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0x53

    const/16 v16, 0x0

    div-int/lit8 v5, v5, 0x0

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v0, v3

    if-eqz v0, :cond_6

    const/16 v0, 0x57

    const/4 v2, 0x0

    :try_start_3
    div-int/2addr v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    :cond_6
    return-void

    :cond_7
    const/4 v2, 0x0

    .line 21
    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    sub-long v14, v6, v14

    const/16 v5, 0x11

    cmp-long v16, v14, v9

    if-lez v16, :cond_8

    const/16 v14, 0x11

    goto :goto_5

    :cond_8
    const/16 v14, 0x63

    :goto_5
    if-eq v14, v5, :cond_9

    goto :goto_6

    .line 22
    :cond_9
    iget-object v5, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_6
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    cmp-long v5, v14, v11

    if-gtz v5, :cond_a

    .line 24
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    const/4 v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-wide v11, v6

    .line 25
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error while handling push notification measurement: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_b
    :goto_8
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "pushPayloadHistorySize"

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    iget-object v2, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v0, :cond_c

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pushes: removing oldest overflowing push (oldest push:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 29
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_c
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual/range {p0 .. p1}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method public final setAdditionalData(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "setAdditionalData"

    invoke-virtual {v2, v4, v3}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/appsflyer/AppsFlyerProperties;->setCustomData(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    :cond_0
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x63

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setAndroidIdData(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setAndroidIdData"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->afErrorLog:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x35

    if-nez p1, :cond_0

    const/16 p1, 0x58

    goto :goto_0

    :cond_0
    const/16 p1, 0x35

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setAppId"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "appid"

    .line 3
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setAppInviteOneLink(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "setAppInviteOneLink"

    invoke-virtual {v0, v4, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "setAppInviteOneLink = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const/16 v0, 0x20

    if-eqz p1, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/16 v2, 0x3d

    :goto_0
    const/4 v4, 0x0

    const-string v5, "oneLinkSlug"

    if-eq v2, v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "onelinkDomain"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "onelinkVersion"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "onelinkScheme"

    invoke-virtual {v0, v2}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 8
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    :cond_2
    invoke-static {v5, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :goto_2
    if-ne v3, v1, :cond_4

    return-void

    :cond_4
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_5
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final setCollectAndroidID(Z)V
    .locals 7

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    const-string v2, "collectAndroidIdForceByUser"

    const-string v3, "collectAndroidId"

    const-string v4, "setCollectAndroidID"

    const/4 v5, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v0, v4, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v0, v4, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setCollectIMEI(Z)V
    .locals 7

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "collectIMEIForceByUser"

    const-string v4, "collectIMEI"

    const-string v5, "setCollectIMEI"

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-virtual {v0, v5, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-virtual {v0, v5, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setCollectOaid(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "setCollectOaid"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "collectOAID"

    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setCurrencyCode(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x57

    if-nez v0, :cond_0

    const/16 v0, 0x57

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    const-string v2, "currencyCode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "setCurrencyCode"

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v5, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v4

    invoke-virtual {v0, v5, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    .line 1
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 2
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CustomerUserId set: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - Initializing AppsFlyer Tacking"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 5
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 6
    sget-object v2, Lcom/appsflyer/internal/AFd1bSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFd1bSDK;

    invoke-direct {p0, p2, v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Landroid/content/Context;Lcom/appsflyer/internal/AFd1bSDK;)V

    .line 7
    iget-object v2, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 8
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v2

    .line 9
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 10
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const-string p1, ""

    :goto_2
    move-object v7, p1

    .line 11
    instance-of p1, p2, Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 12
    move-object p1, p2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    :cond_3
    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    .line 14
    invoke-direct/range {v3 .. v8}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_4
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "waitForCustomerUserId is false; setting CustomerUserID: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    goto :goto_3

    .line 17
    :cond_5
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf()Z

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 18
    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public final setCustomerUserId(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v3, "waitForCustomerId"

    const-string v4, "AppUserId"

    const-string v5, "setCustomerUserId = "

    const-string v6, "setCustomerUserId"

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v2

    invoke-virtual {v0, v6, v7}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 4
    invoke-static {v4, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v3, v1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v6, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 8
    invoke-static {v4, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v3, v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    :goto_1
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setDebugLog(Z)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eq v1, v2, :cond_2

    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/appsflyer/AFLogger$LogLevel;->DEBUG:Lcom/appsflyer/AFLogger$LogLevel;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setDisableAdvertisingIdentifiers(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisableAdvertisingIdentifiers: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const/16 v0, 0x21

    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_0
    const/16 p1, 0x21

    :goto_0
    if-eq p1, v0, :cond_1

    .line 3
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x39

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    .line 5
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserIdEnabled"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p1

    const-string v0, "advertiserId"

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerProperties;->remove(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x38

    if-nez p1, :cond_2

    const/16 p1, 0x38

    goto :goto_2

    :cond_2
    const/16 p1, 0x3a

    :goto_2
    if-eq p1, v0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setDisableNetworkData(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDisableNetworkData: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    const-string v0, "disableCollectNetworkData"

    .line 3
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3c

    if-nez p1, :cond_0

    const/16 p1, 0x44

    goto :goto_0

    :cond_0
    const/16 p1, 0x3c

    :goto_0
    if-eq p1, v0, :cond_1

    const/16 p1, 0x55

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_1
    return-void
.end method

.method public final setExtension(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "sdkExtension"

    const-string v4, "setExtension"

    if-eq v0, v2, :cond_1

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, v4, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public final setHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_6

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, 0x69

    .line 2
    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const-string v0, "custom_host_prefix"

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 4
    throw p1

    .line 5
    :cond_1
    invoke-static {v0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/16 v0, 0x34

    if-nez p1, :cond_3

    const/16 p1, 0xa

    goto :goto_2

    :cond_3
    const/16 p1, 0x34

    :goto_2
    if-eq p1, v0, :cond_5

    .line 7
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const-string v0, "custom_host"

    if-nez p1, :cond_4

    .line 8
    invoke-static {v0, p2}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {v0, p2}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    throw p1

    :cond_5
    const-string p1, "hostName cannot be null or empty"

    .line 10
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_6
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 12
    throw p1
.end method

.method public final setImeiData(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "setImeiData"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 4
    iput-object p1, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFKeystoreWrapper:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setIsUpdate(Z)V
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setIsUpdate"

    invoke-virtual {v0, v3, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "IS_UPDATE"

    invoke-virtual {v0, v2, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .locals 4
    .param p1    # Lcom/appsflyer/AFLogger$LogLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v0

    sget-object v1, Lcom/appsflyer/AFLogger$LogLevel;->NONE:Lcom/appsflyer/AFLogger$LogLevel;

    invoke-virtual {v1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x1

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFb1bSDK;->afWarnLog()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "log"

    invoke-virtual {v1, v0, v3}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/appsflyer/AFLogger$LogLevel;->getLevel()I

    move-result p1

    const-string v1, "logLevel"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public final setMinTimeBetweenSessions(I)V
    .locals 3

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttributionNative:J

    return-void

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAppOpenAttributionNative:J

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final setOaidData(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "setOaidData"

    invoke-virtual {v0, v4, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    sput-object p1, Lcom/appsflyer/internal/AFb1xSDK;->valueOf:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ne v3, v1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "setOneLinkCustomDomain %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3
    sput-object p1, Lcom/appsflyer/internal/AFa1uSDK;->values:[Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setOutOfStore(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eq v3, v2, :cond_4

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "Store API set with value: "

    const-string v4, "api_store_value"

    if-eq v0, v2, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0, v4, p1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 8
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x53

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_4
    const-string p1, "Cannot set setOutOfStore with null"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->valueOf(Ljava/lang/String;)V

    return-void
.end method

.method public final setPartnerData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailure:Lcom/appsflyer/internal/AFb1gSDK;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appsflyer/internal/AFb1gSDK;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1gSDK;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailure:Lcom/appsflyer/internal/AFb1gSDK;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailure:Lcom/appsflyer/internal/AFb1gSDK;

    if-eqz p1, :cond_8

    .line 4
    sget v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x2c

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x17

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    goto :goto_0

    :cond_1
    const/16 v1, 0x4c

    :goto_0
    if-eq v1, v2, :cond_8

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    .line 5
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    .line 6
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/16 v2, 0x22

    if-eqz v1, :cond_4

    const/16 v1, 0x22

    goto :goto_2

    :cond_4
    const/16 v1, 0x2a

    :goto_2
    if-eq v1, v2, :cond_6

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting partner data for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_5

    const-string p2, "Partner data 1000 characters limit exceeded"

    .line 9
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "limit exceeded: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13
    :cond_5
    iget-object v1, v0, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object p2, v0, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 15
    :cond_6
    iget-object p2, v0, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    const-string p1, "Partner data is missing or `null`"

    goto :goto_3

    :cond_7
    const-string p2, "Cleared partner data for "

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p2, p2, 0x1f

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p2, p2, 0x2

    .line 18
    :goto_3
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_4
    const-string p1, "Partner ID is missing or `null`"

    .line 19
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->onDeepLinking:Ljava/lang/String;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "setPreinstallAttribution API called"

    .line 1
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "pid"

    if-eqz p1, :cond_0

    .line 3
    sget v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v2, v2, 0x2

    .line 4
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const/16 p1, 0xa

    if-eqz p2, :cond_1

    const/16 v2, 0x33

    goto :goto_1

    :cond_1
    const/16 v2, 0xa

    :goto_1
    if-eq v2, p1, :cond_2

    .line 5
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    :try_start_1
    const-string p1, "c"

    .line 6
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const/16 p1, 0x48

    if-eqz p3, :cond_3

    const/16 p2, 0x4e

    goto :goto_2

    :cond_3
    const/16 p2, 0x48

    :goto_2
    if-eq p2, p1, :cond_4

    const-string p1, "af_siteid"

    .line 7
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x43

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_4

    .line 9
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :cond_4
    :goto_4
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "preInstallName"

    invoke-static {p2, p1}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p1, "Cannot set preinstall attribution data without a media source"

    .line 12
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "setResolveDeepLinkURLs %s"

    if-eq v0, v1, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFa1uSDK;->valueOf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :goto_2
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final varargs setSharingFilter([Ljava/lang/String;)V
    .locals 2
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final setSharingFilterForAllPartners()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const-string v0, "all"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x5d

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    :goto_0
    if-eq v0, v1, :cond_1

    const/16 v0, 0x16

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return-void
.end method

.method public final varargs setSharingFilterForPartners([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appsflyer/internal/AFa1cSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFa1cSDK;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFa1cSDK;

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .locals 11

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v1

    array-length v3, p2

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v3, "setUserEmails"

    invoke-virtual {v1, v3, v0}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->getValue()I

    move-result v1

    const-string v3, "userEmailsCryptType"

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;I)V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    array-length v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    const/4 v6, 0x0

    :goto_0
    const/16 v8, 0x35

    if-ge v6, v3, :cond_0

    const/16 v9, 0x59

    goto :goto_1

    :cond_0
    const/16 v9, 0x35

    :goto_1
    const/4 v10, 0x2

    if-eq v9, v8, :cond_4

    .line 12
    sget v7, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v7, v7, 0x47

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr v7, v10

    const/16 v8, 0x26

    if-nez v7, :cond_1

    const/16 v7, 0x26

    goto :goto_2

    :cond_1
    const/16 v7, 0x54

    :goto_2
    if-eq v7, v8, :cond_3

    .line 13
    aget-object v7, p2, v6

    .line 14
    sget-object v8, Lcom/appsflyer/internal/AFa1aSDK$7;->AFInAppEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    if-eq v8, v10, :cond_2

    .line 15
    invoke-static {v7}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v7, "sha256_el_arr"

    goto :goto_3

    .line 16
    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const-string v7, "plain_el_arr"

    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 17
    sget v8, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v8, v8, 0x61

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v8, v10

    goto :goto_0

    :cond_3
    aget-object p2, p2, v6

    .line 18
    sget-object p2, Lcom/appsflyer/internal/AFa1aSDK$7;->AFInAppEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 19
    throw p1

    .line 20
    :cond_4
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 22
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object p2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/appsflyer/AppsFlyerProperties;->setUserEmails(Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x67

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v10

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    if-eq p1, v2, :cond_6

    return-void

    :cond_6
    const/16 p1, 0x10

    :try_start_1
    div-int/2addr p1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final varargs setUserEmails([Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const-string v1, "setUserEmails"

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;->NONE:Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;

    invoke-virtual {p0, v0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x4b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final start(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0xb

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eq p1, v2, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x1b

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_3
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    const/16 p2, 0x41

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/16 p1, 0x41

    :goto_0
    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFb1zSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataSuccess:Z

    const/4 v1, 0x2

    if-nez v0, :cond_2

    const-string v0, "ERROR: AppsFlyer SDK is not initialized! The API call \'start()\' must be called after the \'init(String, AppsFlyerConversionListener)\' API method, which should be called on the Application\'s onCreate."

    .line 5
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    .line 6
    sget p1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object p2, Lcom/appsflyer/internal/AFb1fSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    .line 7
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    :cond_1
    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 9
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v3, v3, 0x29

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr v3, v1

    const/16 v4, 0x10

    if-eqz v3, :cond_3

    const/16 v3, 0x10

    goto :goto_0

    :cond_3
    const/16 v3, 0x22

    :goto_0
    if-eq v3, v4, :cond_4

    .line 10
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 13
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 14
    throw p1

    .line 15
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/appsflyer/internal/AFc1ySDK;->afDebugLog()Lcom/appsflyer/internal/AFd1dSDK;

    move-result-object v0

    .line 16
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1lSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1iSDK;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/appsflyer/internal/AFd1dSDK;->values(Lcom/appsflyer/internal/AFd1iSDK;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    .line 18
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const-string v7, "start"

    invoke-virtual {v3, v7, v5}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "6.9.0"

    aput-object v5, v3, v6

    .line 19
    sget-object v5, Lcom/appsflyer/internal/AFa1aSDK;->values:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v7, "Starting AppsFlyer: (v%s.%s)"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Build Number: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v3

    iget-object v5, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/appsflyer/AppsFlyerProperties;->loadProperties(Landroid/content/Context;)V

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v5, 0x2f

    if-nez v3, :cond_6

    const/16 v3, 0x42

    goto :goto_2

    :cond_6
    const/16 v3, 0x2f

    :goto_2
    if-eq v3, v5, :cond_7

    .line 23
    iget-object v3, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v3

    .line 24
    iput-object p2, v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    .line 25
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf(Ljava/lang/String;)V

    goto :goto_6

    .line 26
    :cond_7
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object p2

    .line 27
    iget-object p2, p2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 29
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/2addr p1, v1

    if-eqz p1, :cond_8

    const/16 p1, 0x1d

    goto :goto_3

    :cond_8
    const/4 p1, 0x1

    :goto_3
    const-string p2, "ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the \'init\' API method (should be called on Application\'s onCreate),or in the start() API (should be called on Activity\'s onCreate)."

    if-eq p1, v4, :cond_9

    .line 30
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    const/16 p1, 0xc

    .line 31
    :try_start_1
    div-int/2addr p1, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_b

    goto :goto_4

    :catchall_1
    move-exception p1

    .line 32
    throw p1

    .line 33
    :cond_9
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    if-eqz p3, :cond_b

    .line 34
    :goto_4
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_a

    .line 35
    sget p1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object p2, Lcom/appsflyer/internal/AFb1fSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :try_start_2
    div-int/2addr v6, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 36
    throw p1

    .line 37
    :cond_a
    sget p1, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object p2, Lcom/appsflyer/internal/AFb1fSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    :cond_b
    :goto_5
    return-void

    .line 38
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/appsflyer/internal/AFc1ySDK;->afInfoLog()Lcom/appsflyer/CreateOneLinkHttpTask;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/appsflyer/CreateOneLinkHttpTask;->values(Lcom/appsflyer/internal/AFd1oSDK;)V

    .line 39
    invoke-direct {p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFLogger()V

    .line 40
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog(Landroid/content/Context;)V

    .line 41
    iget-boolean p2, p0, Lcom/appsflyer/internal/AFa1aSDK;->onResponseError:Z

    if-eqz p2, :cond_f

    .line 42
    sget p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p2, p2, 0x3

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/2addr p2, v1

    if-nez p2, :cond_d

    const/4 v4, 0x0

    .line 43
    :cond_d
    iget-object p2, p0, Lcom/appsflyer/internal/AFa1aSDK;->onConversionDataFail:Landroid/app/Application;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFa1aSDK;->afErrorLog(Landroid/content/Context;)V

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    const/16 p2, 0x49

    :try_start_3
    div-int/2addr p2, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception p1

    .line 44
    throw p1

    .line 45
    :cond_f
    :goto_7
    new-instance p2, Lcom/appsflyer/internal/AFa1aSDK$3;

    invoke-direct {p2, p0, v0, p3}, Lcom/appsflyer/internal/AFa1aSDK$3;-><init>(Lcom/appsflyer/internal/AFa1aSDK;Lcom/appsflyer/internal/AFd1dSDK;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    iget-object p3, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 46
    invoke-virtual {p3}, Lcom/appsflyer/internal/AFb1bSDK;->values()Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    .line 47
    invoke-static {p1, p2, p3}, Lcom/appsflyer/internal/AFb1zSDK;->valueOf(Landroid/content/Context;Lcom/appsflyer/internal/AFb1zSDK$AFa1zSDK;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final stop(ZLandroid/content/Context;)V
    .locals 6

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    add-int/lit8 v1, v1, 0x77

    .line 3
    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v3, 0x53

    if-eqz v1, :cond_0

    const/16 v1, 0x53

    goto :goto_0

    :cond_0
    const/16 v1, 0x52

    :goto_0
    if-eq v1, v3, :cond_1

    .line 4
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    const/16 v1, 0x21

    .line 5
    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 7
    throw p1

    .line 8
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v0

    .line 9
    iput-boolean p1, v0, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventParameterName:Z

    .line 10
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v0}, Lcom/appsflyer/internal/AFb1bSDK;->init()Lcom/appsflyer/internal/AFa1lSDK;

    move-result-object v0

    .line 11
    :try_start_1
    new-instance v1, Ljava/io/File;

    .line 12
    iget-object v0, v0, Lcom/appsflyer/internal/AFa1lSDK;->valueOf:Lcom/appsflyer/internal/AFb1dSDK;

    .line 13
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "AFRequestCache"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_4

    .line 17
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_4

    .line 18
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 19
    :cond_4
    :try_start_2
    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CACHE: Found cached request"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 21
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CACHE: Deleting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "CACHE: Could not cache request"

    .line 23
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    const/16 v0, 0x4f

    if-eqz p1, :cond_6

    const/16 p1, 0x4f

    goto :goto_5

    :cond_6
    const/16 p1, 0xb

    :goto_5
    if-eq p1, v0, :cond_7

    goto :goto_6

    .line 24
    :cond_7
    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object p1

    const-string p2, "is_stop_tracking_used"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/internal/AFd1oSDK;->values(Ljava/lang/String;Z)V

    :goto_6
    return-void
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V
    .locals 4
    .param p1    # Lcom/appsflyer/deeplink/DeepLinkListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x3e

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    :goto_0
    const-wide/16 v2, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    return-void

    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public final subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V
    .locals 2
    .param p1    # Lcom/appsflyer/deeplink/DeepLinkListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 3
    invoke-static {}, Lcom/appsflyer/internal/AFa1uSDK;->values()Lcom/appsflyer/internal/AFa1uSDK;

    move-result-object v0

    iput-object p1, v0, Lcom/appsflyer/internal/AFa1uSDK;->AFInAppEventType:Lcom/appsflyer/deeplink/DeepLinkListener;

    .line 4
    sput-wide p2, Lcom/appsflyer/internal/AFb1oSDK;->afWarnLog:J

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p1, p1, 0x3

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public final unregisterConversionListener()V
    .locals 3

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "unregisterConversionListener"

    invoke-virtual {v0, v2, v1}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType:Lcom/appsflyer/AppsFlyerConversionListener;

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 4
    :cond_0
    new-instance v0, Lcom/appsflyer/internal/AFd1kSDK;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFd1kSDK;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_6

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const-string p1, "[register] Firebase Refreshed Token = "

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFd1kSDK;->values()Lcom/appsflyer/internal/AFb1tSDK;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object v1, p1, Lcom/appsflyer/internal/AFb1tSDK;->valueOf:Ljava/lang/String;

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 10
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz p1, :cond_4

    .line 11
    iget-wide v3, p1, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType:J

    sub-long v3, v1, v3

    .line 12
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 13
    :goto_1
    new-instance v3, Lcom/appsflyer/internal/AFb1tSDK;

    xor-int/lit8 v4, p1, 0x1

    invoke-direct {v3, p2, v1, v2, v4}, Lcom/appsflyer/internal/AFb1tSDK;-><init>(Ljava/lang/String;JZ)V

    .line 14
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    .line 15
    iget-object v2, v3, Lcom/appsflyer/internal/AFb1tSDK;->valueOf:Ljava/lang/String;

    const-string v4, "afUninstallToken"

    .line 16
    invoke-interface {v1, v4, v2}, Lcom/appsflyer/internal/AFd1oSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, v0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    .line 18
    iget-wide v4, v3, Lcom/appsflyer/internal/AFb1tSDK;->AFInAppEventType:J

    const-string v2, "afUninstallToken_received_time"

    .line 19
    invoke-interface {v1, v2, v4, v5}, Lcom/appsflyer/internal/AFd1oSDK;->AFInAppEventParameterName(Ljava/lang/String;J)V

    .line 20
    iget-object v0, v0, Lcom/appsflyer/internal/AFd1kSDK;->valueOf:Lcom/appsflyer/internal/AFd1oSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFb1tSDK;->valueOf()Z

    move-result v1

    const-string v2, "afUninstallToken_queued"

    invoke-interface {v0, v2, v1}, Lcom/appsflyer/internal/AFd1oSDK;->values(Ljava/lang/String;Z)V

    if-eqz p1, :cond_5

    .line 21
    invoke-static {p2}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventType(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_2
    const-string p1, "[register] Firebase Token is either empty or null and was not registered."

    .line 22
    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    return-void
.end method

.method public final validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper()Lcom/appsflyer/internal/AFb1pSDK;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    const/4 v3, 0x3

    aput-object v6, v2, v3

    const/4 v3, 0x4

    aput-object v7, v2, v3

    if-nez p7, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "validateAndTrackInAppPurchase"

    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/internal/AFb1pSDK;->AFKeystoreWrapper(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Validate in app called with parameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_4

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    if-eqz v7, :cond_4

    if-nez v5, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/appsflyer/internal/AFa1dSDK;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v11, p0

    iget-object v2, v11, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 6
    invoke-virtual {v2}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    .line 8
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    :cond_3
    move-object v0, v10

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/appsflyer/internal/AFa1dSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_4
    :goto_1
    move-object v11, p0

    .line 9
    sget-object v0, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName:Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    if-eqz v0, :cond_5

    const-string v1, "Please provide purchase parameters"

    .line 10
    invoke-interface {v0, v1}, Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;->onValidateInAppFailure(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    .line 131
    new-instance v0, Lcom/appsflyer/internal/AFb1eSDK;

    .line 132
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1bSDK;->values:Lcom/appsflyer/internal/AFb1dSDK;

    .line 133
    iget-object p1, p1, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 134
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFb1eSDK;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0

    .line 135
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Context must be set via setContext method before calling this dependency."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final valueOf(Lcom/appsflyer/internal/AFa1tSDK;Landroid/app/Activity;)V
    .locals 7
    .param p1    # Lcom/appsflyer/internal/AFa1tSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 137
    iget-object v0, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const-string v5, ""

    if-eq v3, v2, :cond_1

    goto :goto_3

    .line 138
    :cond_1
    sget v3, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v3, v3, 0x37

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_b

    .line 139
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 140
    invoke-static {p2}, Lcom/appsflyer/internal/AFb1jSDK;->AFInAppEventParameterName(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_4
    :goto_3
    move-object p2, v5

    .line 142
    :goto_4
    iget-object v3, p0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v3

    .line 143
    iget-object v3, v3, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    const/16 v6, 0x46

    if-nez v3, :cond_5

    const/16 v3, 0x44

    goto :goto_5

    :cond_5
    const/16 v3, 0x46

    :goto_5
    if-eq v3, v6, :cond_9

    const-string p2, "[LogEvent/Launch] AppsFlyer\'s SDK cannot send any event without providing DevKey."

    .line 144
    invoke-static {p2}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 145
    iget-object p1, p1, Lcom/appsflyer/internal/AFa1tSDK;->valueOf:Lcom/appsflyer/attribution/AppsFlyerRequestListener;

    if-eqz p1, :cond_8

    .line 146
    sget p2, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 p2, p2, 0x57

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x1

    .line 147
    :goto_6
    sget p2, Lcom/appsflyer/attribution/RequestError;->NO_DEV_KEY:I

    sget-object v0, Lcom/appsflyer/internal/AFb1fSDK;->AFInAppEventType:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/appsflyer/attribution/AppsFlyerRequestListener;->onError(ILjava/lang/String;)V

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 148
    throw p1

    :cond_8
    :goto_7
    return-void

    .line 149
    :cond_9
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v5, v0

    .line 150
    :goto_8
    iput-object v5, p1, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    .line 151
    iput-object p2, p1, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Ljava/lang/String;

    .line 152
    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFa1tSDK;)V

    return-void

    .line 153
    :cond_b
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1
.end method

.method public final valueOf()Z
    .locals 3

    const-string/jumbo v0, "waitForCustomerId"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x40

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x29

    if-nez v0, :cond_3

    const/16 v0, 0x29

    goto :goto_2

    :cond_3
    const/16 v0, 0xc

    :goto_2
    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method final values(Lcom/appsflyer/internal/AFa1tSDK;)Ljava/util/Map;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFa1tSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "is_stop_tracking_used"

    const-string v4, "af_deeplink"

    const-string v5, "advertiserId"

    const-string/jumbo v6, "versionCode"

    const-string v7, "Exception while collecting facebook\'s attribution ID. "

    const-string v8, "appid"

    const-string v9, "sdkExtension"

    const-string v10, "extraReferrers"

    const-string v11, "AFRequestCache"

    const-string/jumbo v12, "yyyy-MM-dd_HHmmssZ"

    .line 92
    iget-object v13, v2, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventParameterName:Landroid/app/Application;

    .line 93
    iget-object v14, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v14}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v14

    .line 94
    iget-object v14, v14, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    .line 95
    iget-object v15, v2, Lcom/appsflyer/internal/AFa1tSDK;->afErrorLog:Ljava/lang/String;

    move-object/from16 v16, v3

    .line 96
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v17, v5

    iget-object v5, v2, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper:Ljava/util/Map;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 97
    iget-object v5, v2, Lcom/appsflyer/internal/AFa1tSDK;->afRDLog:Ljava/lang/String;

    move-object/from16 v18, v4

    .line 98
    invoke-static {v13}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    move-object/from16 v19, v6

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType()Z

    move-result v6

    move-object/from16 v20, v12

    .line 100
    iget-object v12, v2, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType:Ljava/lang/String;

    .line 101
    iget-object v2, v2, Lcom/appsflyer/internal/AFa1tSDK;->values:Ljava/util/Map;

    .line 102
    invoke-static {v13, v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1qSDK;

    .line 103
    sget-object v21, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper:Ljava/lang/Boolean;

    if-eqz v21, :cond_1

    .line 104
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v21, v12

    .line 105
    invoke-static {v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    move-object/from16 v22, v7

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v23, v8

    const-string v8, "ad_ids_disabled"

    invoke-interface {v12, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v21, v12

    .line 106
    :goto_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 v12, 0x4

    move-object/from16 v24, v3

    new-array v3, v12, [I

    .line 107
    fill-array-data v3, :array_0

    const-string v12, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000"

    move-object/from16 v25, v14

    const/4 v14, 0x0

    invoke-static {v3, v12, v14}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-static {v13, v7, v8}, Lcom/appsflyer/internal/AFa1vSDK;->AFInAppEventParameterName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v7, "cksm_v1"

    .line 109
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v3, 0x1

    .line 110
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v7

    if-nez v7, :cond_4

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "******* sendTrackingWithEvent: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_3

    const-string v8, "Launch"

    goto :goto_1

    :cond_3
    move-object v8, v15

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v7, "Reporting has been stopped"

    .line 112
    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 113
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v7

    invoke-interface {v7}, Lcom/appsflyer/internal/AFc1ySDK;->init()Lcom/appsflyer/internal/AFa1lSDK;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 114
    :try_start_1
    new-instance v8, Ljava/io/File;

    .line 115
    iget-object v12, v7, Lcom/appsflyer/internal/AFa1lSDK;->valueOf:Lcom/appsflyer/internal/AFb1dSDK;

    .line 116
    iget-object v12, v12, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 117
    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-direct {v8, v12, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 119
    new-instance v8, Ljava/io/File;

    .line 120
    iget-object v7, v7, Lcom/appsflyer/internal/AFa1lSDK;->valueOf:Lcom/appsflyer/internal/AFb1dSDK;

    .line 121
    iget-object v7, v7, Lcom/appsflyer/internal/AFb1dSDK;->values:Landroid/content/Context;

    .line 122
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v8, v7, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v7, v0

    :try_start_2
    const-string v8, "CACHE: Could not create cache directory"

    .line 124
    invoke-static {v8, v7}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 125
    :cond_5
    :goto_3
    :try_start_3
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v11, 0x1000

    invoke-virtual {v7, v8, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 126
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "android.permission.INTERNET"

    .line 127
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "Permission android.permission.INTERNET is missing in the AndroidManifest.xml"

    .line 128
    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_6
    const-string v8, "android.permission.ACCESS_NETWORK_STATE"

    .line 129
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml"

    .line 130
    invoke-static {v8}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    .line 131
    :cond_7
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x20

    if-le v8, v11, :cond_8

    const-string v8, "com.google.android.gms.permission.AD_ID"

    .line 132
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "Permission com.google.android.gms.permission.AD_ID is missing in the AndroidManifest.xml"

    .line 133
    invoke-static {v7}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    const-string v8, "Exception while validation permissions. "

    .line 134
    invoke-static {v8, v7}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    const-string v7, "af_events_api"

    const/4 v8, 0x4

    new-array v11, v8, [I

    const/16 v8, 0xc

    aput v8, v11, v14

    aput v3, v11, v3

    const/16 v8, 0x3d

    const/4 v12, 0x2

    aput v8, v11, v12

    const/4 v8, 0x3

    aput v14, v11, v8

    const-string v8, "\u0000"

    .line 135
    invoke-static {v11, v8, v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x4

    new-array v8, v7, [I

    const/16 v7, 0xd

    aput v7, v8, v14

    const/4 v7, 0x5

    aput v7, v8, v3

    const/16 v7, 0x35

    aput v7, v8, v12

    const/4 v7, 0x3

    aput v3, v8, v7

    const/4 v7, 0x0

    .line 136
    invoke-static {v8, v7, v3}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "device"

    .line 137
    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "product"

    .line 138
    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v2, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "sdk"

    .line 139
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "model"

    .line 140
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "deviceType"

    .line 141
    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v2, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v13, v2}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;Ljava/util/Map;)V

    .line 143
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v8

    .line 144
    new-instance v12, Lcom/appsflyer/internal/AFb1lSDK;

    invoke-direct {v12, v13}, Lcom/appsflyer/internal/AFb1lSDK;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType()Lcom/appsflyer/internal/AFc1ySDK;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/appsflyer/internal/AFc1ySDK;->afDebugLog()Lcom/appsflyer/internal/AFd1dSDK;

    move-result-object v14

    if-eqz v6, :cond_14

    .line 146
    invoke-static {v13}, Lcom/appsflyer/internal/AFa1aSDK;->afInfoLog(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 147
    invoke-virtual {v8}, Lcom/appsflyer/AppsFlyerProperties;->isOtherSdkStringDisabled()Z

    move-result v26

    if-nez v26, :cond_9

    .line 148
    invoke-static {v13}, Lcom/appsflyer/internal/AFa1aSDK;->onInstallConversionDataLoadedNative(Landroid/content/Context;)F

    move-result v26

    const-string v3, "batteryLevel"

    .line 149
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_9
    invoke-static {v13}, Lcom/appsflyer/internal/AFa1aSDK;->afRDLog(Landroid/content/Context;)V

    const/16 v3, 0x17

    if-lt v11, v3, :cond_a

    .line 151
    const-class v3, Landroid/app/UiModeManager;

    invoke-virtual {v13, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    goto :goto_5

    :cond_a
    const-string v3, "uimode"

    .line 152
    invoke-virtual {v13, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/UiModeManager;

    :goto_5
    if-eqz v3, :cond_b

    .line 153
    invoke-virtual {v3}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    const/4 v7, 0x4

    if-ne v3, v7, :cond_b

    const-string v3, "tv"

    .line 154
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_b
    invoke-static {v13}, Lcom/appsflyer/internal/AFd1fSDK;->AFInAppEventType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "inst_app"

    .line 156
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const-string v3, "timepassedsincelastlaunch"

    .line 157
    invoke-direct {v1, v13}, Lcom/appsflyer/internal/AFa1aSDK;->afWarnLog(Landroid/content/Context;)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v2}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Ljava/util/Map;)V

    .line 159
    invoke-static {v2, v14}, Lcom/appsflyer/internal/AFa1aSDK;->values(Ljava/util/Map;Lcom/appsflyer/internal/AFd1dSDK;)V

    .line 160
    iget-object v3, v1, Lcom/appsflyer/internal/AFa1aSDK;->onDeepLinking:Ljava/lang/String;

    if-eqz v3, :cond_d

    const-string v7, "phone"

    .line 161
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const-string v7, "referrer"

    if-nez v3, :cond_e

    :try_start_5
    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/4 v3, 0x0

    .line 163
    invoke-interface {v4, v10, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 164
    invoke-interface {v2, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_f
    invoke-virtual {v8, v13}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_10

    .line 167
    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_10
    iget-wide v10, v14, Lcom/appsflyer/internal/AFd1dSDK;->AFVersionDeclaration:J

    move v3, v6

    const-wide/16 v5, 0x0

    cmp-long v7, v10, v5

    if-eqz v7, :cond_11

    const-string v7, "prev_session_dur"

    .line 169
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_11
    sget-object v7, Lcom/appsflyer/internal/AFb1iSDK;->values:Landroid/app/Application;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    const-string v10, "exception_number"

    if-nez v7, :cond_12

    const-wide/16 v5, -0x1

    goto :goto_6

    .line 171
    :cond_12
    :try_start_6
    invoke-static {v7}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, v10, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 172
    :goto_6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v5, v1, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailure:Lcom/appsflyer/internal/AFb1gSDK;

    if-eqz v5, :cond_15

    .line 174
    iget-object v6, v5, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    const-string v7, "partner_data"

    if-nez v6, :cond_13

    :try_start_7
    iget-object v6, v5, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_13
    iget-object v6, v5, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 176
    invoke-static {v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iget-object v10, v5, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType:Ljava/util/Map;

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/appsflyer/internal/AFb1gSDK;->AFInAppEventType:Ljava/util/Map;

    goto :goto_7

    :cond_14
    move v3, v6

    .line 178
    invoke-static {v13, v2, v15}, Lcom/appsflyer/internal/AFa1aSDK;->values(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    :cond_15
    :goto_7
    const-string v5, "KSAppsFlyerId"

    .line 179
    invoke-static {v5}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KSAppsFlyerRICounter"

    .line 180
    invoke-static {v6}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_16

    if-eqz v6, :cond_16

    .line 181
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-lez v7, :cond_16

    const-string v7, "reinstallCounter"

    .line 182
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "originalAppsflyerId"

    .line 183
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v5, "additionalCustomData"

    .line 184
    invoke-static {v5}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_17

    const-string v6, "customData"

    .line 185
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 186
    :cond_17
    :try_start_8
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    const-string v6, "installer_package"

    .line 187
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v5, v0

    :try_start_9
    const-string v6, "Exception while getting the app\'s installer package. "

    .line 188
    invoke-static {v6, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :cond_18
    :goto_8
    invoke-virtual {v8, v9}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 190
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_19

    .line 191
    invoke-interface {v2, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_19
    invoke-virtual {v1, v13}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v1, v13}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Lcom/appsflyer/internal/AFd1oSDK;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    .line 194
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_1a
    if-nez v6, :cond_1c

    if-eqz v5, :cond_1c

    :cond_1b
    const-string v6, "af_latestchannel"

    .line 195
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_1c
    invoke-direct {v1, v13}, Lcom/appsflyer/internal/AFa1aSDK;->init(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    const-string v6, "af_installstore"

    .line 197
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_1d
    invoke-direct {v1, v13}, Lcom/appsflyer/internal/AFa1aSDK;->AFVersionDeclaration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    const-string v6, "af_preinstall_name"

    .line 199
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_1e
    invoke-direct {v1, v13}, Lcom/appsflyer/internal/AFa1aSDK;->getLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1f

    const-string v6, "af_currentstore"

    .line 201
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :cond_1f
    const-string v5, "appsflyerKey"

    if-eqz v25, :cond_20

    .line 202
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_20

    move-object/from16 v6, v25

    .line 203
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 204
    :cond_20
    iget-object v6, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerConversionListener:Lcom/appsflyer/internal/AFb1bSDK;

    invoke-virtual {v6}, Lcom/appsflyer/internal/AFb1bSDK;->AFLogger$LogLevel()Lcom/appsflyer/internal/AFd1lSDK;

    move-result-object v6

    .line 205
    iget-object v6, v6, Lcom/appsflyer/internal/AFd1lSDK;->AFInAppEventType:Ljava/lang/String;

    if-eqz v6, :cond_39

    .line 206
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_39

    .line 207
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :goto_9
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_21

    const-string v6, "appUserId"

    .line 209
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    const-string v5, "userEmails"

    .line 210
    invoke-virtual {v8, v5}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_22

    const-string v6, "user_emails"

    .line 211
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_22
    const-string v5, "userEmail"

    .line 212
    invoke-static {v5}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    const-string v6, "sha1_el"

    .line 213
    invoke-static {v5}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    :goto_a
    if-eqz v15, :cond_24

    const-string v5, "eventName"

    .line 214
    invoke-interface {v2, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "eventValue"

    move-object/from16 v6, v24

    .line 215
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_24
    invoke-static {}, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 217
    invoke-static/range {v23 .. v23}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v23

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    const-string v5, "currencyCode"

    .line 218
    invoke-static {v5}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 219
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_26

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WARNING: currency code should be 3 characters!!! \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is not a legal value."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    :cond_26
    const-string v6, "currency"

    .line 221
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string v5, "IS_UPDATE"

    .line 222
    invoke-static {v5}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_28

    const-string v6, "isUpdate"

    .line 223
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_28
    invoke-virtual {v1, v13}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v5

    const-string v6, "af_preinstalled"

    .line 225
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "collectFacebookAttrId"

    const/4 v6, 0x1

    .line 226
    invoke-virtual {v8, v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v5, :cond_29

    .line 227
    :try_start_b
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.facebook.katana"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 228
    invoke-virtual {v1, v13}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v5, v0

    move-object/from16 v6, v22

    .line 229
    :try_start_c
    invoke-static {v6, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    const/4 v5, 0x0

    goto :goto_c

    :catch_3
    move-object/from16 v6, v22

    .line 230
    invoke-static {v6}, Lcom/appsflyer/AFLogger;->afWarnLog(Ljava/lang/String;)V

    goto :goto_b

    :goto_c
    if-eqz v5, :cond_29

    const-string v6, "fb"

    .line 231
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_29
    invoke-direct {v1, v13, v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 233
    :try_start_d
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/appsflyer/internal/AFb1uSDK;->AFInAppEventParameterName(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2a

    const-string v6, "uid"

    .line 234
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_d

    :catch_4
    move-exception v0

    move-object v5, v0

    .line 235
    :try_start_e
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ERROR: could not get uid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_2a
    :goto_d
    :try_start_f
    const-string v5, "lang"

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_e

    :catch_5
    move-exception v0

    move-object v5, v0

    :try_start_10
    const-string v6, "Exception while collecting display language name. "

    .line 237
    invoke-static {v6, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_e
    :try_start_11
    const-string v5, "lang_code"

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_f

    :catch_6
    move-exception v0

    move-object v5, v0

    :try_start_12
    const-string v6, "Exception while collecting display language code. "

    .line 239
    invoke-static {v6, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :goto_f
    :try_start_13
    const-string v5, "country"

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_10

    :catch_7
    move-exception v0

    move-object v5, v0

    :try_start_14
    const-string v6, "Exception while collecting country name. "

    .line 241
    invoke-static {v6, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    const-string v5, "platformextension"

    .line 242
    iget-object v6, v1, Lcom/appsflyer/internal/AFa1aSDK;->onResponseNative:Lcom/appsflyer/internal/AFb1vSDK;

    invoke-virtual {v6}, Lcom/appsflyer/internal/AFb1vSDK;->values()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-static {v13, v2}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Landroid/content/Context;Ljava/util/Map;)V

    .line 244
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v7, v20

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 245
    :try_start_15
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v9, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-string v6, "installDate"

    .line 246
    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto :goto_11

    :catch_8
    move-exception v0

    move-object v6, v0

    :try_start_16
    const-string v9, "Exception while collecting install date. "

    .line 247
    invoke-static {v9, v6}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 248
    :goto_11
    :try_start_17
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    move-object/from16 v9, v19

    .line 249
    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 250
    iget v10, v6, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-le v10, v11, :cond_2b

    .line 251
    :try_start_18
    invoke-virtual {v1, v13}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;)Lcom/appsflyer/internal/AFd1oSDK;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v10, v9, v11}, Lcom/appsflyer/internal/AFd1oSDK;->AFKeystoreWrapper(Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto :goto_12

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object/from16 v20, v8

    move-object/from16 v19, v12

    move-object/from16 v22, v15

    goto/16 :goto_15

    :cond_2b
    :goto_12
    :try_start_19
    const-string v9, "app_version_code"

    .line 252
    iget v10, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "app_version_name"

    .line 253
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-wide v9, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    move-object v14, v12

    .line 255
    :try_start_1a
    iget-wide v11, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-string v6, "date1"
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    move-object/from16 v19, v14

    .line 256
    :try_start_1b
    new-instance v14, Ljava/text/SimpleDateFormat;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    move-object/from16 v20, v8

    :try_start_1c
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v14, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-object/from16 v22, v15

    .line 257
    :try_start_1d
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 258
    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 259
    invoke-interface {v2, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "date2"

    .line 260
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 261
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 262
    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-direct {v1, v5, v13}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/text/SimpleDateFormat;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [I

    const/16 v7, 0x12

    const/4 v8, 0x0

    aput v7, v6, v8

    const/16 v7, 0xf

    const/4 v9, 0x1

    aput v7, v6, v9

    const/4 v7, 0x2

    aput v8, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x3

    aput v7, v6, v8

    const-string v7, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001"

    .line 265
    invoke-static {v6, v7, v9}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    goto :goto_16

    :catchall_2
    move-exception v0

    goto :goto_14

    :catchall_3
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 v20, v8

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v19, v14

    goto :goto_13

    :catchall_6
    move-exception v0

    move-object/from16 v20, v8

    move-object/from16 v19, v12

    :goto_13
    move-object/from16 v22, v15

    :goto_14
    move-object v5, v0

    :goto_15
    :try_start_1e
    const-string v6, "Exception while collecting app version data "

    const/4 v7, 0x1

    .line 266
    invoke-static {v6, v5, v7}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 267
    :goto_16
    invoke-static {v13}, Lcom/appsflyer/internal/AFd1kSDK;->AFInAppEventParameterName(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/appsflyer/internal/AFa1aSDK;->onResponseErrorNative:Z

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "didConfigureTokenRefreshService="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v1, Lcom/appsflyer/internal/AFa1aSDK;->onResponseErrorNative:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    .line 269
    iget-boolean v5, v1, Lcom/appsflyer/internal/AFa1aSDK;->onResponseErrorNative:Z

    if-nez v5, :cond_2c

    const-string v5, "tokenRefreshConfigured"

    .line 270
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    if-eqz v3, :cond_2f

    .line 271
    iget-object v5, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    if-eqz v5, :cond_2e

    move-object/from16 v5, v18

    .line 272
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2d

    const-string v5, "Skip \'af\' payload as deeplink was found by path"

    .line 273
    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    goto :goto_17

    .line 274
    :cond_2d
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "isPush"

    const-string v8, "true"

    .line 275
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    :goto_17
    const/4 v5, 0x0

    .line 277
    iput-object v5, v1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyer2dXConversionCallback:Ljava/lang/String;

    const-string v5, "open_referrer"

    move-object/from16 v6, v21

    .line 278
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :cond_2f
    if-nez v3, :cond_31

    .line 279
    :try_start_1f
    invoke-static {v13}, Lcom/appsflyer/internal/AFa1bSDK;->AFKeystoreWrapper(Landroid/content/Context;)Lcom/appsflyer/internal/AFa1bSDK;

    move-result-object v5

    .line 280
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 281
    invoke-virtual {v5}, Lcom/appsflyer/internal/AFa1bSDK;->valueOf()Ljava/util/List;

    move-result-object v5

    .line 282
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    const-string v8, "sensors"

    if-nez v7, :cond_30

    .line 283
    :try_start_20
    new-instance v7, Lcom/appsflyer/internal/AFa1rSDK;

    invoke-direct {v7}, Lcom/appsflyer/internal/AFa1rSDK;-><init>()V

    invoke-virtual {v7, v5}, Lcom/appsflyer/internal/AFa1rSDK;->valueOf(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 284
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_30
    const-string v5, "na"

    .line 285
    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :goto_18
    invoke-interface {v2, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    goto :goto_19

    :catch_9
    move-exception v0

    move-object v5, v0

    .line 287
    :try_start_21
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected exception from AFSensorManager: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 288
    :cond_31
    :goto_19
    invoke-static/range {v17 .. v17}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_33

    .line 289
    invoke-static {v13, v2}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/Context;Ljava/util/Map;)Lcom/appsflyer/internal/AFa1qSDK;

    const-string v5, "GAID_retry"

    .line 290
    invoke-static/range {v17 .. v17}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_32

    const/4 v6, 0x1

    goto :goto_1a

    :cond_32
    const/4 v6, 0x0

    :goto_1a
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_33
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/appsflyer/internal/AFb1xSDK;->AFKeystoreWrapper(Landroid/content/ContentResolver;)Lcom/appsflyer/internal/AFa1qSDK;

    move-result-object v5

    if-eqz v5, :cond_34

    const-string v6, "amazon_aid"

    .line 292
    iget-object v7, v5, Lcom/appsflyer/internal/AFa1qSDK;->valueOf:Ljava/lang/String;

    .line 293
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "amazon_aid_limit"

    .line 294
    iget-object v5, v5, Lcom/appsflyer/internal/AFa1qSDK;->values:Ljava/lang/Boolean;

    .line 295
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_34
    invoke-static {v4}, Lcom/appsflyer/internal/AFd1kSDK;->valueOf(Landroid/content/SharedPreferences;)Z

    move-result v5

    const-string v6, "registeredUninstall"

    .line 297
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {v4, v3}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/SharedPreferences;Z)I

    move-result v5

    const-string v6, "counter"

    .line 299
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "iaecounter"

    if-eqz v22, :cond_35

    const/4 v7, 0x1

    goto :goto_1b

    :cond_35
    const/4 v7, 0x0

    .line 300
    :goto_1b
    invoke-static {v4, v7}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventParameterName(Landroid/content/SharedPreferences;Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_36

    const/4 v6, 0x1

    if-ne v5, v6, :cond_36

    move-object/from16 v7, v20

    .line 301
    iput-boolean v6, v7, Lcom/appsflyer/AppsFlyerProperties;->AFInAppEventParameterName:Z

    :cond_36
    const-string v6, "isFirstCall"

    .line 302
    invoke-static {v4}, Lcom/appsflyer/internal/AFa1aSDK;->AFInAppEventType(Landroid/content/SharedPreferences;)Z

    move-result v7

    if-nez v7, :cond_37

    const/4 v7, 0x1

    goto :goto_1c

    :cond_37
    const/4 v7, 0x0

    :goto_1c
    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {v13, v3, v2, v5}, Lcom/appsflyer/internal/AFa1aSDK;->valueOf(Landroid/content/Context;ZLjava/util/Map;I)V

    .line 304
    new-instance v3, Lcom/appsflyer/internal/AFb1rSDK;

    invoke-direct {v3}, Lcom/appsflyer/internal/AFb1rSDK;-><init>()V

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1rSDK;->valueOf(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "af_v"

    .line 305
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v3, Lcom/appsflyer/internal/AFb1rSDK;

    invoke-direct {v3}, Lcom/appsflyer/internal/AFb1rSDK;-><init>()V

    invoke-static {v2}, Lcom/appsflyer/internal/AFb1rSDK;->AFInAppEventType(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "af_v2"

    .line 307
    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {v13}, Lcom/appsflyer/internal/AFa1aSDK;->onAttributionFailureNative(Landroid/content/Context;)Z

    move-result v3

    const-string v5, "ivc"

    .line 309
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    .line 310
    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    const-string v5, "istu"

    const/4 v6, 0x0

    .line 311
    invoke-interface {v4, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_38
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "mcc"

    .line 313
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mnc"

    .line 314
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->mnc:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "cell"

    .line 315
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sig"

    move-object/from16 v4, v19

    .line 316
    iget-object v5, v4, Lcom/appsflyer/internal/AFb1lSDK;->values:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v4, v4, Lcom/appsflyer/internal/AFb1lSDK;->values:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/appsflyer/internal/AFb1wSDK;->valueOf(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "last_boot_time"

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 319
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "disk"

    .line 320
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v5

    .line 322
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v7

    mul-long v7, v7, v5

    .line 323
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9

    mul-long v9, v9, v5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    .line 324
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    long-to-double v6, v7

    div-double/2addr v6, v4

    double-to-long v6, v6

    long-to-double v8, v9

    div-double/2addr v8, v4

    double-to-long v4, v8

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v3, v1, Lcom/appsflyer/internal/AFa1aSDK;->afDebugLog:Lcom/appsflyer/internal/AFa1cSDK;

    if-eqz v3, :cond_3a

    .line 328
    iget-object v3, v3, Lcom/appsflyer/internal/AFa1cSDK;->AFKeystoreWrapper:[Ljava/lang/String;

    if-eqz v3, :cond_3a

    const-string v4, "sharing_filter"

    .line 329
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_39
    const-string v3, "AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. "

    .line 330
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    const-string v3, "AppsFlyer will not track this event."

    .line 331
    invoke-static {v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    const/4 v2, 0x0

    return-object v2

    :catchall_7
    move-exception v0

    move-object v3, v0

    .line 332
    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :cond_3a
    :goto_1d
    return-object v2

    :array_0
    .array-data 4
        0x0
        0xc
        0x7b
        0x4
    .end array-data
.end method

.method public final waitForCustomerUserId(Z)V
    .locals 5

    .line 1
    sget v0, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x46

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

    :goto_0
    const-string/jumbo v2, "waitForCustomerId"

    const/4 v3, 0x1

    const-string v4, "initAfterCustomerUserID: "

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;Z)V

    .line 3
    invoke-static {v2, p1}, Lcom/appsflyer/internal/AFa1aSDK;->AFKeystoreWrapper(Ljava/lang/String;Z)V

    sget p1, Lcom/appsflyer/internal/AFa1aSDK;->AppsFlyerLib:I

    add-int/lit8 p1, p1, 0x31

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1aSDK;->onValidateInApp:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
