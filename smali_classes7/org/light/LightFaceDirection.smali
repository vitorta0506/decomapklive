.class public final enum Lorg/light/LightFaceDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/LightFaceDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/LightFaceDirection;

.field public static final enum LightFaceDirectionPosition:Lorg/light/LightFaceDirection;

.field public static final enum LightFaceDirectionSide:Lorg/light/LightFaceDirection;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lorg/light/LightFaceDirection;

    const-string v1, "LightFaceDirectionPosition"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/light/LightFaceDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/LightFaceDirection;->LightFaceDirectionPosition:Lorg/light/LightFaceDirection;

    new-instance v1, Lorg/light/LightFaceDirection;

    const-string v4, "LightFaceDirectionSide"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lorg/light/LightFaceDirection;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/LightFaceDirection;->LightFaceDirectionSide:Lorg/light/LightFaceDirection;

    new-array v4, v5, [Lorg/light/LightFaceDirection;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 2
    sput-object v4, Lorg/light/LightFaceDirection;->$VALUES:[Lorg/light/LightFaceDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/light/LightFaceDirection;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/light/LightFaceDirection;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2
    sget-object p0, Lorg/light/LightFaceDirection;->LightFaceDirectionPosition:Lorg/light/LightFaceDirection;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lorg/light/LightFaceDirection;->LightFaceDirectionSide:Lorg/light/LightFaceDirection;

    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lorg/light/LightFaceDirection;->LightFaceDirectionPosition:Lorg/light/LightFaceDirection;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/LightFaceDirection;
    .locals 1

    .line 1
    const-class v0, Lorg/light/LightFaceDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/LightFaceDirection;

    return-object p0
.end method

.method public static values()[Lorg/light/LightFaceDirection;
    .locals 1

    sget-object v0, Lorg/light/LightFaceDirection;->$VALUES:[Lorg/light/LightFaceDirection;

    invoke-virtual {v0}, [Lorg/light/LightFaceDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/LightFaceDirection;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lorg/light/LightFaceDirection;->value:I

    return v0
.end method
