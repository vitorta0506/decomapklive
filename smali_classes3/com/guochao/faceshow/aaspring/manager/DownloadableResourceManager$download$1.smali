.class public final Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->download(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\u0016\u0010\n\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J \u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d;",
        "Ljava/io/File;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "",
        "current",
        "total",
        "",
        "progress",
        "onProgress",
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
.field final synthetic $item:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

.field final synthetic $path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;->$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;->$item:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 4
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;->$item:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->setDownloadState(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->access$getCallbacks$p()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;->$item:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;->fail(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public onProgress(JJD)V
    .locals 0

    return-void
.end method

.method public onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;->$path:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;->$item:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 4
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->setPath(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->setDownloadState(I)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->access$getCallbacks$p()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;->success(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;->onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
