.class public final Lcom/appsflyer/internal/AFe1pSDK;
.super Lcom/appsflyer/internal/AFe1wSDK;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "af_purchase"

    invoke-direct {p0, v1, v0, p1}, Lcom/appsflyer/internal/AFe1wSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final AFInAppEventParameterName()Lcom/appsflyer/internal/AFc1lSDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFc1lSDK;->init:Lcom/appsflyer/internal/AFc1lSDK;

    return-object v0
.end method

.method public final AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFInAppEventType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/appsflyer/internal/AFa1tSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lcom/appsflyer/internal/AFa1tSDK;

    move-result-object p1

    return-object p1
.end method
