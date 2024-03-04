.class Lcom/google/api/gax/rpc/u;
.super Lcom/google/api/gax/rpc/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        "MetadataT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/t<",
        "TRequestT;TResponseT;TMetadataT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;",
            "Ln5/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo5/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo5/f<",
            "Ln5/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/api/gax/rpc/r;

.field private final d:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Ln5/b;",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private final e:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Ln5/b;",
            "TMetadataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/k0;Lo5/f;Lcom/google/api/gax/rpc/r;Lcom/google/api/gax/rpc/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;",
            "Ln5/b;",
            ">;",
            "Lo5/f<",
            "Ln5/b;",
            ">;",
            "Lcom/google/api/gax/rpc/r;",
            "Lcom/google/api/gax/rpc/s<",
            "TRequestT;TResponseT;TMetadataT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/t;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/k0;

    iput-object p1, p0, Lcom/google/api/gax/rpc/u;->a:Lcom/google/api/gax/rpc/k0;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo5/f;

    iput-object p1, p0, Lcom/google/api/gax/rpc/u;->b:Lo5/f;

    .line 4
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/r;

    iput-object p1, p0, Lcom/google/api/gax/rpc/u;->c:Lcom/google/api/gax/rpc/r;

    .line 5
    invoke-virtual {p4}, Lcom/google/api/gax/rpc/s;->d()Lk5/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/u;->d:Lk5/b;

    .line 6
    invoke-virtual {p4}, Lcom/google/api/gax/rpc/s;->b()Lk5/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/u;->e:Lk5/b;

    return-void
.end method
