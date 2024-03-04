.class public final Lcom/guochao/pusher/base/ILivePusher$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/pusher/base/ILivePusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic setPauseImage$default(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lnb/a;->c(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;IIILjava/lang/Object;)V

    return-void
.end method

.method public static startPushToRtc(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/guochao/pusher/base/ILivePusher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lnb/a;->b(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic stopPreview$default(Lcom/guochao/pusher/base/ILivePusher;ZILjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnb/a;->d(Lcom/guochao/pusher/base/ILivePusher;ZILjava/lang/Object;)V

    return-void
.end method
