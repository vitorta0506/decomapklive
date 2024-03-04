.class abstract enum Lcom/google/common/base/r$g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/r$g;",
        ">;",
        "Lcom/google/common/base/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/r$g;

.field public static final enum b:Lcom/google/common/base/r$g;

.field public static final enum c:Lcom/google/common/base/r$g;

.field public static final enum d:Lcom/google/common/base/r$g;

.field private static final synthetic e:[Lcom/google/common/base/r$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/base/r$g$a;

    const-string v1, "ALWAYS_TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/r$g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/r$g;->a:Lcom/google/common/base/r$g;

    .line 2
    new-instance v0, Lcom/google/common/base/r$g$b;

    const-string v1, "ALWAYS_FALSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/r$g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/r$g;->b:Lcom/google/common/base/r$g;

    .line 3
    new-instance v0, Lcom/google/common/base/r$g$c;

    const-string v1, "IS_NULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/r$g$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/r$g;->c:Lcom/google/common/base/r$g;

    .line 4
    new-instance v0, Lcom/google/common/base/r$g$d;

    const-string v1, "NOT_NULL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/r$g$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/r$g;->d:Lcom/google/common/base/r$g;

    .line 5
    invoke-static {}, Lcom/google/common/base/r$g;->a()[Lcom/google/common/base/r$g;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/r$g;->e:[Lcom/google/common/base/r$g;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/r$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/r$g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/base/r$g;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/base/r$g;

    sget-object v1, Lcom/google/common/base/r$g;->a:Lcom/google/common/base/r$g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/r$g;->b:Lcom/google/common/base/r$g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/r$g;->c:Lcom/google/common/base/r$g;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/r$g;->d:Lcom/google/common/base/r$g;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/r$g;
    .locals 1

    const-class v0, Lcom/google/common/base/r$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/r$g;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/r$g;
    .locals 1

    sget-object v0, Lcom/google/common/base/r$g;->e:[Lcom/google/common/base/r$g;

    invoke-virtual {v0}, [Lcom/google/common/base/r$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/r$g;

    return-object v0
.end method


# virtual methods
.method b()Lcom/google/common/base/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/q<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/p;->a(Lcom/google/common/base/q;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
