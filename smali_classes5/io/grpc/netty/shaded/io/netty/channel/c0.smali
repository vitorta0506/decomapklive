.class public Lio/grpc/netty/shaded/io/netty/channel/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/f;


# static fields
.field private static final l:Lio/grpc/netty/shaded/io/netty/channel/r0;

.field private static final m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/channel/c0;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/channel/c0;",
            "Lio/grpc/netty/shaded/io/netty/channel/f1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lio/grpc/netty/shaded/io/netty/channel/e;

.field private volatile b:Lkg/k;

.field private volatile c:Lio/grpc/netty/shaded/io/netty/channel/v0;

.field private volatile d:Lio/grpc/netty/shaded/io/netty/channel/r0;

.field private volatile e:I

.field private volatile f:I

.field private volatile g:I

.field private volatile h:I

.field private volatile i:Z

.field private volatile j:Lio/grpc/netty/shaded/io/netty/channel/f1;

.field private volatile k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/c0;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/h0;->b:Lio/grpc/netty/shaded/io/netty/channel/r0;

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/c0;->l:Lio/grpc/netty/shaded/io/netty/channel/r0;

    const-string v1, "h"

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/c0;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/f1;

    const-string v2, "j"

    .line 4
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/c0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/d;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/d;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/c0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/v0;)V

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/v0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lkg/k;->a:Lkg/k;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->b:Lkg/k;

    .line 4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/c0;->l:Lio/grpc/netty/shaded/io/netty/channel/r0;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->d:Lio/grpc/netty/shaded/io/netty/channel/r0;

    const/16 v0, 0x7530

    .line 5
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->e:I

    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->f:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->g:I

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->h:I

    .line 9
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->i:Z

    .line 10
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/f1;->c:Lio/grpc/netty/shaded/io/netty/channel/f1;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->j:Lio/grpc/netty/shaded/io/netty/channel/f1;

    .line 11
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->k:Z

    .line 12
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->R()Lio/grpc/netty/shaded/io/netty/channel/q;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->B(Lio/grpc/netty/shaded/io/netty/channel/v0;Lio/grpc/netty/shaded/io/netty/channel/q;)V

    .line 13
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-void
.end method

.method private B(Lio/grpc/netty/shaded/io/netty/channel/v0;Lio/grpc/netty/shaded/io/netty/channel/q;)V
    .locals 1

    const-string v0, "allocator"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "metadata"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/q0;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/q0;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/q;->a()I

    move-result p2

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/q0;->b(I)Lio/grpc/netty/shaded/io/netty/channel/q0;

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    return-void
.end method

.method private q()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->k:Z

    return v0
.end method

