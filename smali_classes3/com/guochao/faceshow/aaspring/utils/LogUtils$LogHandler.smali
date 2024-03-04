.class public final Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001a\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0005H\u0002R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;",
        "Landroid/os/Handler;",
        "looper",
        "Landroid/os/Looper;",
        "folder",
        "",
        "maxFileSize",
        "",
        "(Landroid/os/Looper;Ljava/lang/String;I)V",
        "getFolder",
        "()Ljava/lang/String;",
        "getMaxFileSize",
        "()I",
        "getLogFile",
        "Ljava/io/File;",
        "folderName",
        "fileName",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "writeLog",
        "fileWriter",
        "Ljava/io/FileWriter;",
        "content",
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


# instance fields
.field private final folder:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final maxFileSize:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "looper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->folder:Ljava/lang/String;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->maxFileSize:I

    return-void
.end method

.method private final getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 11

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 p1, 0x0

    .line 4
    new-instance v1, Ljava/io/File;

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%s_%s.csv"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "format(format, *args)"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    move-object v10, v1

    move-object v1, p1

    move-object p1, v10

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/2addr v3, v6

    .line 6
    new-instance v1, Ljava/io/File;

    sget-object v8, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v8, v2, [Ljava/lang/Object;

    aput-object p2, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->maxFileSize:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-ltz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method private final writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public final getFolder()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->folder:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxFileSize()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->maxFileSize:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->folder:Ljava/lang/String;

    const-string v1, "logs"

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->getLogFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils$LogHandler;->writeLog(Ljava/io/FileWriter;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v1, v2

    goto :goto_0

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    :goto_1
    return-void
.end method
