.class public final Lcom/opensource/svgaplayer/SVGAParserKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "fileLock",
        "",
        "isUnzipping",
        "",
        "com.opensource.svgaplayer"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static fileLock:I

.field private static isUnzipping:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$getFileLock$p()I
    .locals 1

    sget v0, Lcom/opensource/svgaplayer/SVGAParserKt;->fileLock:I

    return v0
.end method

.method public static final synthetic access$isUnzipping$p()Z
    .locals 1

    sget-boolean v0, Lcom/opensource/svgaplayer/SVGAParserKt;->isUnzipping:Z

    return v0
.end method

.method public static final synthetic access$setUnzipping$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/opensource/svgaplayer/SVGAParserKt;->isUnzipping:Z

    return-void
.end method
