.class final enum Lcom/tencent/xmagic/auth/Auth$BindType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/auth/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BindType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/xmagic/auth/Auth$BindType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/xmagic/auth/Auth$BindType;

.field public static final enum APP:Lcom/tencent/xmagic/auth/Auth$BindType;

.field public static final enum DEVICE:Lcom/tencent/xmagic/auth/Auth$BindType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/tencent/xmagic/auth/Auth$BindType;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/xmagic/auth/Auth$BindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/xmagic/auth/Auth$BindType;->APP:Lcom/tencent/xmagic/auth/Auth$BindType;

    .line 2
    new-instance v1, Lcom/tencent/xmagic/auth/Auth$BindType;

    const-string v3, "DEVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/tencent/xmagic/auth/Auth$BindType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/tencent/xmagic/auth/Auth$BindType;->DEVICE:Lcom/tencent/xmagic/auth/Auth$BindType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/tencent/xmagic/auth/Auth$BindType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/tencent/xmagic/auth/Auth$BindType;->$VALUES:[Lcom/tencent/xmagic/auth/Auth$BindType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/xmagic/auth/Auth$BindType;
    .locals 1

    const-class v0, Lcom/tencent/xmagic/auth/Auth$BindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/xmagic/auth/Auth$BindType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/xmagic/auth/Auth$BindType;
    .locals 1

    sget-object v0, Lcom/tencent/xmagic/auth/Auth$BindType;->$VALUES:[Lcom/tencent/xmagic/auth/Auth$BindType;

    invoke-virtual {v0}, [Lcom/tencent/xmagic/auth/Auth$BindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/xmagic/auth/Auth$BindType;

    return-object v0
.end method
