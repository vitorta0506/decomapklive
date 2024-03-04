.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->onBindView(Landroid/view/View;Lcom/guochao/faceshow/aaspring/danmu/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/danmu/b;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;Lcom/guochao/faceshow/aaspring/danmu/b;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->a:Lcom/guochao/faceshow/aaspring/danmu/b;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p0}, Ls0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
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
            "Landroid/graphics/Bitmap;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->a:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/danmu/b;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->c:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->b:Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->a:Lcom/guochao/faceshow/aaspring/danmu/b;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/danmu/b;->l(ILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->a:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/danmu/b;->g()V

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
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a$b;->onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V

    return-void
.end method
