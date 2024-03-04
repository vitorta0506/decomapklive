.class abstract enum Lcom/google/common/collect/d6$g;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/d6$g;",
        ">;",
        "Lcom/google/common/base/h<",
        "Ljava/util/Map$Entry<",
        "**>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/d6$g;

.field public static final enum b:Lcom/google/common/collect/d6$g;

.field private static final synthetic c:[Lcom/google/common/collect/d6$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/d6$g$a;

    const-string v1, "KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/d6$g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/d6$g;->a:Lcom/google/common/collect/d6$g;

    .line 2
    new-instance v0, Lcom/google/common/collect/d6$g$b;

    const-string v1, "VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/d6$g$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/d6$g;->b:Lcom/google/common/collect/d6$g;

    .line 3
    invoke-static {}, Lcom/google/common/collect/d6$g;->a()[Lcom/google/common/collect/d6$g;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/d6$g;->c:[Lcom/google/common/collect/d6$g;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/d6$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/d6$g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/collect/d6$g;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/collect/d6$g;

    sget-object v1, Lcom/google/common/collect/d6$g;->a:Lcom/google/common/collect/d6$g;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/d6$g;->b:Lcom/google/common/collect/d6$g;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/d6$g;
    .locals 1

    const-class v0, Lcom/google/common/collect/d6$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/d6$g;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/d6$g;
    .locals 1

    sget-object v0, Lcom/google/common/collect/d6$g;->c:[Lcom/google/common/collect/d6$g;

    invoke-virtual {v0}, [Lcom/google/common/collect/d6$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/d6$g;

    return-object v0
.end method
