.class public interface abstract Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "x"
.end annotation


# virtual methods
.method public abstract onConsumeResponse()V
.end method

.method public abstract onPayError(Ljava/lang/Throwable;)V
.end method

.method public abstract onPayResponse()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSetupResponse(Z)V
.end method

.method public abstract onSubscribeFailed()V
.end method

.method public abstract onSubscribeSuccess()V
.end method

.method public abstract startSubscribe()V
.end method
