.class public interface abstract Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils$OnEventTrackListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnEventTrackListener"
.end annotation


# virtual methods
.method public abstract onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
