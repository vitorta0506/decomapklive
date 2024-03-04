.class public final Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0019\u0018\u00002\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0002B/\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0019\u001a\u00020\u0014\u0012\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e\u0012\u0006\u0010!\u001a\u00020\u000b\u00a2\u0006\u0004\u0008+\u0010,J\u0010\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003H\u0002J\u0016\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0006H\u0002J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0006\u0010\u000c\u001a\u00020\u000bJ&\u0010\u0010\u001a\"\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e0\rj\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e`\u000fJ\u0013\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0000H\u0096\u0002R\u0017\u0010\u0015\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\u00020\u00148\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0018R*\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0017\u0010!\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$RB\u0010%\u001a\"\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e0\rj\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000e`\u000f8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*\u00a8\u0006-"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;",
        "Ljava/lang/Runnable;",
        "",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "Ljava/io/File;",
        "download",
        "Lg7/a;",
        "e",
        "",
        "fail",
        "run",
        "",
        "isInitCallbacks",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d;",
        "Lkotlin/collections/ArrayList;",
        "makeSureCallbacks",
        "other",
        "",
        "compareTo",
        "",
        "fileUrl",
        "Ljava/lang/String;",
        "getFileUrl",
        "()Ljava/lang/String;",
        "fileSavePath",
        "getFileSavePath",
        "callback",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d;",
        "getCallback",
        "()Lcom/guochao/faceshow/aaspring/base/http/callback/d;",
        "setCallback",
        "(Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V",
        "priority",
        "Z",
        "getPriority",
        "()Z",
        "callbacks",
        "Ljava/util/ArrayList;",
        "getCallbacks",
        "()Ljava/util/ArrayList;",
        "setCallbacks",
        "(Ljava/util/ArrayList;)V",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;Z)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public callbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fileSavePath:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final priority:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/base/http/callback/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "fileUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSavePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->fileUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->fileSavePath:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    .line 5
    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->priority:Z

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->run$lambda-1(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->run$lambda-3(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;)V

    return-void
.end method

.method private final download()Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "GET"

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->fileUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$getOkHttpClient$p()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->fileSavePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$writeToFile(Lokhttp3/Response;Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V

    .line 10
    new-instance v2, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;-><init>()V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setCode(I)V

    .line 12
    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    return-object v2

    .line 14
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 15
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    :cond_2
    throw v1
.end method

.method private final fail(Lg7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static final run$lambda-1(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$getFailList$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$getRunningList$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final run$lambda-3(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$getRunningList$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    new-instance v0, Lg7/a;

    invoke-direct {v0}, Lg7/a;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callbacks:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$getFailList$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;)I
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->priority:Z

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->priority:Z

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->priority:Z

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->compareTo(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;)I

    move-result p1

    return p1
.end method

.method public final getCallback()Lcom/guochao/faceshow/aaspring/base/http/callback/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    return-object v0
.end method

.method public final getCallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callbacks"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFileSavePath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->fileSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->fileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->priority:Z

    return v0
.end method

.method public final isInitCallbacks()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final makeSureCallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callbacks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->setCallbacks(Ljava/util/ArrayList;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->getCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->download()Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$getHandler$p()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/manager/g;

    invoke-direct {v3, p0, v1}, Lcom/guochao/faceshow/aaspring/manager/g;-><init>(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->access$getHandler$p()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/f;-><init>(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final setCallback(Lcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/callback/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callback:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    return-void
.end method

.method public final setCallbacks(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "Ljava/io/File;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->callbacks:Ljava/util/ArrayList;

    return-void
.end method
