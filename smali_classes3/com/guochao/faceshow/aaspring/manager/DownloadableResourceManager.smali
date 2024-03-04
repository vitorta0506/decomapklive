.class public final Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;,
        Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;,
        Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$SvgaCallback;,
        Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0004\u001f !\"B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u0004H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001b\u001a\u00020\u0004H\u0002J\u001e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u000cJ\u0016\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u001dJ\u0006\u0010\u001e\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R$\u0010\t\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\u0008\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;",
        "",
        "()V",
        "BASE_URL",
        "",
        "DOWNLOADED",
        "",
        "DOWNLOADING",
        "DOWNLOAD_FAIL",
        "callbacks",
        "",
        "",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;",
        "items",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;",
        "Lkotlin/collections/ArrayList;",
        "addCallback",
        "",
        "itemName",
        "callback",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "download",
        "item",
        "path",
        "findResource",
        "name",
        "getResource",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;",
        "startDownload",
        "DownloadCallback",
        "DownloadItem",
        "LifecycleDownloadCallback",
        "SvgaCallback",
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
.field public static final BASE_URL:Ljava/lang/String; = "https://fsveg.buzzcast.info/app_static/resource/"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DOWNLOADED:I = 0x1

.field public static final DOWNLOADING:I = 0x0

.field public static final DOWNLOAD_FAIL:I = -0x1

.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->items:Ljava/util/ArrayList;

    .line 2
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->callbacks:Ljava/util/Map;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    const-string v3, "pk_vs.svga"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    const-string v9, "tie_29.svga"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    const-string v3, "pk_progress.svga"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    const-string v9, "win_29.svga"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    const-string v3, "lose_29.svga"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->startDownload$lambda-1()V

    return-void
.end method

.method public static final synthetic access$getCallbacks$p()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->callbacks:Ljava/util/Map;

    return-object v0
.end method

.method private final addCallback(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->callbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$addCallback$observer$1;

    invoke-direct {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$addCallback$observer$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;)V

    .line 6
    invoke-interface {p3}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 7
    instance-of p3, p2, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;

    if-eqz p3, :cond_2

    .line 8
    check-cast p2, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->setObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_2
    return-void
.end method

.method private final download(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->setDownloadState(I)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;

    invoke-direct {v3, p2, p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$download$1;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 5
    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager;->download$default(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/d;ZILjava/lang/Object;)V

    return-void
.end method

.method private final findResource(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;
    .locals 3

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->items:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    return-object v1
.end method

.method private static final startDownload$lambda-1()V
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->items:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getDownloadableResourceDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->setPath(Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    sget-object v3, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    invoke-direct {v3, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->download(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->setPath(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->setDownloadState(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getResource(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->findResource(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p3, v1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;->fail(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getDownloadState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 5
    invoke-interface {p3, v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;->success(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getDownloadState()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->download(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0, p1, p3, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->addCallback(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;Landroidx/lifecycle/LifecycleOwner;)V

    :goto_0
    return-void
.end method

.method public final getResource(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->getResource(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;)V

    return-void
.end method

.method public final startDownload()V
    .locals 3

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/c;->a:Lcom/guochao/faceshow/aaspring/manager/c;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, v1, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/AsyncUtils;->run$default(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method
