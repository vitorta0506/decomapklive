.class public Lcom/google/api/gax/rpc/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        "MetadataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;",
            "Ln5/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo5/h;

.field private c:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Ln5/b;",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private d:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Ln5/b;",
            "TMetadataT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/api/gax/rpc/s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/s<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/api/gax/rpc/s;

    iget-object v1, p0, Lcom/google/api/gax/rpc/s$b;->a:Lcom/google/api/gax/rpc/j0;

    iget-object v2, p0, Lcom/google/api/gax/rpc/s$b;->b:Lo5/h;

    iget-object v3, p0, Lcom/google/api/gax/rpc/s$b;->c:Lk5/b;

    iget-object v4, p0, Lcom/google/api/gax/rpc/s$b;->d:Lk5/b;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/api/gax/rpc/s;-><init>(Lcom/google/api/gax/rpc/j0;Lo5/h;Lk5/b;Lk5/b;Lcom/google/api/gax/rpc/s$a;)V

    return-object v6
.end method

.method public b(Lcom/google/api/gax/rpc/j0;)Lcom/google/api/gax/rpc/s$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;",
            "Ln5/b;",
            ">;)",
            "Lcom/google/api/gax/rpc/s$b<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/gax/rpc/s$b;->a:Lcom/google/api/gax/rpc/j0;

    return-object p0
.end method

.method public c(Lk5/b;)Lcom/google/api/gax/rpc/s$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/b<",
            "Ln5/b;",
            "TMetadataT;>;)",
            "Lcom/google/api/gax/rpc/s$b<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/gax/rpc/s$b;->d:Lk5/b;

    return-object p0
.end method

.method public d(Lo5/h;)Lcom/google/api/gax/rpc/s$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo5/h;",
            ")",
            "Lcom/google/api/gax/rpc/s$b<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/gax/rpc/s$b;->b:Lo5/h;

    return-object p0
.end method

.method public e(Lk5/b;)Lcom/google/api/gax/rpc/s$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk5/b<",
            "Ln5/b;",
            "TResponseT;>;)",
            "Lcom/google/api/gax/rpc/s$b<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/api/gax/rpc/s$b;->c:Lk5/b;

    return-object p0
.end method
