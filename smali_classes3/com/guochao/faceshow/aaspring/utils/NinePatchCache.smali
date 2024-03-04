.class public Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;,
        Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;
    }
.end annotation


# static fields
.field private static sNinePatchCache:Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;


# instance fields
.field private mLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->mLruCache:Landroid/util/LruCache;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;)Landroid/util/LruCache;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->mLruCache:Landroid/util/LruCache;

    return-object p0
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->sNinePatchCache:Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->sNinePatchCache:Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->sNinePatchCache:Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->sNinePatchCache:Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    return-object v0
.end method


# virtual methods
.method public getNinePatch(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->mLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;->onGetBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object v0

    invoke-virtual {v0}, Lic/d;->D()Lic/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;

    invoke-direct {v1, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;-><init>(Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    return-void
.end method
