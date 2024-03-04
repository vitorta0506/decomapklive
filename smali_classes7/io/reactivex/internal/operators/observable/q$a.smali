.class final Lio/reactivex/internal/operators/observable/q$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lth/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5df4ba2ba2d80afaL


# instance fields
.field final a:Lio/reactivex/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/r<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/observable/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/q<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:Lio/reactivex/internal/operators/observable/q$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/q$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field d:I

.field e:J

.field volatile f:Z


# direct methods
.method constructor <init>(Lio/reactivex/r;Lio/reactivex/internal/operators/observable/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/r<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/observable/q<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q$a;->a:Lio/reactivex/r;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/q$a;->b:Lio/reactivex/internal/operators/observable/q;

    .line 4
    iget-object p1, p2, Lio/reactivex/internal/operators/observable/q;->f:Lio/reactivex/internal/operators/observable/q$b;

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q$a;->c:Lio/reactivex/internal/operators/observable/q$b;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/q$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/q$a;->f:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q$a;->b:Lio/reactivex/internal/operators/observable/q;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/q;->d(Lio/reactivex/internal/operators/observable/q$a;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/q$a;->f:Z

    return v0
.end method
