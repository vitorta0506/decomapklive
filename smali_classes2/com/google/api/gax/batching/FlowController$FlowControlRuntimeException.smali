.class public Lcom/google/api/gax/batching/FlowController$FlowControlRuntimeException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/api/gax/batching/FlowController$FlowControlException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fromFlowControlException(Lcom/google/api/gax/batching/FlowController$FlowControlException;)Lcom/google/api/gax/batching/FlowController$FlowControlRuntimeException;
    .locals 1

    new-instance v0, Lcom/google/api/gax/batching/FlowController$FlowControlRuntimeException;

    invoke-direct {v0, p0}, Lcom/google/api/gax/batching/FlowController$FlowControlRuntimeException;-><init>(Lcom/google/api/gax/batching/FlowController$FlowControlException;)V

    return-object v0
.end method
