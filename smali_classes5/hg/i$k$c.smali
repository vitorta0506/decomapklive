.class Lhg/i$k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg/i$k;->onCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhg/i$k;


# direct methods
.method constructor <init>(Lhg/i$k;)V
    .locals 0

    iput-object p1, p0, Lhg/i$k$c;->a:Lhg/i$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhg/i$k$c;->a:Lhg/i$k;

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "Stream to GRPCLB LoadBalancer was closed"

    .line 2
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lhg/i$k;->b(Lhg/i$k;Lio/grpc/Status;)V

    return-void
.end method
