.class public abstract Lcom/google/common/collect/e3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e3$b;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/e3;

.field private static final b:Lcom/google/common/collect/e3;

.field private static final c:Lcom/google/common/collect/e3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/e3$a;

    invoke-direct {v0}, Lcom/google/common/collect/e3$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/e3;->a:Lcom/google/common/collect/e3;

    .line 2
    new-instance v0, Lcom/google/common/collect/e3$b;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e3$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/e3;->b:Lcom/google/common/collect/e3;

    .line 3
    new-instance v0, Lcom/google/common/collect/e3$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e3$b;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/e3;->c:Lcom/google/common/collect/e3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/e3$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/e3;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/collect/e3;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3;->b:Lcom/google/common/collect/e3;

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/collect/e3;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3;->c:Lcom/google/common/collect/e3;

    return-object v0
.end method

.method static synthetic c()Lcom/google/common/collect/e3;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3;->a:Lcom/google/common/collect/e3;

    return-object v0
.end method

.method public static k()Lcom/google/common/collect/e3;
    .locals 1

    sget-object v0, Lcom/google/common/collect/e3;->a:Lcom/google/common/collect/e3;

    return-object v0
.end method


# virtual methods
.method public abstract d(II)Lcom/google/common/collect/e3;
.end method

.method public abstract e(JJ)Lcom/google/common/collect/e3;
.end method

.method public abstract f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)",
            "Lcom/google/common/collect/e3;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/e3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/e3;"
        }
    .end annotation
.end method

.method public abstract h(ZZ)Lcom/google/common/collect/e3;
.end method

.method public abstract i(ZZ)Lcom/google/common/collect/e3;
.end method

.method public abstract j()I
.end method
