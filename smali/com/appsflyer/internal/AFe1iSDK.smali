.class public abstract Lcom/appsflyer/internal/AFe1iSDK;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;
    }
.end annotation


# instance fields
.field public final AFInAppEventParameterName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final AFInAppEventType:Ljava/lang/Runnable;

.field public AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

.field AFLogger:J

.field public final afErrorLog:Ljava/lang/String;

.field public final valueOf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;->values:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    .line 4
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType:Ljava/lang/Runnable;

    .line 5
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1iSDK;->afErrorLog:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract AFKeystoreWrapper(Landroid/content/Context;)V
.end method

.method public final valueOf()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1iSDK;->valueOf:Ljava/lang/String;

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1iSDK;->afErrorLog:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventParameterName:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFLogger:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "latency"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;->AFInAppEventParameterName:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    iput-object v0, p0, Lcom/appsflyer/internal/AFe1iSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1iSDK$AFa1xSDK;

    .line 5
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 6
    invoke-virtual {p0}, Ljava/util/Observable;->notifyObservers()V

    return-void
.end method
