.class abstract enum Lcom/google/common/collect/g8$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/g8$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/g8$c;

.field public static final enum b:Lcom/google/common/collect/g8$c;

.field public static final enum c:Lcom/google/common/collect/g8$c;

.field public static final enum d:Lcom/google/common/collect/g8$c;

.field public static final enum e:Lcom/google/common/collect/g8$c;

.field private static final synthetic f:[Lcom/google/common/collect/g8$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/g8$c$a;

    const-string v1, "ANY_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g8$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/g8$c;->a:Lcom/google/common/collect/g8$c;

    .line 2
    new-instance v0, Lcom/google/common/collect/g8$c$b;

    const-string v1, "LAST_PRESENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g8$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/g8$c;->b:Lcom/google/common/collect/g8$c;

    .line 3
    new-instance v0, Lcom/google/common/collect/g8$c$c;

    const-string v1, "FIRST_PRESENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g8$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/g8$c;->c:Lcom/google/common/collect/g8$c;

    .line 4
    new-instance v0, Lcom/google/common/collect/g8$c$d;

    const-string v1, "FIRST_AFTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g8$c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/g8$c;->d:Lcom/google/common/collect/g8$c;

    .line 5
    new-instance v0, Lcom/google/common/collect/g8$c$e;

    const-string v1, "LAST_BEFORE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g8$c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/g8$c;->e:Lcom/google/common/collect/g8$c;

    .line 6
    invoke-static {}, Lcom/google/common/collect/g8$c;->a()[Lcom/google/common/collect/g8$c;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/g8$c;->f:[Lcom/google/common/collect/g8$c;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/g8$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/g8$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/collect/g8$c;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/common/collect/g8$c;

    sget-object v1, Lcom/google/common/collect/g8$c;->a:Lcom/google/common/collect/g8$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/g8$c;->b:Lcom/google/common/collect/g8$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/g8$c;->c:Lcom/google/common/collect/g8$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/g8$c;->d:Lcom/google/common/collect/g8$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/g8$c;->e:Lcom/google/common/collect/g8$c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/g8$c;
    .locals 1

    const-class v0, Lcom/google/common/collect/g8$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/g8$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/g8$c;
    .locals 1

    sget-object v0, Lcom/google/common/collect/g8$c;->f:[Lcom/google/common/collect/g8$c;

    invoke-virtual {v0}, [Lcom/google/common/collect/g8$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/g8$c;

    return-object v0
.end method


# virtual methods
.method abstract b(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation
.end method
