.class public Lm7/b;
.super Lm7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lm7/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lm7/a;-><init>()V

    .line 2
    iput-object p1, p0, Lm7/b;->b:Landroidx/lifecycle/LifecycleOwner;

    .line 3
    iput-object p2, p0, Lm7/b;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    return-void
.end method


# virtual methods
.method public a(Lg7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm7/b;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;->onError(Lg7/a;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Lm7/a;->onComplete()V

    .line 2
    iget-object v0, p0, Lm7/b;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lm7/a;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lm7/b;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lm7/a;->onStart()V

    .line 2
    iget-object v0, p0, Lm7/b;->a:Lcom/guochao/faceshow/aaspring/base/http/callback/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/b;->onStart()V

    :cond_0
    return-void
.end method
