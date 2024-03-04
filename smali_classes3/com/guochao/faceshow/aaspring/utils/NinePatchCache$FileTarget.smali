.class Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field mNinePatchCallbackWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls0/c;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mNinePatchCallbackWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mNinePatchCallbackWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mNinePatchCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;

    const/4 v0, -0x1

    const-string v1, ""

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;->onFail(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResourceReady(Ljava/io/File;Lt0/f;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lt0/f<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mNinePatchCallbackWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mNinePatchCallbackWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->access$000(Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;->access$000(Lcom/guochao/faceshow/aaspring/utils/NinePatchCache;)Landroid/util/LruCache;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->mUrl:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$NinePatchCallback;->onGetBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/NinePatchCache$FileTarget;->onResourceReady(Ljava/io/File;Lt0/f;)V

    return-void
.end method
