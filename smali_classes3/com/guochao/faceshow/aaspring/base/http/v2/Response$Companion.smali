.class public final Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J9\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u0001H\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0002\u0010\u000bJ1\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0004\"\u0004\u0008\u0001\u0010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u0001H\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;",
        "",
        "()V",
        "fail",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "T",
        "code",
        "",
        "data",
        "msg",
        "",
        "(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "success",
        "(Ljava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "lib_httpclient_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fail$default(Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;ILjava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic success$default(Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response$Companion;->success(Ljava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fail(ILjava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public final success(Ljava/lang/Object;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method
