.class final Lio/reactivex/internal/operators/observable/m1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/m1;
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
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lbi/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:Ljava/util/concurrent/TimeUnit;

.field private final e:Lio/reactivex/s;


# direct methods
.method constructor <init>(Lio/reactivex/k;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$b;->a:Lio/reactivex/k;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/m1$b;->b:I

    .line 4
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/m1$b;->c:J

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/m1$b;->d:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p6, p0, Lio/reactivex/internal/operators/observable/m1$b;->e:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method public a()Lbi/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$b;->a:Lio/reactivex/k;

    iget v1, p0, Lio/reactivex/internal/operators/observable/m1$b;->b:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/m1$b;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/m1$b;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/m1$b;->e:Lio/reactivex/s;

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/k;->replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m1$b;->a()Lbi/a;

    move-result-object v0

    return-object v0
.end method
