.class final enum Lcom/google/common/base/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/b$b;

.field public static final enum b:Lcom/google/common/base/b$b;

.field public static final enum c:Lcom/google/common/base/b$b;

.field public static final enum d:Lcom/google/common/base/b$b;

.field private static final synthetic e:[Lcom/google/common/base/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/base/b$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/b$b;->a:Lcom/google/common/base/b$b;

    .line 2
    new-instance v0, Lcom/google/common/base/b$b;

    const-string v1, "NOT_READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/b$b;->b:Lcom/google/common/base/b$b;

    .line 3
    new-instance v0, Lcom/google/common/base/b$b;

    const-string v1, "DONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/b$b;->c:Lcom/google/common/base/b$b;

    .line 4
    new-instance v0, Lcom/google/common/base/b$b;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/b$b;->d:Lcom/google/common/base/b$b;

    .line 5
    invoke-static {}, Lcom/google/common/base/b$b;->a()[Lcom/google/common/base/b$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/b$b;->e:[Lcom/google/common/base/b$b;

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

.method private static synthetic a()[Lcom/google/common/base/b$b;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/base/b$b;

    sget-object v1, Lcom/google/common/base/b$b;->a:Lcom/google/common/base/b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/b$b;->b:Lcom/google/common/base/b$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/b$b;->c:Lcom/google/common/base/b$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/b$b;->d:Lcom/google/common/base/b$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/b$b;
    .locals 1

    const-class v0, Lcom/google/common/base/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/b$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/b$b;
    .locals 1

    sget-object v0, Lcom/google/common/base/b$b;->e:[Lcom/google/common/base/b$b;

    invoke-virtual {v0}, [Lcom/google/common/base/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/b$b;

    return-object v0
.end method
