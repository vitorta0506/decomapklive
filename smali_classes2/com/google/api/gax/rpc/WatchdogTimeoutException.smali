.class public Lcom/google/api/gax/rpc/WatchdogTimeoutException;
.super Lcom/google/api/gax/rpc/ApiException;
.source "SourceFile"


# static fields
.field public static final LOCAL_ABORTED_STATUS_CODE:Lcom/google/api/gax/rpc/StatusCode;

.field private static final serialVersionUID:J = -0xaca1b0d6aa346e6L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/api/gax/rpc/WatchdogTimeoutException$a;

    invoke-direct {v0}, Lcom/google/api/gax/rpc/WatchdogTimeoutException$a;-><init>()V

    sput-object v0, Lcom/google/api/gax/rpc/WatchdogTimeoutException;->LOCAL_ABORTED_STATUS_CODE:Lcom/google/api/gax/rpc/StatusCode;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Lcom/google/api/gax/rpc/WatchdogTimeoutException;->LOCAL_ABORTED_STATUS_CODE:Lcom/google/api/gax/rpc/StatusCode;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/google/api/gax/rpc/ApiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-void
.end method
