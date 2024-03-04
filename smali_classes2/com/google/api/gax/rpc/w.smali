.class public Lcom/google/api/gax/rpc/w;
.super Lcom/google/api/gax/rpc/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        "Paged",
        "ListResponseT:Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/k0<",
        "TRequestT;TPaged",
        "ListResponseT;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/api/gax/rpc/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/y<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/y<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/k0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/k0;

    iput-object p1, p0, Lcom/google/api/gax/rpc/w;->a:Lcom/google/api/gax/rpc/k0;

    .line 3
    iput-object p2, p0, Lcom/google/api/gax/rpc/w;->b:Lcom/google/api/gax/rpc/y;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/api/gax/rpc/w;->a:Lcom/google/api/gax/rpc/k0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "paged(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
