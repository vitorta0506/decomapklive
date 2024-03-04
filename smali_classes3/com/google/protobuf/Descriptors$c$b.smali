.class final enum Lcom/google/protobuf/Descriptors$c$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/protobuf/Descriptors$c$b;

.field public static final enum b:Lcom/google/protobuf/Descriptors$c$b;

.field public static final enum c:Lcom/google/protobuf/Descriptors$c$b;

.field private static final synthetic d:[Lcom/google/protobuf/Descriptors$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/protobuf/Descriptors$c$b;

    const-string v1, "TYPES_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Descriptors$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Descriptors$c$b;->a:Lcom/google/protobuf/Descriptors$c$b;

    .line 2
    new-instance v1, Lcom/google/protobuf/Descriptors$c$b;

    const-string v3, "AGGREGATES_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/protobuf/Descriptors$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/Descriptors$c$b;->b:Lcom/google/protobuf/Descriptors$c$b;

    .line 3
    new-instance v3, Lcom/google/protobuf/Descriptors$c$b;

    const-string v5, "ALL_SYMBOLS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/protobuf/Descriptors$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/Descriptors$c$b;->c:Lcom/google/protobuf/Descriptors$c$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/protobuf/Descriptors$c$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/protobuf/Descriptors$c$b;->d:[Lcom/google/protobuf/Descriptors$c$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$c$b;
    .locals 1

    const-class v0, Lcom/google/protobuf/Descriptors$c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$c$b;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$c$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/Descriptors$c$b;->d:[Lcom/google/protobuf/Descriptors$c$b;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$c$b;

    return-object v0
.end method
