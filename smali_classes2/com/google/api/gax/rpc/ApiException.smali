.class public Lcom/google/api/gax/rpc/ApiException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x3cb7874fd32dabacL


# instance fields
.field private final retryable:Z

.field private final statusCode:Lcom/google/api/gax/rpc/StatusCode;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/StatusCode;

    iput-object p1, p0, Lcom/google/api/gax/rpc/ApiException;->statusCode:Lcom/google/api/gax/rpc/StatusCode;

    .line 6
    iput-boolean p4, p0, Lcom/google/api/gax/rpc/ApiException;->retryable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/StatusCode;

    iput-object p1, p0, Lcom/google/api/gax/rpc/ApiException;->statusCode:Lcom/google/api/gax/rpc/StatusCode;

    .line 3
    iput-boolean p3, p0, Lcom/google/api/gax/rpc/ApiException;->retryable:Z

    return-void
.end method


# virtual methods
.method public getStatusCode()Lcom/google/api/gax/rpc/StatusCode;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiException;->statusCode:Lcom/google/api/gax/rpc/StatusCode;

    return-object v0
.end method

.method public isRetryable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/api/gax/rpc/ApiException;->retryable:Z

    return v0
.end method
