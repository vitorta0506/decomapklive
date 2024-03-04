.class public final enum Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

.field public static final enum Block:Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

.field public static final enum Ignore:Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

.field public static final enum ThrowException:Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    const-string v1, "ThrowException"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;->ThrowException:Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    .line 2
    new-instance v1, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    const-string v3, "Block"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;->Block:Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    .line 3
    new-instance v3, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    const-string v5, "Ignore"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;->Ignore:Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;->$VALUES:[Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;
    .locals 1

    const-class v0, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    return-object p0
.end method

.method public static values()[Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;
    .locals 1

    sget-object v0, Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;->$VALUES:[Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    invoke-virtual {v0}, [Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/gax/batching/FlowController$LimitExceededBehavior;

    return-object v0
.end method
