.class abstract enum Lcom/google/common/cache/k$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/k$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/k$g;

.field public static final enum b:Lcom/google/common/cache/k$g;

.field public static final enum c:Lcom/google/common/cache/k$g;

.field public static final enum d:Lcom/google/common/cache/k$g;

.field public static final enum e:Lcom/google/common/cache/k$g;

.field public static final enum f:Lcom/google/common/cache/k$g;

.field public static final enum g:Lcom/google/common/cache/k$g;

.field public static final enum h:Lcom/google/common/cache/k$g;

.field static final i:[Lcom/google/common/cache/k$g;

.field private static final synthetic j:[Lcom/google/common/cache/k$g;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/common/cache/k$g$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$g;->a:Lcom/google/common/cache/k$g;

    .line 2
    new-instance v1, Lcom/google/common/cache/k$g$b;

    const-string v3, "STRONG_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/cache/k$g$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/cache/k$g;->b:Lcom/google/common/cache/k$g;

    .line 3
    new-instance v3, Lcom/google/common/cache/k$g$c;

    const-string v5, "STRONG_WRITE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/cache/k$g$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/cache/k$g;->c:Lcom/google/common/cache/k$g;

    .line 4
    new-instance v5, Lcom/google/common/cache/k$g$d;

    const-string v7, "STRONG_ACCESS_WRITE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/cache/k$g$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/cache/k$g;->d:Lcom/google/common/cache/k$g;

    .line 5
    new-instance v7, Lcom/google/common/cache/k$g$e;

    const-string v9, "WEAK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/cache/k$g$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/cache/k$g;->e:Lcom/google/common/cache/k$g;

    .line 6
    new-instance v9, Lcom/google/common/cache/k$g$f;

    const-string v11, "WEAK_ACCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/common/cache/k$g$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/common/cache/k$g;->f:Lcom/google/common/cache/k$g;

    .line 7
    new-instance v11, Lcom/google/common/cache/k$g$g;

    const-string v13, "WEAK_WRITE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/common/cache/k$g$g;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/common/cache/k$g;->g:Lcom/google/common/cache/k$g;

    .line 8
    new-instance v13, Lcom/google/common/cache/k$g$h;

    const-string v15, "WEAK_ACCESS_WRITE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/common/cache/k$g$h;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/common/cache/k$g;->h:Lcom/google/common/cache/k$g;

    .line 9
    invoke-static {}, Lcom/google/common/cache/k$g;->a()[Lcom/google/common/cache/k$g;

    move-result-object v15

    sput-object v15, Lcom/google/common/cache/k$g;->j:[Lcom/google/common/cache/k$g;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/common/cache/k$g;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 10
    sput-object v15, Lcom/google/common/cache/k$g;->i:[Lcom/google/common/cache/k$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/k$g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/cache/k$g;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/common/cache/k$g;

    sget-object v1, Lcom/google/common/cache/k$g;->a:Lcom/google/common/cache/k$g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$g;->b:Lcom/google/common/cache/k$g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$g;->c:Lcom/google/common/cache/k$g;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$g;->d:Lcom/google/common/cache/k$g;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$g;->e:Lcom/google/common/cache/k$g;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$g;->f:Lcom/google/common/cache/k$g;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$g;->g:Lcom/google/common/cache/k$g;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$g;->h:Lcom/google/common/cache/k$g;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static e(Lcom/google/common/cache/k$u;ZZ)Lcom/google/common/cache/k$g;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/cache/k$u;->c:Lcom/google/common/cache/k$u;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, p1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :cond_1
    or-int/2addr p0, v1

    .line 2
    sget-object p1, Lcom/google/common/cache/k$g;->i:[Lcom/google/common/cache/k$g;

    aget-object p0, p1, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/k$g;
    .locals 1

    const-class v0, Lcom/google/common/cache/k$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/k$g;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/k$g;
    .locals 1

    sget-object v0, Lcom/google/common/cache/k$g;->j:[Lcom/google/common/cache/k$g;

    invoke-virtual {v0}, [Lcom/google/common/cache/k$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/k$g;

    return-object v0
.end method


# virtual methods
.method b(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/q;->l()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/q;->k(J)V

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/q;->d()Lcom/google/common/cache/q;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/k;->e(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/q;->f()Lcom/google/common/cache/q;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/k;->e(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    .line 4
    invoke-static {p1}, Lcom/google/common/cache/k;->x(Lcom/google/common/cache/q;)V

    return-void
.end method

.method c(Lcom/google/common/cache/k$s;Lcom/google/common/cache/q;Lcom/google/common/cache/q;)Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/common/cache/q;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/common/cache/q;->b()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/common/cache/k$g;->f(Lcom/google/common/cache/k$s;Ljava/lang/Object;ILcom/google/common/cache/q;)Lcom/google/common/cache/q;

    move-result-object p1

    return-object p1
.end method

.method d(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/q;->j()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/google/common/cache/q;->m(J)V

    .line 2
    invoke-interface {p1}, Lcom/google/common/cache/q;->h()Lcom/google/common/cache/q;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    .line 3
    invoke-interface {p1}, Lcom/google/common/cache/q;->e()Lcom/google/common/cache/q;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/cache/k;->f(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V

    .line 4
    invoke-static {p1}, Lcom/google/common/cache/k;->y(Lcom/google/common/cache/q;)V

    return-void
.end method

.method abstract f(Lcom/google/common/cache/k$s;Ljava/lang/Object;ILcom/google/common/cache/q;)Lcom/google/common/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation
.end method
