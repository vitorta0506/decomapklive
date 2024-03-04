.class public abstract Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/b;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/utils/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/b<",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
        "TT;>;>;",
        "Lcom/guochao/faceshow/aaspring/base/utils/a;"
    }
.end annotation


# instance fields
.field public mCancel:Z

.field mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRetry:I

.field private mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

.field private mRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCurrentRetry:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRetryCount:I

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCancel:Z

    return-void
.end method

.method public getRequest()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCurrentRetry:I

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->z()V

    :cond_0
    return-void
.end method

.method public onError(Lg7/a;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCancel:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-eqz v0, :cond_1

    invoke-static {}, Ln7/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRetryCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCurrentRetry:I

    if-ge v2, v0, :cond_1

    add-int/2addr v2, v1

    .line 5
    iput v2, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCurrentRetry:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->q()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f()Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->f()Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/callback/a;->recordError(Lg7/a;Ljava/lang/String;)V

    .line 11
    :cond_2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    return-void
.end method

.method public abstract onFailure(Lg7/a;)V
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
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
            "(TT;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mCancel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lg7/a;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg7/a;->f(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onError(Lg7/a;)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onError(Lg7/a;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onSuccess(Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    instance-of v0, p1, Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method public setRequest(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->mRetryCount:I

    return-void
.end method
