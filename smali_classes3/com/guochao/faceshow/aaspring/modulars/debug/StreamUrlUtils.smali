.class public final Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;,
        Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$DebugStreamUrlReplacer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0011\u0012B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0003J\u0014\u0010\t\u001a\u0004\u0018\u00010\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\u0008\u0010\u000b\u001a\u00020\u000cH\u0007J\u001c\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0007R\u0018\u0010\u0003\u001a\u00020\u00048\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;",
        "",
        "()V",
        "replacer",
        "Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;",
        "getReplacer$annotations",
        "getStreamId",
        "",
        "url",
        "getStreamUrl",
        "streamUrl",
        "setGrey",
        "",
        "streamEquals",
        "",
        "oldUrl",
        "newUrl",
        "DebugStreamUrlReplacer",
        "StreamUrlReplacer",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static replacer:Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->replacer:Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic getReplacer$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static final getStreamId(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, ""

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "/"

    move-object v2, p0

    .line 2
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    return-object v1

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "."

    move-object v2, p0

    .line 3
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_4

    return-object v1

    :cond_4
    if-ge v2, v0, :cond_5

    return-object p0

    .line 4
    :cond_5
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getStreamUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->replacer:Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;->getStreamUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setGrey()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->replacer:Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils$StreamUrlReplacer;

    return-void
.end method

.method public static final streamEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->getStreamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/debug/StreamUrlUtils;->getStreamId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
