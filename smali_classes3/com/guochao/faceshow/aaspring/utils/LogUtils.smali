.class public final Lcom/guochao/faceshow/aaspring/utils/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;,
        Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;,
        Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0003J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006H\u0003J\u001e\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007J*\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007J\u001b\u0010\u000f\u001a\u00020\u00062\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0003\u00a2\u0006\u0002\u0010\u0013J\u001e\u0010\u0014\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0015\u001a\u00020\u000b2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0016H\u0007J\u001e\u0010\u0017\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007J\u001e\u0010\u0018\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/LogUtils;",
        "",
        "()V",
        "sLogger",
        "Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;",
        "buildTag",
        "",
        "tag",
        "createMessage",
        "msg",
        "d",
        "",
        "e",
        "tr",
        "",
        "getMethodNames",
        "sElements",
        "",
        "Ljava/lang/StackTraceElement;",
        "([Ljava/lang/StackTraceElement;)Ljava/lang/String;",
        "i",
        "json",
        "Lorg/json/JSONObject;",
        "v",
        "w",
        "DebugLogger",
        "DefaultLogger",
        "LogHandler",
        "lib_base_release"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/LogUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/LogUtils;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$createMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->createMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final buildTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Facecast_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final createMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "Throwable().stackTrace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->getMethodNames([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;->log(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v0, p0, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DefaultLogger;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p0, v0

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final getMethodNames([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x4

    .line 1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 2
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 3
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;->log(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final json(Lorg/json/JSONObject;)V
    .locals 2
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;->json(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->v$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;->log(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic v$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->w$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static final w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->sLogger:Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->buildTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$DebugLogger;->log(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic w$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
