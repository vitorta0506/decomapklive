.class public final La6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/d$b;
    }
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
.field private final a:Ljava/lang/String;

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

.field private final d:I

.field private final e:I

.field private final f:La6/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La6/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILa6/h;Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;",
            "Ljava/util/Set<",
            "La6/r;",
            ">;II",
            "La6/h<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, La6/d;->a:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, La6/d;->b:Ljava/util/Set;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, La6/d;->c:Ljava/util/Set;

    .line 6
    iput p4, p0, La6/d;->d:I

    .line 7
    iput p5, p0, La6/d;->e:I

    .line 8
    iput-object p6, p0, La6/d;->f:La6/h;

    .line 9
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, La6/d;->g:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILa6/h;Ljava/util/Set;La6/d$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, La6/d;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILa6/h;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;La6/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, La6/d;->o(Ljava/lang/Object;La6/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;La6/e;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, La6/d;->p(Ljava/lang/Object;La6/e;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)La6/d$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La6/d$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, La6/d$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;La6/d$a;)V

    return-object v0
.end method

.method public static varargs d(Ljava/lang/Class;[Ljava/lang/Class;)La6/d$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, La6/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, La6/d$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;La6/d$a;)V

    return-object v0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/Class;)La6/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "La6/d<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, La6/d;->k(Ljava/lang/Class;)La6/d$b;

    move-result-object p1

    new-instance v0, La6/b;

    invoke-direct {v0, p0}, La6/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, La6/d$b;->f(La6/h;)La6/d$b;

    move-result-object p0

    invoke-virtual {p0}, La6/d$b;->d()La6/d;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/Class;)La6/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "La6/d$b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, La6/d;->c(Ljava/lang/Class;)La6/d$b;

    move-result-object p0

    invoke-static {p0}, La6/d$b;->a(La6/d$b;)La6/d$b;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic o(Ljava/lang/Object;La6/e;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method private static synthetic p(Ljava/lang/Object;La6/e;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static varargs q(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)La6/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "La6/d<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2}, La6/d;->d(Ljava/lang/Class;[Ljava/lang/Class;)La6/d$b;

    move-result-object p1

    new-instance p2, La6/c;

    invoke-direct {p2, p0}, La6/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, La6/d$b;->f(La6/h;)La6/d$b;

    move-result-object p0

    invoke-virtual {p0}, La6/d$b;->d()La6/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "La6/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, La6/d;->c:Ljava/util/Set;

    return-object v0
.end method

.method public f()La6/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La6/h<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, La6/d;->f:La6/h;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, La6/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, La6/d;->b:Ljava/util/Set;

    return-object v0
.end method

.method public i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, La6/d;->g:Ljava/util/Set;

    return-object v0
.end method

.method public l()Z
    .locals 2

    iget v0, p0, La6/d;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public m()Z
    .locals 2

    iget v0, p0, La6/d;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 1

    iget v0, p0, La6/d;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r(La6/h;)La6/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La6/h<",
            "TT;>;)",
            "La6/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, La6/d;

    iget-object v1, p0, La6/d;->a:Ljava/lang/String;

    iget-object v2, p0, La6/d;->b:Ljava/util/Set;

    iget-object v3, p0, La6/d;->c:Ljava/util/Set;

    iget v4, p0, La6/d;->d:I

    iget v5, p0, La6/d;->e:I

    iget-object v7, p0, La6/d;->g:Ljava/util/Set;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, La6/d;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILa6/h;Ljava/util/Set;)V

    return-object v8
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La6/d;->b:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La6/d;->d:I

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, La6/d;->e:I

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La6/d;->c:Ljava/util/Set;

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
