.class public Lcom/unity3d/services/ads/operation/OperationState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/services/core/webview/bridge/IWebViewSharedObject;


# static fields
.field private static _emptyPlacementId:Ljava/lang/String; = ""


# instance fields
.field public configuration:Lcom/unity3d/services/core/configuration/Configuration;

.field public id:Ljava/lang/String;

.field public placementId:Ljava/lang/String;

.field public timeoutCV:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/services/core/configuration/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/unity3d/services/ads/operation/OperationState;->_emptyPlacementId:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/unity3d/services/ads/operation/OperationState;->placementId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/unity3d/services/ads/operation/OperationState;->configuration:Lcom/unity3d/services/core/configuration/Configuration;

    .line 4
    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/OperationState;->timeoutCV:Landroid/os/ConditionVariable;

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/services/ads/operation/OperationState;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/services/ads/operation/OperationState;->id:Ljava/lang/String;

    return-object v0
.end method
