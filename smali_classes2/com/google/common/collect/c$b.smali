.class final enum Lcom/google/common/collect/c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/c$b;

.field public static final enum b:Lcom/google/common/collect/c$b;

.field public static final enum c:Lcom/google/common/collect/c$b;

.field public static final enum d:Lcom/google/common/collect/c$b;

.field private static final synthetic e:[Lcom/google/common/collect/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/c$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/c$b;->a:Lcom/google/common/collect/c$b;

    .line 2
    new-instance v0, Lcom/google/common/collect/c$b;

    const-string v1, "NOT_READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/c$b;->b:Lcom/google/common/collect/c$b;

    .line 3
    new-instance v0, Lcom/google/common/collect/c$b;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/c$b;->c:Lcom/google/common/collect/c$b;

    .line 4
    new-instance v0, Lcom/google/common/collect/c$b;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/c$b;->d:Lcom/google/common/collect/c$b;

    .line 5
    invoke-static {}, Lcom/google/common/collect/c$b;->a()[Lcom/google/common/collect/c$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/c$b;->e:[Lcom/google/common/collect/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/collect/c$b;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/collect/c$b;

    sget-object v1, Lcom/google/common/collect/c$b;->a:Lcom/google/common/collect/c$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/c$b;->b:Lcom/google/common/collect/c$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/c$b;->c:Lcom/google/common/collect/c$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/c$b;->d:Lcom/google/common/collect/c$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/c$b;
    .locals 1

    const-class v0, Lcom/google/common/collect/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/c$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/c$b;
    .locals 1

    sget-object v0, Lcom/google/common/collect/c$b;->e:[Lcom/google/common/collect/c$b;

    invoke-virtual {v0}, [Lcom/google/common/collect/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/c$b;

    return-object v0
.end method
