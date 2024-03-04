.class abstract enum Lcom/google/common/collect/TreeMultiset$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/TreeMultiset$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/TreeMultiset$e;

.field public static final enum b:Lcom/google/common/collect/TreeMultiset$e;

.field private static final synthetic c:[Lcom/google/common/collect/TreeMultiset$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$e$a;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$e;->a:Lcom/google/common/collect/TreeMultiset$e;

    .line 2
    new-instance v0, Lcom/google/common/collect/TreeMultiset$e$b;

    const-string v1, "DISTINCT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$e;->b:Lcom/google/common/collect/TreeMultiset$e;

    .line 3
    invoke-static {}, Lcom/google/common/collect/TreeMultiset$e;->a()[Lcom/google/common/collect/TreeMultiset$e;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/TreeMultiset$e;->c:[Lcom/google/common/collect/TreeMultiset$e;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/collect/TreeMultiset$e;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/TreeMultiset$e;

    sget-object v1, Lcom/google/common/collect/TreeMultiset$e;->a:Lcom/google/common/collect/TreeMultiset$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/TreeMultiset$e;->b:Lcom/google/common/collect/TreeMultiset$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    const-class v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    sget-object v0, Lcom/google/common/collect/TreeMultiset$e;->c:[Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {v0}, [Lcom/google/common/collect/TreeMultiset$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/TreeMultiset$e;

    return-object v0
.end method


# virtual methods
.method abstract b(Lcom/google/common/collect/TreeMultiset$f;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)I"
        }
    .end annotation
.end method

.method abstract c(Lcom/google/common/collect/TreeMultiset$f;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)J"
        }
    .end annotation
.end method
