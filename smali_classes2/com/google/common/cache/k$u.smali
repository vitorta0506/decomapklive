.class abstract enum Lcom/google/common/cache/k$u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/k$u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/cache/k$u;

.field public static final enum b:Lcom/google/common/cache/k$u;

.field public static final enum c:Lcom/google/common/cache/k$u;

.field private static final synthetic d:[Lcom/google/common/cache/k$u;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/cache/k$u$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$u;->a:Lcom/google/common/cache/k$u;

    .line 2
    new-instance v0, Lcom/google/common/cache/k$u$b;

    const-string v1, "SOFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$u$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$u;->b:Lcom/google/common/cache/k$u;

    .line 3
    new-instance v0, Lcom/google/common/cache/k$u$c;

    const-string v1, "WEAK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/k$u$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/k$u;->c:Lcom/google/common/cache/k$u;

    .line 4
    invoke-static {}, Lcom/google/common/cache/k$u;->a()[Lcom/google/common/cache/k$u;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/k$u;->d:[Lcom/google/common/cache/k$u;

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
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/k$u;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/cache/k$u;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/cache/k$u;

    sget-object v1, Lcom/google/common/cache/k$u;->a:Lcom/google/common/cache/k$u;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$u;->b:Lcom/google/common/cache/k$u;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/cache/k$u;->c:Lcom/google/common/cache/k$u;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/k$u;
    .locals 1

    const-class v0, Lcom/google/common/cache/k$u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/k$u;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/k$u;
    .locals 1

    sget-object v0, Lcom/google/common/cache/k$u;->d:[Lcom/google/common/cache/k$u;

    invoke-virtual {v0}, [Lcom/google/common/cache/k$u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/k$u;

    return-object v0
.end method


# virtual methods
.method abstract b()Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract c(Lcom/google/common/cache/k$s;Lcom/google/common/cache/q;Ljava/lang/Object;I)Lcom/google/common/cache/k$b0;
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
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;"
        }
    .end annotation
.end method
