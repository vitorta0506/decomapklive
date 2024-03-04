.class public La6/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "La6/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:La6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La6/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La6/d$b;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La6/d$b;->b:Ljava/util/Set;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, La6/d$b;->c:Ljava/util/Set;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, La6/d$b;->d:I

    .line 7
    iput v1, p0, La6/d$b;->e:I

    .line 8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, La6/d$b;->g:Ljava/util/Set;

    const-string v2, "Null interface"

    .line 9
    invoke-static {p1, v2}, La6/z;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v0, p2, v1

    .line 12
    invoke-static {v0, v2}, La6/z;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, La6/d$b;->b:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;La6/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, La6/d$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic a(La6/d$b;)La6/d$b;
    .locals 0

    invoke-direct {p0}, La6/d$b;->g()La6/d$b;

    move-result-object p0

    return-object p0
.end method

.method private g()La6/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput v0, p0, La6/d$b;->e:I

    return-object p0
.end method

.method private h(I)La6/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, La6/d$b;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, La6/z;->d(ZLjava/lang/String;)V

    .line 2
    iput p1, p0, La6/d$b;->d:I

    return-object p0
.end method

.method private i(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La6/d$b;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    .line 3
    invoke-static {p1, v0}, La6/z;->a(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(La6/r;)La6/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/r;",
            ")",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null dependency"

    .line 1
    invoke-static {p1, v0}, La6/z;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, La6/r;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, La6/d$b;->i(Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, La6/d$b;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()La6/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La6/d$b;->h(I)La6/d$b;

    move-result-object v0

    return-object v0
.end method

.method public d()La6/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La6/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La6/d$b;->f:La6/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, La6/z;->d(ZLjava/lang/String;)V

    .line 2
    new-instance v0, La6/d;

    iget-object v3, p0, La6/d$b;->a:Ljava/lang/String;

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, La6/d$b;->b:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/HashSet;

    iget-object v1, p0, La6/d$b;->c:Ljava/util/Set;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v6, p0, La6/d$b;->d:I

    iget v7, p0, La6/d$b;->e:I

    iget-object v8, p0, La6/d$b;->f:La6/h;

    iget-object v9, p0, La6/d$b;->g:Ljava/util/Set;

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, La6/d;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILa6/h;Ljava/util/Set;La6/d$a;)V

    return-object v0
.end method

.method public e()La6/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, La6/d$b;->h(I)La6/d$b;

    move-result-object v0

    return-object v0
.end method

.method public f(La6/h;)La6/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/h<",
            "TT;>;)",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Null factory"

    invoke-static {p1, v0}, La6/z;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La6/h;

    iput-object p1, p0, La6/d$b;->f:La6/h;

    return-object p0
.end method