.method private z(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->k:Z

    return-object p0
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/v0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->c:Lio/grpc/netty/shaded/io/netty/channel/v0;

    return-object p0
.end method

.method public C(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 5

    const-string v0, "writeBufferHighWaterMark"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->j:Lio/grpc/netty/shaded/io/netty/channel/f1;

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->b()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/c0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/f1;

    .line 5
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lio/grpc/netty/shaded/io/netty/channel/f1;-><init>(IIZ)V

    .line 6
    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public D(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 5

    const-string v0, "writeBufferLowWaterMark"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->j:Lio/grpc/netty/shaded/io/netty/channel/f1;

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->a()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/c0;->n:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/f1;

    .line 5
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->a()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/f1;-><init>(IIZ)V

    .line 6
    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    const-string v0, "writeBufferWaterMark"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/f1;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->j:Lio/grpc/netty/shaded/io/netty/channel/f1;

    return-object p0
.end method

.method public F(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    const-string v0, "writeSpinCount"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2
    :cond_0
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->f:I

    return-object p0
.end method

.method protected G(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/r;

    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/r;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public a()Lkg/k;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->b:Lkg/k;

    return-object v0
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "option"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->i:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->j:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->o()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->l:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->f:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->a()Lkg/k;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->g:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->m()Lio/grpc/netty/shaded/io/netty/channel/v0;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->q:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->l()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->r:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_6

    .line 15
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->m:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_7

    .line 17
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->n:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_8

    .line 19
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 20
    :cond_8
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->o:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_9

    .line 21
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->r()Lio/grpc/netty/shaded/io/netty/channel/f1;

    move-result-object p1

    return-object p1

    .line 22
    :cond_9
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->h:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->j()Lio/grpc/netty/shaded/io/netty/channel/r0;

    move-result-object p1

    return-object p1

    .line 24
    :cond_a
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->J:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_b

    .line 25
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->q()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 26
    :cond_b
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->k:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_c

    .line 27
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->j:Lio/grpc/netty/shaded/io/netty/channel/f1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->b()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->j:Lio/grpc/netty/shaded/io/netty/channel/f1;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/f1;->a()I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->i:Z

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->f:I

    return v0
.end method

.method public j()Lio/grpc/netty/shaded/io/netty/channel/r0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->d:Lio/grpc/netty/shaded/io/netty/channel/r0;

    return-object v0
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->G(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->i:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_0

    .line 3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->v(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto/16 :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->j:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_1

    .line 5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->w(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->l:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_2

    .line 7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->F(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto/16 :goto_0

    .line 8
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->f:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_3

    .line 9
    check-cast p2, Lkg/k;

    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto/16 :goto_0

    .line 10
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->g:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_4

    .line 11
    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/v0;

    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->A(Lio/grpc/netty/shaded/io/netty/channel/v0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto/16 :goto_0

    .line 12
    :cond_4
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->q:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_5

    .line 13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto :goto_0

    .line 14
    :cond_5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->r:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_6

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto :goto_0

    .line 16
    :cond_6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->m:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_7

    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->C(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto :goto_0

    .line 18
    :cond_7
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->n:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_8

    .line 19
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->D(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto :goto_0

    .line 20
    :cond_8
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->o:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_9

    .line 21
    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/f1;

    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->E(Lio/grpc/netty/shaded/io/netty/channel/f1;)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto :goto_0

    .line 22
    :cond_9
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->h:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_a

    .line 23
    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/r0;

    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto :goto_0

    .line 24
    :cond_a
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->J:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_b

    .line 25
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->z(Z)Lio/grpc/netty/shaded/io/netty/channel/f;

    goto :goto_0

    .line 26
    :cond_b
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/r;->k:Lio/grpc/netty/shaded/io/netty/channel/r;

    if-ne p1, v0, :cond_c

    .line 27
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/c0;->x(I)Lio/grpc/netty/shaded/io/netty/channel/f;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public m()Lio/grpc/netty/shaded/io/netty/channel/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/netty/shaded/io/netty/channel/v0;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->c:Lio/grpc/netty/shaded/io/netty/channel/v0;

    return-object v0
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->m()Lio/grpc/netty/shaded/io/netty/channel/v0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/q0;

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/q0;->c()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->g:I

    return v0
.end method

.method public r()Lio/grpc/netty/shaded/io/netty/channel/f1;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->j:Lio/grpc/netty/shaded/io/netty/channel/f1;

    return-object v0
.end method

.method public s(Lkg/k;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkg/k;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->b:Lkg/k;

    return-object p0
.end method

.method public t(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->i:Z

    return-object p0
.end method

.method public u(Z)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/c0;->m:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->a:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->read()Lio/grpc/netty/shaded/io/netty/channel/e;

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->n()V

    :cond_2
    :goto_1
    return-object p0
.end method

.method public v(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    const-string v0, "connectTimeoutMillis"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->e:I

    return-object p0
.end method

.method public w(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->m()Lio/grpc/netty/shaded/io/netty/channel/v0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/q0;

    .line 2
    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/q0;->b(I)Lio/grpc/netty/shaded/io/netty/channel/q0;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public x(I)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    const-string v0, "maxMessagesPerWrite"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->g:I

    return-object p0
.end method

.method public y(Lio/grpc/netty/shaded/io/netty/channel/r0;)Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    const-string v0, "estimator"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/r0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/c0;->d:Lio/grpc/netty/shaded/io/netty/channel/r0;

    return-object p0
.end method
