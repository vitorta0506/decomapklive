.class public interface abstract Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\'J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\'\u00a8\u0006\n\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/dao/GoogleSubscribeRequestModelDao;",
        "",
        "findByOrderId",
        "Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;",
        "googleOrderId",
        "",
        "insert",
        "",
        "requestModel",
        "remove",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract findByOrderId(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM googlesubscriberequestmodel where googleOrderId = :googleOrderId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract insert(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract remove(Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/googlepay/model/GoogleSubscribeRequestModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method
