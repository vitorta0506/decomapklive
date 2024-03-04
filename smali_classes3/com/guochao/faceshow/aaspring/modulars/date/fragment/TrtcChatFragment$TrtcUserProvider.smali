.class public interface abstract Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TrtcUserProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&\u00a8\u0006\u0008\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/date/fragment/TrtcChatFragment$TrtcUserProvider;",
        "",
        "getCurrentTrtcUser",
        "Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;",
        "playGift",
        "",
        "giftMessage",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;",
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
.method public abstract getCurrentTrtcUser()Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract playGift(Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
