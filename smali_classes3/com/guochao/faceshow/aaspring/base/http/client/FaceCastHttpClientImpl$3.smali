.class Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field final synthetic a:Lio/reactivex/r;

.field final synthetic b:Landroidx/lifecycle/LifecycleOwner;


# virtual methods
.method public cancel()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$3;->a:Lio/reactivex/r;

    instance-of v1, v0, Lth/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$3;->a:Lio/reactivex/r;

    check-cast v0, Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$3;->b:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
