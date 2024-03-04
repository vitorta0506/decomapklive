.class final Lio/reactivex/internal/operators/observable/r2$m;
.super Lio/reactivex/internal/operators/observable/r2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/r2$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final c:Lio/reactivex/s;

.field final d:J

.field final e:Ljava/util/concurrent/TimeUnit;

.field final f:I


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/operators/observable/r2$a;-><init>()V

    .line 2
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/r2$m;->c:Lio/reactivex/s;

    .line 3
    iput p1, p0, Lio/reactivex/internal/operators/observable/r2$m;->f:I

    .line 4
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/r2$m;->d:J

    .line 5
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/r2$m;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Ldi/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r2$m;->c:Lio/reactivex/s;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/r2$m;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/s;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/r2$m;->e:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Ldi/b;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method c()Lio/reactivex/internal/operators/observable/r2$f;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2$m;->c:Lio/reactivex/s;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r2$m;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/s;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/r2$m;->d:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/r2$f;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/r2$f;

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, v2, Lio/reactivex/internal/operators/observable/r2$f;->a:Ljava/lang/Object;

    check-cast v4, Ldi/b;

    .line 5
    invoke-virtual {v4}, Ldi/b;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ldi/b;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v4}, Ldi/b;->a()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/r2$f;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3
.end method

.method e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ldi/b;

    invoke-virtual {p1}, Ldi/b;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method k()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2$m;->c:Lio/reactivex/s;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r2$m;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/s;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/r2$m;->d:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/r2$f;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/r2$f;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_1

    .line 4
    iget v5, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    iget v6, p0, Lio/reactivex/internal/operators/observable/r2$m;->f:I

    const/4 v7, 0x1

    if-le v5, v6, :cond_0

    if-le v5, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, -0x1

    .line 5
    iput v5, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/r2$f;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v5, v2, Lio/reactivex/internal/operators/observable/r2$f;->a:Ljava/lang/Object;

    check-cast v5, Ldi/b;

    .line 8
    invoke-virtual {v5}, Ldi/b;->a()J

    move-result-wide v5

    cmp-long v8, v5, v0

    if-gtz v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 9
    iget v3, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    sub-int/2addr v3, v7

    iput v3, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/r2$f;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/r2$a;->i(Lio/reactivex/internal/operators/observable/r2$f;)V

    :cond_2
    return-void
.end method

.method l()V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/r2$m;->c:Lio/reactivex/s;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/r2$m;->e:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/s;->c(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/r2$m;->d:J

    sub-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/observable/r2$f;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/r2$f;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_0

    .line 4
    iget v5, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 5
    iget-object v5, v2, Lio/reactivex/internal/operators/observable/r2$f;->a:Ljava/lang/Object;

    check-cast v5, Ldi/b;

    .line 6
    invoke-virtual {v5}, Ldi/b;->a()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 7
    iget v3, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    sub-int/2addr v3, v6

    iput v3, p0, Lio/reactivex/internal/operators/observable/r2$a;->b:I

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/observable/r2$f;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 9
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/r2$a;->i(Lio/reactivex/internal/operators/observable/r2$f;)V

    :cond_1
    return-void
.end method
