.class public abstract Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;
.super Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SvgaCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "success",
        "",
        "item",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
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


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;-><init>(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/ref/WeakReference;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->success(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 6
    :cond_0
    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->shareParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback$success$1;-><init>(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;)V

    const/4 v3, 0x1

    .line 9
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method public abstract success(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
