.class public interface abstract Lcom/guochao/faceshow/gift/SendGiftCallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H&\u00a8\u0006\u0007\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/gift/SendGiftCallBack;",
        "",
        "onSendGiftFailure",
        "",
        "data",
        "Lcom/guochao/faceshow/aaspring/beans/AppResource;",
        "onSendGiftSuccessful",
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
.method public abstract onSendGiftFailure(Lcom/guochao/faceshow/aaspring/beans/AppResource;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/AppResource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSendGiftSuccessful()V
.end method
