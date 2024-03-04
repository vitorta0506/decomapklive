.class final Lcom/google/api/gax/rpc/WatchdogTimeoutException$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/StatusCode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/WatchdogTimeoutException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Lcom/google/api/gax/rpc/StatusCode$Code;
    .locals 1

    sget-object v0, Lcom/google/api/gax/rpc/StatusCode$Code;->ABORTED:Lcom/google/api/gax/rpc/StatusCode$Code;

    return-object v0
.end method
