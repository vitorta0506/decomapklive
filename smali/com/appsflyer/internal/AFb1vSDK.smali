.class public final Lcom/appsflyer/internal/AFb1vSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFb1vSDK$AFa1xSDK;,
        Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;
    }
.end annotation


# instance fields
.field private final AFInAppEventType:Lcom/appsflyer/internal/AFb1vSDK$AFa1xSDK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/appsflyer/internal/AFb1vSDK$2;

    invoke-direct {v0}, Lcom/appsflyer/internal/AFb1vSDK$2;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1vSDK$AFa1xSDK;

    return-void
.end method

.method private AFInAppEventType(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1vSDK$AFa1xSDK;

    invoke-interface {v1, p1}, Lcom/appsflyer/internal/AFb1vSDK$AFa1xSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_0
    return v0
.end method


# virtual methods
.method public final values()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;->values()[Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-static {v3}, Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;->AFInAppEventType(Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/appsflyer/internal/AFb1vSDK;->AFInAppEventType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v3}, Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;

    invoke-static {v0}, Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFb1vSDK$AFa1zSDK;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
