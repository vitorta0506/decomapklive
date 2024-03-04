.class public final synthetic Lnb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public static synthetic b(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnb/a;->a(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/pusher/base/ILivePusher;Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0x12c

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x5

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/guochao/pusher/base/ILivePusher;->setPauseImage(Ljava/lang/String;II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setPauseImage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Lcom/guochao/pusher/base/ILivePusher;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Lcom/guochao/pusher/base/ILivePusher;->stopPreview(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: stopPreview"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
