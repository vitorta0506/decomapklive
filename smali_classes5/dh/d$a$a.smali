.class Ldh/d$a$a;
.super Lio/grpc/n0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldh/d$a;->b(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/Status;

.field final synthetic b:Ldh/d$a;


# direct methods
.method constructor <init>(Ldh/d$a;Lio/grpc/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldh/d$a$a;->b:Ldh/d$a;

    iput-object p2, p0, Ldh/d$a$a;->a:Lio/grpc/Status;

    invoke-direct {p0}, Lio/grpc/n0$i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/n0$e;
    .locals 0

    iget-object p1, p0, Ldh/d$a$a;->a:Lio/grpc/Status;

    invoke-static {p1}, Lio/grpc/n0$e;->f(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-class v0, Ldh/d$a$a;

    invoke-static {v0}, Lcom/google/common/base/j;->b(Ljava/lang/Class;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Ldh/d$a$a;->a:Lio/grpc/Status;

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
