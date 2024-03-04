.class final Lio/reactivex/internal/operators/observable/v2$b;
.super Lio/reactivex/internal/operators/observable/v2$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/v2$c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x63165c33f8fff493L


# direct methods
.method constructor <init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lio/reactivex/internal/operators/observable/v2$c;-><init>(Lio/reactivex/r;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V

    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/v2$c;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/v2$c;->d()V

    return-void
.end method
