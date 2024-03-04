.class public final enum Lcom/gyailib/library/GYDetectType$GenderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gyailib/library/GYDetectType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gyailib/library/GYDetectType$GenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gyailib/library/GYDetectType$GenderType;

.field public static final enum FEMALE:Lcom/gyailib/library/GYDetectType$GenderType;

.field public static final enum MALE:Lcom/gyailib/library/GYDetectType$GenderType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/gyailib/library/GYDetectType$GenderType;

    const-string v1, "FEMALE"

    const/4 v2, 0x0

    const-string v3, "female"

    invoke-direct {v0, v1, v2, v3}, Lcom/gyailib/library/GYDetectType$GenderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gyailib/library/GYDetectType$GenderType;->FEMALE:Lcom/gyailib/library/GYDetectType$GenderType;

    .line 2
    new-instance v1, Lcom/gyailib/library/GYDetectType$GenderType;

    const-string v3, "MALE"

    const/4 v4, 0x1

    const-string v5, "male"

    invoke-direct {v1, v3, v4, v5}, Lcom/gyailib/library/GYDetectType$GenderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gyailib/library/GYDetectType$GenderType;->MALE:Lcom/gyailib/library/GYDetectType$GenderType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/gyailib/library/GYDetectType$GenderType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/gyailib/library/GYDetectType$GenderType;->$VALUES:[Lcom/gyailib/library/GYDetectType$GenderType;

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
    iput-object p3, p0, Lcom/gyailib/library/GYDetectType$GenderType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gyailib/library/GYDetectType$GenderType;
    .locals 1

    const-class v0, Lcom/gyailib/library/GYDetectType$GenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gyailib/library/GYDetectType$GenderType;

    return-object p0
.end method

.method public static values()[Lcom/gyailib/library/GYDetectType$GenderType;
    .locals 1

    sget-object v0, Lcom/gyailib/library/GYDetectType$GenderType;->$VALUES:[Lcom/gyailib/library/GYDetectType$GenderType;

    invoke-virtual {v0}, [Lcom/gyailib/library/GYDetectType$GenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gyailib/library/GYDetectType$GenderType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gyailib/library/GYDetectType$GenderType;->value:Ljava/lang/String;

    return-object v0
.end method
