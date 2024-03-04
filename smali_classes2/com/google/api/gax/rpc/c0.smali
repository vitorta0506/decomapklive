.class Lcom/google/api/gax/rpc/c0;
.super Lcom/google/api/gax/rpc/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/k0<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/gax/rpc/a;

.field private final b:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private final c:Lo5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo5/f<",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/a;Lcom/google/api/gax/rpc/k0;Lo5/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/a;",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;",
            "Lo5/f<",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/k0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/a;

    iput-object p1, p0, Lcom/google/api/gax/rpc/c0;->a:Lcom/google/api/gax/rpc/a;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/k0;

    iput-object p1, p0, Lcom/google/api/gax/rpc/c0;->b:Lcom/google/api/gax/rpc/k0;

    .line 4
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo5/f;

    iput-object p1, p0, Lcom/google/api/gax/rpc/c0;->c:Lo5/f;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/api/gax/rpc/c0;->b:Lcom/google/api/gax/rpc/k0;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "retrying(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
