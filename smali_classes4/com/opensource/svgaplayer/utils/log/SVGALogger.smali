.class public final Lcom/opensource/svgaplayer/utils/log/SVGALogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/utils/log/SVGALogger;",
        "",
        "()V",
        "isLogEnabled",
        "",
        "mLogger",
        "Lcom/opensource/svgaplayer/utils/log/ILogger;",
        "getSVGALogger",
        "injectSVGALoggerImp",
        "logImp",
        "setLogEnabled",
        "isEnabled",
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
.field public static final INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isLogEnabled:Z

.field private static mLogger:Lcom/opensource/svgaplayer/utils/log/ILogger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    new-instance v0, Lcom/opensource/svgaplayer/utils/log/DefaultLogCat;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/log/DefaultLogCat;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->mLogger:Lcom/opensource/svgaplayer/utils/log/ILogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->mLogger:Lcom/opensource/svgaplayer/utils/log/ILogger;

    return-object v0
.end method

.method public final injectSVGALoggerImp(Lcom/opensource/svgaplayer/utils/log/ILogger;)Lcom/opensource/svgaplayer/utils/log/SVGALogger;
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/utils/log/ILogger;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "logImp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->mLogger:Lcom/opensource/svgaplayer/utils/log/ILogger;

    return-object p0
.end method

.method public final isLogEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled:Z

    return v0
.end method

.method public final setLogEnabled(Z)Lcom/opensource/svgaplayer/utils/log/SVGALogger;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sput-boolean p1, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled:Z

    return-object p0
.end method
