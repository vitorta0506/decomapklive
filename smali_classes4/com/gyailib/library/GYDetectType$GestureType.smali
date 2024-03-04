.class public final enum Lcom/gyailib/library/GYDetectType$GestureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyailib/library/GYDetectType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gyailib/library/GYDetectType$GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum EIGHT:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum FIST:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum FOUR:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum HEART:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum LIFT:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum LIKE:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum LOVE:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum OK:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum ONE:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum OTHERS:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum PAPER:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum ROCK:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum SCISSOR:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum SIX:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum THREE:Lcom/gyailib/library/GYDetectType$GestureType;

.field public static final enum UNKNOWN:Lcom/gyailib/library/GYDetectType$GestureType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v1, "HEART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gyailib/library/GYDetectType$GestureType;->HEART:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 2
    new-instance v1, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v3, "PAPER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gyailib/library/GYDetectType$GestureType;->PAPER:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 3
    new-instance v3, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v5, "SCISSOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/gyailib/library/GYDetectType$GestureType;->SCISSOR:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 4
    new-instance v5, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v7, "FIST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/gyailib/library/GYDetectType$GestureType;->FIST:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 5
    new-instance v7, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v9, "ONE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/gyailib/library/GYDetectType$GestureType;->ONE:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 6
    new-instance v9, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v11, "LOVE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/gyailib/library/GYDetectType$GestureType;->LOVE:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 7
    new-instance v11, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v13, "LIKE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/gyailib/library/GYDetectType$GestureType;->LIKE:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 8
    new-instance v13, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v15, "OK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/gyailib/library/GYDetectType$GestureType;->OK:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 9
    new-instance v15, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v14, "ROCK"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/gyailib/library/GYDetectType$GestureType;->ROCK:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 10
    new-instance v14, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v12, "SIX"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/gyailib/library/GYDetectType$GestureType;->SIX:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 11
    new-instance v12, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v10, "EIGHT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/gyailib/library/GYDetectType$GestureType;->EIGHT:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 12
    new-instance v10, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v8, "LIFT"

    const/16 v6, 0xb

    const-string v4, "LIFT"

    invoke-direct {v10, v8, v6, v4}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/gyailib/library/GYDetectType$GestureType;->LIFT:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 13
    new-instance v4, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v6, "OTHERS"

    const/16 v8, 0xc

    const-string v2, "OTHERS"

    invoke-direct {v4, v6, v8, v2}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gyailib/library/GYDetectType$GestureType;->OTHERS:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 14
    new-instance v2, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v6, "THREE"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "THREE"

    invoke-direct {v2, v6, v8, v4}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gyailib/library/GYDetectType$GestureType;->THREE:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 15
    new-instance v4, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v6, "FOUR"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "FOUR"

    invoke-direct {v4, v6, v8, v2}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gyailib/library/GYDetectType$GestureType;->FOUR:Lcom/gyailib/library/GYDetectType$GestureType;

    .line 16
    new-instance v2, Lcom/gyailib/library/GYDetectType$GestureType;

    const-string v6, "UNKNOWN"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "UNKNOWN"

    invoke-direct {v2, v6, v8, v4}, Lcom/gyailib/library/GYDetectType$GestureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gyailib/library/GYDetectType$GestureType;->UNKNOWN:Lcom/gyailib/library/GYDetectType$GestureType;

    const/16 v4, 0x10

    new-array v4, v4, [Lcom/gyailib/library/GYDetectType$GestureType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v2, v4, v0

    .line 17
    sput-object v4, Lcom/gyailib/library/GYDetectType$GestureType;->$VALUES:[Lcom/gyailib/library/GYDetectType$GestureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/gyailib/library/GYDetectType$GestureType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gyailib/library/GYDetectType$GestureType;
    .locals 1

    const-class v0, Lcom/gyailib/library/GYDetectType$GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gyailib/library/GYDetectType$GestureType;

    return-object p0
.end method

.method public static values()[Lcom/gyailib/library/GYDetectType$GestureType;
    .locals 1

    sget-object v0, Lcom/gyailib/library/GYDetectType$GestureType;->$VALUES:[Lcom/gyailib/library/GYDetectType$GestureType;

    invoke-virtual {v0}, [Lcom/gyailib/library/GYDetectType$GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gyailib/library/GYDetectType$GestureType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gyailib/library/GYDetectType$GestureType;->value:Ljava/lang/String;

    return-object v0
.end method
