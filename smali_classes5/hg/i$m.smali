.class final enum Lhg/i$m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhg/i$m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhg/i$m;

.field public static final enum b:Lhg/i$m;

.field private static final synthetic c:[Lhg/i$m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lhg/i$m;

    const-string v1, "ROUND_ROBIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhg/i$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhg/i$m;->a:Lhg/i$m;

    .line 2
    new-instance v1, Lhg/i$m;

    const-string v3, "PICK_FIRST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhg/i$m;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhg/i$m;->b:Lhg/i$m;

    const/4 v3, 0x2

    new-array v3, v3, [Lhg/i$m;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lhg/i$m;->c:[Lhg/i$m;

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

.method public static valueOf(Ljava/lang/String;)Lhg/i$m;
    .locals 1

    const-class v0, Lhg/i$m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhg/i$m;

    return-object p0
.end method

.method public static values()[Lhg/i$m;
    .locals 1

    sget-object v0, Lhg/i$m;->c:[Lhg/i$m;

    invoke-virtual {v0}, [Lhg/i$m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhg/i$m;

    return-object v0
.end method
