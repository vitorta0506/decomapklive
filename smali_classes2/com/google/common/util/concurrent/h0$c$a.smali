.class final Lcom/google/common/util/concurrent/h0$c$a;
.super Lcom/google/common/util/concurrent/w$a;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/f0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h0$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/w$a<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/f0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/d0;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/d0<",
            "TV;>;",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/w$a;-><init>(Lcom/google/common/util/concurrent/d0;)V

    .line 2
    iput-object p2, p0, Lcom/google/common/util/concurrent/h0$c$a;->b:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public A0(Ljava/util/concurrent/Delayed;)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/h0$c$a;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public cancel(Z)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/v;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/common/util/concurrent/h0$c$a;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/h0$c$a;->A0(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/h0$c$a;->b:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
