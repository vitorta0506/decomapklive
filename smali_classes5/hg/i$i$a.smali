.class Lhg/i$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg/i$i;->a(Lio/grpc/s0;)Lio/grpc/n0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhg/i$i;


# direct methods
.method constructor <init>(Lhg/i$i;)V
    .locals 0

    iput-object p1, p0, Lhg/i$i$a;->a:Lhg/i$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhg/i$i$a;->a:Lhg/i$i;

    invoke-static {v0}, Lhg/i$i;->b(Lhg/i$i;)Lio/grpc/n0$h;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/n0$h;->g()V

    return-void
.end method
