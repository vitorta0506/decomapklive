.class public Lcom/google/api/gax/rpc/UnknownException;
.super Lcom/google/api/gax/rpc/ApiException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/gax/rpc/ApiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/gax/rpc/ApiException;-><init>(Ljava/lang/Throwable;Lcom/google/api/gax/rpc/StatusCode;Z)V

    return-void
.end method
