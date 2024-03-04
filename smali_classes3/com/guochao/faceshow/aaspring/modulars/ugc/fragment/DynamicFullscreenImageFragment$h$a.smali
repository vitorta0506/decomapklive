.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->onNext(Lte/a;)V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

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

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ls0/c;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    const v0, 0x7f1207b8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->showToast(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->j:Z

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V
    .locals 0
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
    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;)V

    invoke-virtual {p1, p2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;)V

    .line 3
    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h$a;->onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V

    return-void
.end method
