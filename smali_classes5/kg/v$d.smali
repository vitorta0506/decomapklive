.class final enum Lkg/v$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkg/v$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lkg/v$d;

.field public static final enum b:Lkg/v$d;

.field private static final synthetic c:[Lkg/v$d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lkg/v$d;

    const-string v1, "Small"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkg/v$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkg/v$d;->a:Lkg/v$d;

    .line 2
    new-instance v1, Lkg/v$d;

    const-string v3, "Normal"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lkg/v$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkg/v$d;->b:Lkg/v$d;

    const/4 v3, 0x2

    new-array v3, v3, [Lkg/v$d;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lkg/v$d;->c:[Lkg/v$d;

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

.method public static valueOf(Ljava/lang/String;)Lkg/v$d;
    .locals 1

    const-class v0, Lkg/v$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkg/v$d;

    return-object p0
.end method

.method public static values()[Lkg/v$d;
    .locals 1

    sget-object v0, Lkg/v$d;->c:[Lkg/v$d;

    invoke-virtual {v0}, [Lkg/v$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkg/v$d;

    return-object v0
.end method