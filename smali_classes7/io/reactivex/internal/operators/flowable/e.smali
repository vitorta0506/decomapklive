.class public final Lio/reactivex/internal/operators/flowable/e;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:I

.field final d:Z

.field final e:Z

.field final f:Lvh/a;


# direct methods
.method public constructor <init>(Lio/reactivex/e;IZZLvh/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e<",
            "TT;>;IZZ",
            "Lvh/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/e;)V

    .line 2
    iput p2, p0, Lio/reactivex/internal/operators/flowable/e;->c:I

    .line 3
    iput-boolean p3, p0, Lio/reactivex/internal/operators/flowable/e;->d:Z

    .line 4
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/e;->e:Z

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/e;->f:Lvh/a;

    return-void
.end method


# virtual methods
.method protected h(Lil/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a;->b:Lio/reactivex/e;

    new-instance v7, Lio/reactivex/internal/operators/flowable/e$a;

    iget v3, p0, Lio/reactivex/internal/operators/flowable/e;->c:I

    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/e;->d:Z

    iget-boolean v5, p0, Lio/reactivex/internal/operators/flowable/e;->e:Z

    iget-object v6, p0, Lio/reactivex/internal/operators/flowable/e;->f:Lvh/a;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lio/reactivex/internal/operators/flowable/e$a;-><init>(Lil/b;IZZLvh/a;)V

    invoke-virtual {v0, v7}, Lio/reactivex/e;->g(Lio/reactivex/f;)V

    return-void
.end method
