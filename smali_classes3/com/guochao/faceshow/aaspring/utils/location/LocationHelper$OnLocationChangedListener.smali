.class public interface abstract Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$OnLocationChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLocationChangedListener"
.end annotation


# virtual methods
.method public abstract onError(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
    .param p1    # I
        .annotation build Lcom/guochao/faceshow/aaspring/utils/location/LocationHelper$LocationError;
        .end annotation
    .end param
.end method

.method public abstract onReceiveLocation(Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;)V
.end method
