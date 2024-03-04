.class public final Lcom/google/api/gax/batching/FlowController$MaxOutstandingRequestBytesReachedException;
.super Lcom/google/api/gax/batching/FlowController$FlowControlException;
.source "SourceFile"


# instance fields
.field private final currentMaxBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/api/gax/batching/FlowController$FlowControlException;-><init>(Lcom/google/api/gax/batching/a;)V

    .line 2
    iput-wide p1, p0, Lcom/google/api/gax/batching/FlowController$MaxOutstandingRequestBytesReachedException;->currentMaxBytes:J

    return-void
.end method


# virtual methods
.method public getCurrentMaxBatchBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/api/gax/batching/FlowController$MaxOutstandingRequestBytesReachedException;->currentMaxBytes:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-wide v1, p0, Lcom/google/api/gax/batching/FlowController$MaxOutstandingRequestBytesReachedException;->currentMaxBytes:J

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "The maximum number of batch bytes: %d have been reached."

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
