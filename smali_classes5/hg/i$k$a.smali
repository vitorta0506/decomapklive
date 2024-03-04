.class Lhg/i$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg/i$k;->i(Lio/grpc/lb/v1/LoadBalanceResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/lb/v1/LoadBalanceResponse;

.field final synthetic b:Lhg/i$k;


# direct methods
.method constructor <init>(Lhg/i$k;Lio/grpc/lb/v1/LoadBalanceResponse;)V
    .locals 0

    iput-object p1, p0, Lhg/i$k$a;->b:Lhg/i$k;

    iput-object p2, p0, Lhg/i$k$a;->a:Lio/grpc/lb/v1/LoadBalanceResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhg/i$k$a;->b:Lhg/i$k;

    iget-object v1, p0, Lhg/i$k$a;->a:Lio/grpc/lb/v1/LoadBalanceResponse;

    invoke-static {v0, v1}, Lhg/i$k;->d(Lhg/i$k;Lio/grpc/lb/v1/LoadBalanceResponse;)V

    return-void
.end method
