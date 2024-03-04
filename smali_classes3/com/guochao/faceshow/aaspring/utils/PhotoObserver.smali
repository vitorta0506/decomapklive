.class public final Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u001a\u0010\u0011\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;",
        "",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "mContentObserver",
        "Landroid/database/ContentObserver;",
        "mContext",
        "Landroid/app/Application;",
        "mVideoObserver",
        "destroy",
        "",
        "init",
        "context",
        "Landroid/content/Context;",
        "refreshUri",
        "uri",
        "Landroid/net/Uri;",
        "video",
        "",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final handler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mContext:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mVideoObserver:Landroid/database/ContentObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->Companion:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->instance:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->handler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$mContentObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$mContentObserver$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mContentObserver:Landroid/database/ContentObserver;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$mVideoObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$mVideoObserver$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mVideoObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->instance:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    return-object v0
.end method

.method public static final synthetic access$refreshUri(Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->refreshUri(Landroid/net/Uri;Z)V

    return-void
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->Companion:Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;

    move-result-object v0

    return-object v0
.end method

.method private final refreshUri(Landroid/net/Uri;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->Companion:Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MediaFileFinder;->mediaChanged(Landroid/net/Uri;Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mContext:Landroid/app/Application;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mVideoObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mContext:Landroid/app/Application;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 7
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/PhotoObserver;->mVideoObserver:Landroid/database/ContentObserver;

    .line 9
    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
