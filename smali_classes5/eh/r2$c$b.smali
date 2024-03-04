.class Leh/r2$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/r2$c;->a(Lio/grpc/n0$f;)Lio/grpc/d0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Leh/r2$c;


# direct methods
.method constructor <init>(Leh/r2$c;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Leh/r2$c$b;->c:Leh/r2$c;

    iput-object p2, p0, Leh/r2$c$b;->a:Ljava/lang/String;

    iput-wide p3, p0, Leh/r2$c$b;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/c;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Leh/r2;->u:Lio/grpc/c$a;

    iget-object v1, p0, Leh/r2$c$b;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, v0, v1}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object p2

    sget-object v0, Leh/r2;->v:Lio/grpc/c$a;

    iget-wide v1, p0, Leh/r2$c$b;->b:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object p2

    .line 4
    new-instance v0, Leh/r2$c$b$a;

    .line 5
    invoke-virtual {p3, p1, p2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Leh/r2$c$b$a;-><init>(Leh/r2$c$b;Lio/grpc/g;)V

    return-object v0
.end method
