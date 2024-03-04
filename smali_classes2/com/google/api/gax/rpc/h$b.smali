.class Lcom/google/api/gax/rpc/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gax/rpc/h;->b(Lcom/google/api/gax/rpc/d;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/api/gax/rpc/d<",
        "TRequestT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/gax/rpc/l;

.field final synthetic b:Lcom/google/api/gax/rpc/h;


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/h;Lcom/google/api/gax/rpc/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/h$b;->b:Lcom/google/api/gax/rpc/h;

    iput-object p2, p0, Lcom/google/api/gax/rpc/h$b;->a:Lcom/google/api/gax/rpc/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/h$b;->a:Lcom/google/api/gax/rpc/l;

    invoke-interface {v0}, Lcom/google/api/gax/rpc/l;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/h$b;->a:Lcom/google/api/gax/rpc/l;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/l;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/h$b;->a:Lcom/google/api/gax/rpc/l;

    invoke-interface {v0, p1}, Lcom/google/api/gax/rpc/l;->c(Ljava/lang/Object;)V

    return-void
.end method
