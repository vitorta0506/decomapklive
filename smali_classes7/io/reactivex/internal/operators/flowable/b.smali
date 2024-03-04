.class public final Lio/reactivex/internal/operators/flowable/b;
.super Lio/reactivex/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/e;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b;->b:Lio/reactivex/k;

    return-void
.end method


# virtual methods
.method protected h(Lil/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b;->b:Lio/reactivex/k;

    new-instance v1, Lio/reactivex/internal/operators/flowable/b$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/flowable/b$a;-><init>(Lil/b;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
