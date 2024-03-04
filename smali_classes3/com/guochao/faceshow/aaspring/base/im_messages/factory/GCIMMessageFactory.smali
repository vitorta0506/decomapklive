.class public interface abstract Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J#\u0010\u0006\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/im_messages/factory/GCIMMessageFactory;",
        "",
        "Lo7/a;",
        "T",
        "Lcom/tencent/imsdk/v2/V2TIMMessage;",
        "v2Message",
        "create",
        "(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract create(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;
    .param p1    # Lcom/tencent/imsdk/v2/V2TIMMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lo7/a;",
            ">(",
            "Lcom/tencent/imsdk/v2/V2TIMMessage;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
