.class Leh/k1$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/k1$b;->a(Lio/grpc/MethodDescriptor;Lio/grpc/c;Lio/grpc/d;)Lio/grpc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/w<",
        "Lio/grpc/g<",
        "TReqT;TRespT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/d;

.field final synthetic b:Lio/grpc/MethodDescriptor;

.field final synthetic c:Lio/grpc/c;

.field final synthetic d:Leh/k1$b;


# direct methods
.method constructor <init>(Leh/k1$b;Lio/grpc/d;Lio/grpc/MethodDescriptor;Lio/grpc/c;)V
    .locals 0

    iput-object p1, p0, Leh/k1$b$a;->d:Leh/k1$b;

    iput-object p2, p0, Leh/k1$b$a;->a:Lio/grpc/d;

    iput-object p3, p0, Leh/k1$b$a;->b:Lio/grpc/MethodDescriptor;

    iput-object p4, p0, Leh/k1$b$a;->c:Lio/grpc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/g<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Leh/k1$b$a;->a:Lio/grpc/d;

    iget-object v1, p0, Leh/k1$b$a;->b:Lio/grpc/MethodDescriptor;

    iget-object v2, p0, Leh/k1$b$a;->c:Lio/grpc/c;

    invoke-virtual {v0, v1, v2}, Lio/grpc/d;->i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leh/k1$b$a;->a()Lio/grpc/g;

    move-result-object v0

    return-object v0
.end method
