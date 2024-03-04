.class final enum Lxc/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxc/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lxc/a$a;

.field public static final enum b:Lxc/a$a;

.field public static final enum c:Lxc/a$a;

.field public static final enum d:Lxc/a$a;

.field private static final synthetic e:[Lxc/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lxc/a$a;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxc/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/a$a;->a:Lxc/a$a;

    new-instance v1, Lxc/a$a;

    const-string v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lxc/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxc/a$a;->b:Lxc/a$a;

    new-instance v3, Lxc/a$a;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lxc/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lxc/a$a;->c:Lxc/a$a;

    new-instance v5, Lxc/a$a;

    const-string v7, "PUT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lxc/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lxc/a$a;->d:Lxc/a$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lxc/a$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 2
    sput-object v7, Lxc/a$a;->e:[Lxc/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lxc/a$a;
    .locals 1

    const-class v0, Lxc/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxc/a$a;

    return-object p0
.end method

.method public static values()[Lxc/a$a;
    .locals 1

    sget-object v0, Lxc/a$a;->e:[Lxc/a$a;

    invoke-virtual {v0}, [Lxc/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxc/a$a;

    return-object v0
.end method
