.class public final enum Lorg/light/bean/PhoneType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/bean/PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/bean/PhoneType;

.field public static final enum LOW_PHONE:Lorg/light/bean/PhoneType;

.field public static final enum MIDDER_PHONE:Lorg/light/bean/PhoneType;

.field public static final enum SUPER_PHONE:Lorg/light/bean/PhoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/light/bean/PhoneType;

    const-string v1, "SUPER_PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/light/bean/PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/light/bean/PhoneType;->SUPER_PHONE:Lorg/light/bean/PhoneType;

    .line 2
    new-instance v1, Lorg/light/bean/PhoneType;

    const-string v3, "MIDDER_PHONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/light/bean/PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/light/bean/PhoneType;->MIDDER_PHONE:Lorg/light/bean/PhoneType;

    .line 3
    new-instance v3, Lorg/light/bean/PhoneType;

    const-string v5, "LOW_PHONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/light/bean/PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/light/bean/PhoneType;->LOW_PHONE:Lorg/light/bean/PhoneType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/light/bean/PhoneType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/light/bean/PhoneType;->$VALUES:[Lorg/light/bean/PhoneType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/light/bean/PhoneType;
    .locals 1

    const-class v0, Lorg/light/bean/PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/bean/PhoneType;

    return-object p0
.end method

.method public static values()[Lorg/light/bean/PhoneType;
    .locals 1

    sget-object v0, Lorg/light/bean/PhoneType;->$VALUES:[Lorg/light/bean/PhoneType;

    invoke-virtual {v0}, [Lorg/light/bean/PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/bean/PhoneType;

    return-object v0
.end method
