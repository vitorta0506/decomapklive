.class final Lio/reactivex/internal/operators/observable/m1$n;
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
    name = "n"
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

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Lio/reactivex/s;


# direct methods
.method constructor <init>(Lio/reactivex/k;JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/s;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/m1$n;->a:Lio/reactivex/k;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/m1$n;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/m1$n;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/m1$n;->d:Lio/reactivex/s;

    return-void
.end method


# virtual methods
.method public a()Lbi/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbi/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/m1$n;->a:Lio/reactivex/k;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/m1$n;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/m1$n;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/m1$n;->d:Lio/reactivex/s;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/reactivex/k;->replay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)Lbi/a;

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

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/m1$n;->a()Lbi/a;

    move-result-object v0

    return-object v0
.end method
