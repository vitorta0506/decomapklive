.class public Ln7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/utils/a;


# instance fields
.field a:Lth/b;


# direct methods
.method public constructor <init>(Lio/reactivex/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lth/b;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lth/b;

    iput-object p1, p0, Ln7/a;->a:Lth/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/a;->a:Lth/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lth/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ln7/a;->a:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    :cond_0
    return-void
.end method
