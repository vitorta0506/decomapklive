.class public final Lcom/google/api/gax/rpc/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/s$b;
    }
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
.field private final a:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;",
            "Ln5/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo5/h;

.field private final c:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Ln5/b;",
            "TResponseT;>;"
        }
    .end annotation
.end field

.field private final d:Lk5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/b<",
            "Ln5/b;",
            "TMetadataT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/api/gax/rpc/j0;Lo5/h;Lk5/b;Lk5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;",
            "Ln5/b;",
            ">;",
            "Lo5/h;",
            "Lk5/b<",
            "Ln5/b;",
            "TResponseT;>;",
            "Lk5/b<",
            "Ln5/b;",
            "TMetadataT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/j0;

    iput-object p1, p0, Lcom/google/api/gax/rpc/s;->a:Lcom/google/api/gax/rpc/j0;

    .line 4
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo5/h;

    iput-object p1, p0, Lcom/google/api/gax/rpc/s;->b:Lo5/h;

    .line 5
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk5/b;

    iput-object p1, p0, Lcom/google/api/gax/rpc/s;->c:Lk5/b;

    .line 6
    iput-object p4, p0, Lcom/google/api/gax/rpc/s;->d:Lk5/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/gax/rpc/j0;Lo5/h;Lk5/b;Lk5/b;Lcom/google/api/gax/rpc/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/gax/rpc/s;-><init>(Lcom/google/api/gax/rpc/j0;Lo5/h;Lk5/b;Lk5/b;)V

    return-void
.end method

.method public static e()Lcom/google/api/gax/rpc/s$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            "MetadataT:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/api/gax/rpc/s$b<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/s$b;

    invoke-direct {v0}, Lcom/google/api/gax/rpc/s$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "TRequestT;",
            "Ln5/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/s;->a:Lcom/google/api/gax/rpc/j0;

    return-object v0
.end method

.method public final b()Lk5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/b<",
            "Ln5/b;",
            "TMetadataT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/s;->d:Lk5/b;

    return-object v0
.end method

.method public final c()Lo5/h;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/s;->b:Lo5/h;

    return-object v0
.end method

.method public final d()Lk5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk5/b<",
            "Ln5/b;",
            "TResponseT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/s;->c:Lk5/b;

    return-object v0
.end method
