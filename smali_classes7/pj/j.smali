.class public abstract Lpj/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lpj/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lpj/i;
.end method

.method public declared-synchronized b()Lpj/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lpj/j;->a:Lpj/i;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lpj/j;->a()Lpj/i;

    move-result-object v0

    iput-object v0, p0, Lpj/j;->a:Lpj/i;

    :cond_0
    iget-object v0, p0, Lpj/j;->a:Lpj/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
