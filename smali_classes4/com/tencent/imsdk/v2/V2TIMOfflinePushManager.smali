.class public abstract Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManager;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;->getInstance()Lcom/tencent/imsdk/v2/V2TIMOfflinePushManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract doBackground(ILcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract doForeground(Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method

.method public abstract setOfflinePushConfig(Lcom/tencent/imsdk/v2/V2TIMOfflinePushConfig;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
.end method
