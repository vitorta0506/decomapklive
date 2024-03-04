.class public final Lio/reactivex/internal/operators/maybe/a;
.super Lio/reactivex/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/a$a;
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
.field final b:Lio/reactivex/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/e;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/a;->b:Lio/reactivex/i;

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

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/a;->b:Lio/reactivex/i;

    new-instance v1, Lio/reactivex/internal/operators/maybe/a$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/maybe/a$a;-><init>(Lil/b;)V

    invoke-interface {v0, v1}, Lio/reactivex/i;->a(Lio/reactivex/h;)V

    return-void
.end method
