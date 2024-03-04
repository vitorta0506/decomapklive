.class final enum Lcom/google/api/gax/rpc/l0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gax/rpc/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/gax/rpc/l0$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/api/gax/rpc/l0$b;

.field public static final enum b:Lcom/google/api/gax/rpc/l0$b;

.field public static final enum c:Lcom/google/api/gax/rpc/l0$b;

.field private static final synthetic d:[Lcom/google/api/gax/rpc/l0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/l0$b;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/gax/rpc/l0$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/gax/rpc/l0$b;->a:Lcom/google/api/gax/rpc/l0$b;

    .line 2
    new-instance v1, Lcom/google/api/gax/rpc/l0$b;

    const-string v3, "WAITING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/api/gax/rpc/l0$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/api/gax/rpc/l0$b;->b:Lcom/google/api/gax/rpc/l0$b;

    .line 3
    new-instance v3, Lcom/google/api/gax/rpc/l0$b;

    const-string v5, "DELIVERING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/api/gax/rpc/l0$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/api/gax/rpc/l0$b;->c:Lcom/google/api/gax/rpc/l0$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/api/gax/rpc/l0$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/api/gax/rpc/l0$b;->d:[Lcom/google/api/gax/rpc/l0$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/gax/rpc/l0$b;
    .locals 1

    const-class v0, Lcom/google/api/gax/rpc/l0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/gax/rpc/l0$b;

    return-object p0
.end method

.method public static values()[Lcom/google/api/gax/rpc/l0$b;
    .locals 1

    sget-object v0, Lcom/google/api/gax/rpc/l0$b;->d:[Lcom/google/api/gax/rpc/l0$b;

    invoke-virtual {v0}, [Lcom/google/api/gax/rpc/l0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/gax/rpc/l0$b;

    return-object v0
.end method
