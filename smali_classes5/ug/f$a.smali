.class final Lug/f$a;
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
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicLong;

.field private final b:[Lug/j;


# direct methods
.method constructor <init>([Lug/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lug/f$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lug/f$a;->b:[Lug/j;

    return-void
.end method


# virtual methods
.method public next()Lug/j;
    .locals 5

    iget-object v0, p0, Lug/f$a;->b:[Lug/j;

    iget-object v1, p0, Lug/f$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    iget-object v3, p0, Lug/f$a;->b:[Lug/j;

    array-length v3, v3

    int-to-long v3, v3

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    long-to-int v2, v1

    aget-object v0, v0, v2

    return-object v0
.end method
