.class Lm5/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm5/u;->c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/l<",
        "TRequestT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/g;

.field final synthetic b:Lm5/u;


# direct methods
.method constructor <init>(Lm5/u;Lio/grpc/g;)V
    .locals 0

    iput-object p1, p0, Lm5/u$a;->b:Lm5/u;

    iput-object p2, p0, Lm5/u$a;->a:Lio/grpc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lm5/u$a;->a:Lio/grpc/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lio/grpc/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lm5/u$a;->a:Lio/grpc/g;

    invoke-virtual {v0}, Lio/grpc/g;->b()V

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;)V"
        }
    .end annotation

    iget-object v0, p0, Lm5/u$a;->a:Lio/grpc/g;

    invoke-virtual {v0, p1}, Lio/grpc/g;->d(Ljava/lang/Object;)V

    return-void
.end method
