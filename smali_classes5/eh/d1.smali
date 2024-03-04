.class final enum Leh/d1;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leh/d1;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leh/d1;

.field public static final enum b:Leh/d1;

.field public static final enum c:Leh/d1;

.field private static final synthetic d:[Leh/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Leh/d1;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh/d1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh/d1;->a:Leh/d1;

    .line 2
    new-instance v1, Leh/d1;

    const-string v3, "SAME_IP_OR_LOOPBACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leh/d1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leh/d1;->b:Leh/d1;

    .line 3
    new-instance v3, Leh/d1;

    const-string v5, "EXTERNAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leh/d1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leh/d1;->c:Leh/d1;

    const/4 v5, 0x3

    new-array v5, v5, [Leh/d1;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Leh/d1;->d:[Leh/d1;

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

.method public static valueOf(Ljava/lang/String;)Leh/d1;
    .locals 1

    const-class v0, Leh/d1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh/d1;

    return-object p0
.end method

.method public static values()[Leh/d1;
    .locals 1

    sget-object v0, Leh/d1;->d:[Leh/d1;

    invoke-virtual {v0}, [Leh/d1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh/d1;

    return-object v0
.end method
