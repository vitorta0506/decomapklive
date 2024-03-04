.class public final Lcom/google/api/gax/rpc/v;
.super Lcom/google/api/gax/rpc/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        "Paged",
        "ListResponseT:Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/j0<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/api/gax/rpc/y;
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
.method private constructor <init>(Lcom/google/api/gax/rpc/v$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/v$b<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/j0;-><init>(Lcom/google/api/gax/rpc/j0$a;)V

    .line 3
    invoke-static {p1}, Lcom/google/api/gax/rpc/v$b;->h(Lcom/google/api/gax/rpc/v$b;)Lcom/google/api/gax/rpc/y;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/v;->c:Lcom/google/api/gax/rpc/y;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/gax/rpc/v$b;Lcom/google/api/gax/rpc/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/v;-><init>(Lcom/google/api/gax/rpc/v$b;)V

    return-void
.end method

.method static synthetic f(Lcom/google/api/gax/rpc/v;)Lcom/google/api/gax/rpc/y;
    .locals 0

    iget-object p0, p0, Lcom/google/api/gax/rpc/v;->c:Lcom/google/api/gax/rpc/y;

    return-object p0
.end method

.method public static h(Lcom/google/api/gax/rpc/y;)Lcom/google/api/gax/rpc/v$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            "Paged",
            "ListResponseT:Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/gax/rpc/y<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;)",
            "Lcom/google/api/gax/rpc/v$b<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/v$b;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/v$b;-><init>(Lcom/google/api/gax/rpc/y;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic e()Lcom/google/api/gax/rpc/j0$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/api/gax/rpc/v;->i()Lcom/google/api/gax/rpc/v$b;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/google/api/gax/rpc/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/y<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/v;->c:Lcom/google/api/gax/rpc/y;

    return-object v0
.end method

.method public final i()Lcom/google/api/gax/rpc/v$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/v$b<",
            "TRequestT;TResponseT;TPaged",
            "ListResponseT;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/v$b;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/v$b;-><init>(Lcom/google/api/gax/rpc/v;)V

    return-object v0
.end method
