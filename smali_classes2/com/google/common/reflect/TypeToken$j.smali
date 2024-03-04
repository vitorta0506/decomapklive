.class abstract enum Lcom/google/common/reflect/TypeToken$j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/TypeToken$j;",
        ">;",
        "Lcom/google/common/base/q<",
        "Lcom/google/common/reflect/TypeToken<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/reflect/TypeToken$j;

.field public static final enum b:Lcom/google/common/reflect/TypeToken$j;

.field private static final synthetic c:[Lcom/google/common/reflect/TypeToken$j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/reflect/TypeToken$j$a;

    const-string v1, "IGNORE_TYPE_VARIABLE_OR_WILDCARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/TypeToken$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/TypeToken$j;->a:Lcom/google/common/reflect/TypeToken$j;

    .line 2
    new-instance v0, Lcom/google/common/reflect/TypeToken$j$b;

    const-string v1, "INTERFACE_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/TypeToken$j$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/TypeToken$j;->b:Lcom/google/common/reflect/TypeToken$j;

    .line 3
    invoke-static {}, Lcom/google/common/reflect/TypeToken$j;->a()[Lcom/google/common/reflect/TypeToken$j;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/TypeToken$j;->c:[Lcom/google/common/reflect/TypeToken$j;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/TypeToken$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/TypeToken$j;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lcom/google/common/reflect/TypeToken$j;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/reflect/TypeToken$j;

    sget-object v1, Lcom/google/common/reflect/TypeToken$j;->a:Lcom/google/common/reflect/TypeToken$j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/TypeToken$j;->b:Lcom/google/common/reflect/TypeToken$j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/TypeToken$j;
    .locals 1

    const-class v0, Lcom/google/common/reflect/TypeToken$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/TypeToken$j;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/TypeToken$j;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/TypeToken$j;->c:[Lcom/google/common/reflect/TypeToken$j;

    invoke-virtual {v0}, [Lcom/google/common/reflect/TypeToken$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/TypeToken$j;

    return-object v0
.end method


# virtual methods
.method public synthetic test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/p;->a(Lcom/google/common/base/q;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
