.class final Lbh/a$d;
.super Ldh/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:Lio/grpc/n0$h;

.field final b:Lbh/a$a;


# direct methods
.method constructor <init>(Lio/grpc/n0$h;Lbh/a$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldh/c;-><init>()V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$h;

    iput-object p1, p0, Lbh/a$d;->a:Lio/grpc/n0$h;

    const-string p1, "hcState"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbh/a$a;

    iput-object p1, p0, Lbh/a$d;->b:Lbh/a$a;

    return-void
.end method


# virtual methods
.method public i(Lio/grpc/n0$j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbh/a$d;->b:Lbh/a$a;

    invoke-virtual {v0, p1}, Lbh/a$a;->t(Lio/grpc/n0$j;)V

    .line 2
    invoke-virtual {p0}, Lbh/a$d;->k()Lio/grpc/n0$h;

    move-result-object p1

    iget-object v0, p0, Lbh/a$d;->b:Lbh/a$a;

    invoke-virtual {p1, v0}, Lio/grpc/n0$h;->i(Lio/grpc/n0$j;)V

    return-void
.end method

.method protected k()Lio/grpc/n0$h;
    .locals 1

    iget-object v0, p0, Lbh/a$d;->a:Lio/grpc/n0$h;

    return-object v0
.end method
