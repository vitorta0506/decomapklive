.class public final enum Lorg/light/device/DeviceInstance$SOC_CLASS;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/DeviceInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SOC_CLASS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/device/DeviceInstance$SOC_CLASS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/device/DeviceInstance$SOC_CLASS;

.field public static final enum HIGH:Lorg/light/device/DeviceInstance$SOC_CLASS;

.field public static final enum LOW:Lorg/light/device/DeviceInstance$SOC_CLASS;

.field public static final enum NORMAL:Lorg/light/device/DeviceInstance$SOC_CLASS;

.field public static final enum NULL:Lorg/light/device/DeviceInstance$SOC_CLASS;

.field public static final enum V_HIGH:Lorg/light/device/DeviceInstance$SOC_CLASS;

.field public static final enum V_LOW:Lorg/light/device/DeviceInstance$SOC_CLASS;


# instance fields
.field public desc:Ljava/lang/String;

.field public score:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v6, Lorg/light/device/DeviceInstance$SOC_CLASS;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-string v5, "Class_Null"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/light/device/DeviceInstance$SOC_CLASS;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lorg/light/device/DeviceInstance$SOC_CLASS;->NULL:Lorg/light/device/DeviceInstance$SOC_CLASS;

    .line 2
    new-instance v0, Lorg/light/device/DeviceInstance$SOC_CLASS;

    const-string v8, "V_HIGH"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x1770

    const-string v12, "Class_V_High"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/light/device/DeviceInstance$SOC_CLASS;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/light/device/DeviceInstance$SOC_CLASS;->V_HIGH:Lorg/light/device/DeviceInstance$SOC_CLASS;

    .line 3
    new-instance v1, Lorg/light/device/DeviceInstance$SOC_CLASS;

    const-string v14, "HIGH"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x1194

    const-string v18, "Class_High"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/light/device/DeviceInstance$SOC_CLASS;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lorg/light/device/DeviceInstance$SOC_CLASS;->HIGH:Lorg/light/device/DeviceInstance$SOC_CLASS;

    .line 4
    new-instance v2, Lorg/light/device/DeviceInstance$SOC_CLASS;

    const-string v8, "NORMAL"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/16 v11, 0xdac

    const-string v12, "Class_Normal"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/light/device/DeviceInstance$SOC_CLASS;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lorg/light/device/DeviceInstance$SOC_CLASS;->NORMAL:Lorg/light/device/DeviceInstance$SOC_CLASS;

    .line 5
    new-instance v3, Lorg/light/device/DeviceInstance$SOC_CLASS;

    const-string v14, "LOW"

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x834

    const-string v18, "Class_Low"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lorg/light/device/DeviceInstance$SOC_CLASS;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lorg/light/device/DeviceInstance$SOC_CLASS;->LOW:Lorg/light/device/DeviceInstance$SOC_CLASS;

    .line 6
    new-instance v4, Lorg/light/device/DeviceInstance$SOC_CLASS;

    const-string v8, "V_LOW"

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v12, "Class_V_Low"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lorg/light/device/DeviceInstance$SOC_CLASS;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lorg/light/device/DeviceInstance$SOC_CLASS;->V_LOW:Lorg/light/device/DeviceInstance$SOC_CLASS;

    const/4 v5, 0x6

    new-array v5, v5, [Lorg/light/device/DeviceInstance$SOC_CLASS;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    .line 7
    sput-object v5, Lorg/light/device/DeviceInstance$SOC_CLASS;->$VALUES:[Lorg/light/device/DeviceInstance$SOC_CLASS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/light/device/DeviceInstance$SOC_CLASS;->value:I

    .line 3
    iput p4, p0, Lorg/light/device/DeviceInstance$SOC_CLASS;->score:I

    .line 4
    iput-object p5, p0, Lorg/light/device/DeviceInstance$SOC_CLASS;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/device/DeviceInstance$SOC_CLASS;
    .locals 1

    const-class v0, Lorg/light/device/DeviceInstance$SOC_CLASS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/device/DeviceInstance$SOC_CLASS;

    return-object p0
.end method

.method public static values()[Lorg/light/device/DeviceInstance$SOC_CLASS;
    .locals 1

    sget-object v0, Lorg/light/device/DeviceInstance$SOC_CLASS;->$VALUES:[Lorg/light/device/DeviceInstance$SOC_CLASS;

    invoke-virtual {v0}, [Lorg/light/device/DeviceInstance$SOC_CLASS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/device/DeviceInstance$SOC_CLASS;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOC_CLASS{value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/light/device/DeviceInstance$SOC_CLASS;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/light/device/DeviceInstance$SOC_CLASS;->score:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/light/device/DeviceInstance$SOC_CLASS;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
