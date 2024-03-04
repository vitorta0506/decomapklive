.class public final enum Lcom/google/api/core/ApiService$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/core/ApiService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/core/ApiService$State;

.field public static final enum FAILED:Lcom/google/api/core/ApiService$State;

.field public static final enum NEW:Lcom/google/api/core/ApiService$State;

.field public static final enum RUNNING:Lcom/google/api/core/ApiService$State;

.field public static final enum STARTING:Lcom/google/api/core/ApiService$State;

.field public static final enum STOPPING:Lcom/google/api/core/ApiService$State;

.field public static final enum TERMINATED:Lcom/google/api/core/ApiService$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/api/core/ApiService$State;

    const-string v1, "FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/core/ApiService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/core/ApiService$State;->FAILED:Lcom/google/api/core/ApiService$State;

    .line 2
    new-instance v1, Lcom/google/api/core/ApiService$State;

    const-string v3, "NEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/api/core/ApiService$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/api/core/ApiService$State;->NEW:Lcom/google/api/core/ApiService$State;

    .line 3
    new-instance v3, Lcom/google/api/core/ApiService$State;

    const-string v5, "RUNNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/api/core/ApiService$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/api/core/ApiService$State;->RUNNING:Lcom/google/api/core/ApiService$State;

    .line 4
    new-instance v5, Lcom/google/api/core/ApiService$State;

    const-string v7, "STARTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/api/core/ApiService$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/api/core/ApiService$State;->STARTING:Lcom/google/api/core/ApiService$State;

    .line 5
    new-instance v7, Lcom/google/api/core/ApiService$State;

    const-string v9, "STOPPING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/api/core/ApiService$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/api/core/ApiService$State;->STOPPING:Lcom/google/api/core/ApiService$State;

    .line 6
    new-instance v9, Lcom/google/api/core/ApiService$State;

    const-string v11, "TERMINATED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/api/core/ApiService$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/api/core/ApiService$State;->TERMINATED:Lcom/google/api/core/ApiService$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/api/core/ApiService$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/google/api/core/ApiService$State;->$VALUES:[Lcom/google/api/core/ApiService$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/core/ApiService$State;
    .locals 1

    const-class v0, Lcom/google/api/core/ApiService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/core/ApiService$State;

    return-object p0
.end method

.method public static values()[Lcom/google/api/core/ApiService$State;
    .locals 1

    sget-object v0, Lcom/google/api/core/ApiService$State;->$VALUES:[Lcom/google/api/core/ApiService$State;

    invoke-virtual {v0}, [Lcom/google/api/core/ApiService$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/core/ApiService$State;

    return-object v0
.end method
