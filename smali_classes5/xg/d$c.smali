.class final enum Lxg/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxg/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lxg/d$c;

.field public static final enum b:Lxg/d$c;

.field private static final synthetic c:[Lxg/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lxg/d$c;

    const-string v1, "TLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxg/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxg/d$c;->a:Lxg/d$c;

    .line 2
    new-instance v1, Lxg/d$c;

    const-string v3, "PLAINTEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lxg/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxg/d$c;->b:Lxg/d$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lxg/d$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lxg/d$c;->c:[Lxg/d$c;

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

.method public static valueOf(Ljava/lang/String;)Lxg/d$c;
    .locals 1

    const-class v0, Lxg/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxg/d$c;

    return-object p0
.end method

.method public static values()[Lxg/d$c;
    .locals 1

    sget-object v0, Lxg/d$c;->c:[Lxg/d$c;

    invoke-virtual {v0}, [Lxg/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxg/d$c;

    return-object v0
.end method
