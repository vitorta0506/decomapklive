.class final enum Leh/p2$j$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/p2$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leh/p2$j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leh/p2$j$a;

.field public static final enum b:Leh/p2$j$a;

.field public static final enum c:Leh/p2$j$a;

.field public static final enum d:Leh/p2$j$a;

.field public static final enum e:Leh/p2$j$a;

.field private static final synthetic f:[Leh/p2$j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Leh/p2$j$a;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh/p2$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh/p2$j$a;->a:Leh/p2$j$a;

    new-instance v1, Leh/p2$j$a;

    const-string v3, "REQUESTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leh/p2$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leh/p2$j$a;->b:Leh/p2$j$a;

    new-instance v3, Leh/p2$j$a;

    const-string v5, "DOES_NOT_EXIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leh/p2$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leh/p2$j$a;->c:Leh/p2$j$a;

    new-instance v5, Leh/p2$j$a;

    const-string v7, "ACKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Leh/p2$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Leh/p2$j$a;->d:Leh/p2$j$a;

    new-instance v7, Leh/p2$j$a;

    const-string v9, "NACKED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Leh/p2$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Leh/p2$j$a;->e:Leh/p2$j$a;

    const/4 v9, 0x5

    new-array v9, v9, [Leh/p2$j$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Leh/p2$j$a;->f:[Leh/p2$j$a;

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

.method public static valueOf(Ljava/lang/String;)Leh/p2$j$a;
    .locals 1

    const-class v0, Leh/p2$j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh/p2$j$a;

    return-object p0
.end method

.method public static values()[Leh/p2$j$a;
    .locals 1

    sget-object v0, Leh/p2$j$a;->f:[Leh/p2$j$a;

    invoke-virtual {v0}, [Leh/p2$j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh/p2$j$a;

    return-object v0
.end method
