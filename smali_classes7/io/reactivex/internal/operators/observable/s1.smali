.class public final Lio/reactivex/internal/operators/observable/s1;
.super Lio/reactivex/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/s1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/p<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/p;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/p<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/t;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s1;->a:Lio/reactivex/p;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/s1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected e(Lio/reactivex/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s1;->a:Lio/reactivex/p;

    new-instance v1, Lio/reactivex/internal/operators/observable/s1$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/s1;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/observable/s1$a;-><init>(Lio/reactivex/u;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lio/reactivex/p;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
