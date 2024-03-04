.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;",
        "",
        "()V",
        "msgArray",
        "",
        "getMessage",
        "",
        "index",
        "",
        "getRandomMessages",
        "count",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final msgArray:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;

    const/16 v0, 0x16

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    .line 2
    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;->msgArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f120380
        0x7f120381
        0x7f120382
        0x7f120383
        0x7f120384
        0x7f120385
        0x7f120386
        0x7f120387
        0x7f120388
        0x7f120389
        0x7f12038b
        0x7f12038c
        0x7f12038d
        0x7f12038e
        0x7f12038f
        0x7f120390
        0x7f120391
        0x7f120392
        0x7f120393
        0x7f120394
        0x7f120332
        0x7f120333
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;->msgArray:[I

    array-length v2, v1

    rem-int/2addr p0, v2

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getInstance().getString(\u2026y[index % msgArray.size])"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getRandomMessages(I)[I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;->msgArray:[I

    array-length v2, v1

    if-lt p0, v2, :cond_1

    .line 2
    array-length p0, v1

    sub-int/2addr p0, v0

    .line 3
    :cond_1
    :goto_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;->msgArray:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const-string v2, "copyOf(this, size)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->shuffle([I)V

    const/4 v2, 0x0

    sub-int/2addr p0, v0

    .line 5
    invoke-static {v1, v2, p0}, Lkotlin/collections/ArraysKt;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRandomMessages$default(IILjava/lang/Object;)[I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x5

    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/RandomChatMessageUtil;->getRandomMessages(I)[I

    move-result-object p0

    return-object p0
.end method
