.class public final Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0007J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR@\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0014\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r8A@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;",
        "",
        "()V",
        "SETTINGS_PATH",
        "",
        "TAG",
        "isEnabled",
        "",
        "isEnabled$facebook_core_release",
        "()Z",
        "setEnabled$facebook_core_release",
        "(Z)V",
        "valuesToSave",
        "",
        "savedCloudBridgeCredentials",
        "getSavedCloudBridgeCredentials$facebook_core_release",
        "()Ljava/util/Map;",
        "setSavedCloudBridgeCredentials$facebook_core_release",
        "(Ljava/util/Map;)V",
        "enable",
        "",
        "getCAPIGSettingsFromGraphResponse",
        "response",
        "Lcom/facebook/GraphResponse;",
        "getCAPIGSettingsFromGraphResponse$facebook_core_release",
        "facebook-core_release"
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
.field public static final INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SETTINGS_PATH:Ljava/lang/String; = "/cloudbridge_settings"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;

    invoke-direct {v0}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;-><init>()V

    sput-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;

    const-class v0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/facebook/GraphResponse;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->enable$lambda-0(Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method public static final enable()V
    .locals 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    sget-object v8, Lcom/facebook/appevents/cloudbridge/a;->a:Lcom/facebook/appevents/cloudbridge/a;

    .line 2
    new-instance v12, Lcom/facebook/GraphRequest;

    const/4 v4, 0x0

    .line 3
    sget-object v3, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/cloudbridge_settings"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, v12

    .line 4
    invoke-direct/range {v3 .. v11}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    sget-object v3, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 6
    sget-object v4, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 7
    sget-object v5, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v6, " \n\nCreating Graph Request: \n=============\n%s\n\n "

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v12, v7, v1

    .line 8
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v12}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    .line 11
    sget-object v4, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 12
    sget-object v5, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 13
    sget-object v6, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v3}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, " \n\nGraph Request Exception: \n=============\n%s\n\n "

    .line 15
    invoke-virtual {v4, v5, v6, v1, v0}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final enable$lambda-0(Lcom/facebook/GraphResponse;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;

    invoke-virtual {v0, p0}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->getCAPIGSettingsFromGraphResponse$facebook_core_release(Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method public static final getSavedCloudBridgeCredentials$facebook_core_release()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 1
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.facebook.sdk.CloudBridgeSavedCredentials"

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 3
    :cond_1
    sget-object v3, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v3}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4
    sget-object v6, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v6}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    sget-object v8, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v8}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    .line 6
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v10, 0x1

    :goto_1
    if-nez v10, :cond_9

    if-eqz v7, :cond_5

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v10, 0x1

    :goto_3
    if-nez v10, :cond_9

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v10, 0x1

    :goto_5
    if-eqz v10, :cond_8

    goto :goto_6

    .line 7
    :cond_8
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 8
    invoke-virtual {v6}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v3}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v8}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v3, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 12
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 13
    sget-object v8, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v5, v12, v4

    aput-object v7, v12, v9

    const/4 v4, 0x2

    aput-object v1, v12, v4

    .line 14
    invoke-virtual {v3, v6, v8, v11, v12}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v10

    :cond_9
    :goto_6
    return-object v2

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final getCAPIGSettingsFromGraphResponse$facebook_core_release(Lcom/facebook/GraphResponse;)V
    .locals 9
    .param p1    # Lcom/facebook/GraphResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "CloudBridge Settings API response is not a valid json: \n%s "

    const-string v1, "response"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 2
    sget-object v0, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 3
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 4
    sget-object v5, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 6
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n "

    .line 7
    invoke-virtual {v0, v1, v5, p1, v2}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->getSavedCloudBridgeCredentials$facebook_core_release()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;

    .line 11
    sget-object v1, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v2, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v2}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {v1, v0, p1}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sput-boolean v4, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->isEnabled:Z

    :cond_0
    return-void

    .line 16
    :cond_1
    sget-object v1, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 17
    sget-object v5, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 18
    sget-object v6, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const-string v7, " \n\nGraph Response Received: \n================\n%s\n\n "

    .line 19
    invoke-virtual {v1, v5, v6, v7, v2}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 21
    :try_start_0
    sget-object v2, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "data"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 22
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 23
    sget-object v2, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v2}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    sget-object v7, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v7}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 25
    sget-object v8, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v8}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    if-eqz v7, :cond_5

    if-nez v8, :cond_3

    goto :goto_1

    .line 26
    :cond_3
    :try_start_1
    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;

    invoke-static {v7, v2, v8}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->setSavedCloudBridgeCredentials$facebook_core_release(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    sget-object v0, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ENABLED:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 29
    invoke-virtual {v0}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 30
    :cond_4
    sput-boolean v3, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->isEnabled:Z

    return-void

    :catch_0
    move-exception p1

    .line 31
    sget-object v0, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 32
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 33
    sget-object v2, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "CloudBridge Settings API response doesn\'t have valid url\n %s "

    .line 35
    invoke-virtual {v0, v1, v2, p1, v4}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    :goto_1
    const-string p1, "CloudBridge Settings API response doesn\'t have valid data"

    .line 36
    invoke-virtual {v1, v5, v6, p1}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_6
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type org.json.JSONArray"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 38
    sget-object v1, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 39
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 40
    sget-object v5, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    .line 41
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 42
    invoke-virtual {v1, v2, v5, v0, v4}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_2
    move-exception p1

    .line 43
    sget-object v1, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 44
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 45
    sget-object v5, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    .line 46
    invoke-static {p1}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 47
    invoke-virtual {v1, v2, v5, v0, v4}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final isEnabled$facebook_core_release()Z
    .locals 1

    sget-boolean v0, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->isEnabled:Z

    return v0
.end method

.method public final setEnabled$facebook_core_release(Z)V
    .locals 0

    sput-boolean p1, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->isEnabled:Z

    return-void
.end method

.method public final setSavedCloudBridgeCredentials$facebook_core_release(Ljava/util/Map;)V
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.sdk.CloudBridgeSavedCredentials"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 6
    :cond_1
    sget-object v1, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->DATASETID:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->URL:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v4}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 8
    sget-object v6, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->ACCESSKEY:Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;

    invoke-virtual {v6}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10
    invoke-virtual {v1}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-virtual {v4}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-virtual {v6}, Lcom/facebook/appevents/cloudbridge/SettingsAPIFields;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 14
    sget-object v0, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 15
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 16
    sget-object v4, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    const/4 v2, 0x1

    aput-object v5, v6, v2

    const/4 v2, 0x2

    aput-object p1, v6, v2

    const-string p1, " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "

    .line 17
    invoke-virtual {v0, v1, v4, p1, v6}, Lcom/facebook/internal/Logger$Companion;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method
