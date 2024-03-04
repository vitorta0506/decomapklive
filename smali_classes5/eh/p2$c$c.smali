.class final enum Leh/p2$c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p2$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leh/p2$c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leh/p2$c$c;

.field public static final enum b:Leh/p2$c$c;

.field public static final enum c:Leh/p2$c$c;

.field private static final synthetic d:[Leh/p2$c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Leh/p2$c$c;

    const-string v1, "ROUND_ROBIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh/p2$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh/p2$c$c;->a:Leh/p2$c$c;

    new-instance v1, Leh/p2$c$c;

    const-string v3, "RING_HASH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leh/p2$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leh/p2$c$c;->b:Leh/p2$c$c;

    new-instance v3, Leh/p2$c$c;

    const-string v5, "LEAST_REQUEST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leh/p2$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leh/p2$c$c;->c:Leh/p2$c$c;

    const/4 v5, 0x3

    new-array v5, v5, [Leh/p2$c$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Leh/p2$c$c;->d:[Leh/p2$c$c;

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

.method public static valueOf(Ljava/lang/String;)Leh/p2$c$c;
    .locals 1

    const-class v0, Leh/p2$c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh/p2$c$c;

    return-object p0
.end method

.method public static values()[Leh/p2$c$c;
    .locals 1

    sget-object v0, Leh/p2$c$c;->d:[Leh/p2$c$c;

    invoke-virtual {v0}, [Leh/p2$c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh/p2$c$c;

    return-object v0
.end method
