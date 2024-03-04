.class final enum Lig/m0$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lig/m0$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lig/m0$f;

.field public static final enum b:Lig/m0$f;

.field private static final synthetic c:[Lig/m0$f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lig/m0$f;

    const-string v1, "NIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lig/m0$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lig/m0$f;->a:Lig/m0$f;

    .line 2
    new-instance v1, Lig/m0$f;

    const-string v3, "EPOLL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lig/m0$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lig/m0$f;->b:Lig/m0$f;

    const/4 v3, 0x2

    new-array v3, v3, [Lig/m0$f;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lig/m0$f;->c:[Lig/m0$f;

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

.method public static valueOf(Ljava/lang/String;)Lig/m0$f;
    .locals 1

    const-class v0, Lig/m0$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lig/m0$f;

    return-object p0
.end method

.method public static values()[Lig/m0$f;
    .locals 1

    sget-object v0, Lig/m0$f;->c:[Lig/m0$f;

    invoke-virtual {v0}, [Lig/m0$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lig/m0$f;

    return-object v0
.end method
