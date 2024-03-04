.class abstract enum Lcom/google/common/collect/c6$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/c6$p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/c6$p;

.field public static final enum b:Lcom/google/common/collect/c6$p;

.field private static final synthetic c:[Lcom/google/common/collect/c6$p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/c6$p$a;

    const-string v1, "STRONG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/c6$p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    .line 2
    new-instance v0, Lcom/google/common/collect/c6$p$b;

    const-string v1, "WEAK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/c6$p$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/c6$p;->b:Lcom/google/common/collect/c6$p;

    .line 3
    invoke-static {}, Lcom/google/common/collect/c6$p;->a()[Lcom/google/common/collect/c6$p;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/c6$p;->c:[Lcom/google/common/collect/c6$p;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/c6$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/c6$p;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/collect/c6$p;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/c6$p;

    sget-object v1, Lcom/google/common/collect/c6$p;->a:Lcom/google/common/collect/c6$p;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/c6$p;->b:Lcom/google/common/collect/c6$p;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/c6$p;
    .locals 1

    const-class v0, Lcom/google/common/collect/c6$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/c6$p;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/c6$p;
    .locals 1

    sget-object v0, Lcom/google/common/collect/c6$p;->c:[Lcom/google/common/collect/c6$p;

    invoke-virtual {v0}, [Lcom/google/common/collect/c6$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/c6$p;

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
