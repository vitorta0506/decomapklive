.class final Lm5/x;
.super Lcom/google/api/gax/rpc/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/h<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/gax/rpc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/h<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Lm5/o;


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/h;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/h<",
            "TRequestT;TResponseT;>;",
            "Ljava/util/Set<",
            "Lcom/google/api/gax/rpc/StatusCode$Code;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/h;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/x;->a:Lcom/google/api/gax/rpc/h;

    .line 3
    new-instance p1, Lm5/o;

    invoke-direct {p1, p2}, Lm5/o;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lm5/x;->b:Lm5/o;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;
    .locals 3
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

    iget-object v0, p0, Lm5/x;->a:Lcom/google/api/gax/rpc/h;

    new-instance v1, Lm5/m;

    iget-object v2, p0, Lm5/x;->b:Lm5/o;

    invoke-direct {v1, p1, v2}, Lm5/m;-><init>(Lcom/google/api/gax/rpc/b0;Lm5/o;)V

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/api/gax/rpc/h;->c(Lcom/google/api/gax/rpc/b0;Lcom/google/api/gax/rpc/m;Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/l;

    move-result-object p1

    return-object p1
.end method
