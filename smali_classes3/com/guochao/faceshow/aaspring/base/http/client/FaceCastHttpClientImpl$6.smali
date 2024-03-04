.class Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->f(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/r;

.field final synthetic b:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Lio/reactivex/r;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;->c:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;->a:Lio/reactivex/r;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;->b:Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;->a:Lio/reactivex/r;

    instance-of v1, v0, Lth/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lth/b;

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;->a:Lio/reactivex/r;

    check-cast v0, Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$6;->b:Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
