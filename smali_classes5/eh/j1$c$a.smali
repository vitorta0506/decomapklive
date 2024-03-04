.class final enum Leh/j1$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/j1$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leh/j1$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Leh/j1$c$a;

.field public static final enum b:Leh/j1$c$a;

.field public static final enum c:Leh/j1$c$a;

.field private static final synthetic d:[Leh/j1$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Leh/j1$c$a;

    const-string v1, "HUNDRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leh/j1$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leh/j1$c$a;->a:Leh/j1$c$a;

    new-instance v1, Leh/j1$c$a;

    const-string v3, "TEN_THOUSAND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leh/j1$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leh/j1$c$a;->b:Leh/j1$c$a;

    new-instance v3, Leh/j1$c$a;

    const-string v5, "MILLION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leh/j1$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leh/j1$c$a;->c:Leh/j1$c$a;

    const/4 v5, 0x3

    new-array v5, v5, [Leh/j1$c$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Leh/j1$c$a;->d:[Leh/j1$c$a;

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

.method public static valueOf(Ljava/lang/String;)Leh/j1$c$a;
    .locals 1

    const-class v0, Leh/j1$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leh/j1$c$a;

    return-object p0
.end method

.method public static values()[Leh/j1$c$a;
    .locals 1

    sget-object v0, Leh/j1$c$a;->d:[Leh/j1$c$a;

    invoke-virtual {v0}, [Leh/j1$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leh/j1$c$a;

    return-object v0
.end method
