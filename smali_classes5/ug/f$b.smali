.class final Lug/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lug/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:[Lug/j;


# direct methods
.method constructor <init>([Lug/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lug/f$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p1, p0, Lug/f$b;->b:[Lug/j;

    return-void
.end method


# virtual methods
.method public next()Lug/j;
    .locals 3

    iget-object v0, p0, Lug/f$b;->b:[Lug/j;

    iget-object v1, p0, Lug/f$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v2, p0, Lug/f$b;->b:[Lug/j;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method
