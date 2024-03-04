.class final enum Lhd/c$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhd/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lhd/c$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lhd/c$c;

.field public static final enum b:Lhd/c$c;

.field public static final enum c:Lhd/c$c;

.field private static final synthetic d:[Lhd/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lhd/c$c;

    const-string v1, "Width"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lhd/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhd/c$c;->a:Lhd/c$c;

    new-instance v1, Lhd/c$c;

    const-string v3, "Height"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lhd/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lhd/c$c;->b:Lhd/c$c;

    new-instance v3, Lhd/c$c;

    const-string v5, "Radius"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lhd/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lhd/c$c;->c:Lhd/c$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lhd/c$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lhd/c$c;->d:[Lhd/c$c;

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

.method public static valueOf(Ljava/lang/String;)Lhd/c$c;
    .locals 1

    const-class v0, Lhd/c$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lhd/c$c;

    return-object p0
.end method

.method public static values()[Lhd/c$c;
    .locals 1

    sget-object v0, Lhd/c$c;->d:[Lhd/c$c;

    invoke-virtual {v0}, [Lhd/c$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhd/c$c;

    return-object v0
.end method
