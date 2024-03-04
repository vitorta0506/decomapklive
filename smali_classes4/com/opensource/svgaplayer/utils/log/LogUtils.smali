.class public final Lcom/opensource/svgaplayer/utils/log/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J\u0018\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J \u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J\u0018\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004J\u0018\u0010\r\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/utils/log/LogUtils;",
        "",
        "()V",
        "TAG",
        "",
        "debug",
        "",
        "tag",
        "msg",
        "error",
        "",
        "info",
        "verbose",
        "warn",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SVGALog"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic debug$default(Lcom/opensource/svgaplayer/utils/log/LogUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "SVGALog"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic error$default(Lcom/opensource/svgaplayer/utils/log/LogUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "SVGALog"

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic error$default(Lcom/opensource/svgaplayer/utils/log/LogUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-string p1, "SVGALog"

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic info$default(Lcom/opensource/svgaplayer/utils/log/LogUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "SVGALog"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic verbose$default(Lcom/opensource/svgaplayer/utils/log/LogUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "SVGALog"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic warn$default(Lcom/opensource/svgaplayer/utils/log/LogUtils;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p1, "SVGALog"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/LogUtils;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2, p3}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
