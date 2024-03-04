.class Lm5/i0;
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
.field private final a:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/api/gax/rpc/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/a0<",
            "TRequestT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/rpc/z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/rpc/z<",
            "TRequestT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/k0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/k0;

    iput-object p1, p0, Lm5/i0;->a:Lcom/google/api/gax/rpc/k0;

    .line 3
    new-instance p1, Lcom/google/api/gax/rpc/a0;

    .line 4
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/api/gax/rpc/z;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/api/gax/rpc/a0;-><init>(Lcom/google/api/gax/rpc/z;Z)V

    iput-object p1, p0, Lm5/i0;->b:Lcom/google/api/gax/rpc/a0;

    return-void
.end method
