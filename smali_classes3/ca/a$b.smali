.class final enum Lca/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lca/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lca/a$b;

.field public static final enum b:Lca/a$b;

.field public static final enum c:Lca/a$b;

.field private static final synthetic d:[Lca/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lca/a$b;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lca/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lca/a$b;->a:Lca/a$b;

    new-instance v1, Lca/a$b;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lca/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lca/a$b;->b:Lca/a$b;

    new-instance v3, Lca/a$b;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lca/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lca/a$b;->c:Lca/a$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lca/a$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lca/a$b;->d:[Lca/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lca/a$b;
    .locals 1

    const-class v0, Lca/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lca/a$b;

    return-object p0
.end method

.method public static values()[Lca/a$b;
    .locals 1

    sget-object v0, Lca/a$b;->d:[Lca/a$b;

    invoke-virtual {v0}, [Lca/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lca/a$b;

    return-object v0
.end method
