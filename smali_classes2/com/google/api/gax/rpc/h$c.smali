.class Lcom/google/api/gax/rpc/h$c;
.super Lcom/google/api/gax/rpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gax/rpc/h;->e(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/h<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/gax/rpc/a;

.field final synthetic b:Lcom/google/api/gax/rpc/h;


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/h;Lcom/google/api/gax/rpc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/h$c;->b:Lcom/google/api/gax/rpc/h;

    iput-object p2, p0, Lcom/google/api/gax/rpc/h$c;->a:Lcom/google/api/gax/rpc/a;

    invoke-direct {p0}, Lcom/google/api/gax/rpc/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/b0<",
            "TResponseT;>;",
            "Lcom/google/api/gax/rpc/m<",
            "TRequestT;>;",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/l<",
            "TRequestT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/api/gax/rpc/h$c;->b:Lcom/google/api/gax/rpc/h;

    iget-object v1, p0, Lcom/google/api/gax/rpc/h$c;->a:Lcom/google/api/gax/rpc/a;

    .line 2
    invoke-interface {v1, p3}, Lcom/google/api/gax/rpc/a;->f(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/a;

    move-result-object p3

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/api/gax/rpc/h;->c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;

    move-result-object p1

    return-object p1
.end method
