.class Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->cancel()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->cancel()V

    .line 4
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCompleted()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    iget-boolean v1, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c:Z

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->z:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->t:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->z:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->t:Ljava/lang/Runnable;

    iget v1, v1, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->r:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    :cond_0
    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$a;->a:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_0
    return-void
.end method
