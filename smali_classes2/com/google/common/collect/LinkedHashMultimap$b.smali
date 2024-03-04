.class final Lcom/google/common/collect/LinkedHashMultimap$b;
.super Lcom/google/common/collect/h4;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h4<",
        "TK;TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final c:I

.field d:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/LinkedHashMultimap$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/LinkedHashMultimap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/h4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iput p3, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    .line 3
    iput-object p4, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

.method static h()Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/google/common/collect/LinkedHashMultimap$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$b;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method public b()Lcom/google/common/collect/LinkedHashMultimap$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->h:Lcom/google/common/collect/LinkedHashMultimap$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$b;

    return-object v0
.end method

.method public c()Lcom/google/common/collect/LinkedHashMultimap$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method public d()Lcom/google/common/collect/LinkedHashMultimap$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/LinkedHashMultimap$d;

    return-object v0
.end method

.method e(Ljava/lang/Object;I)Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/h4;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/common/base/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method public g(Lcom/google/common/collect/LinkedHashMultimap$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$d<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$d;

    return-void
.end method

.method public i(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method

.method public j(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->h:Lcom/google/common/collect/LinkedHashMultimap$b;

    return-void
.end method
