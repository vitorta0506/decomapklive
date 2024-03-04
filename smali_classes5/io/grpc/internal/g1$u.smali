.class final enum Lio/grpc/internal/g1$u;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/internal/g1$u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/grpc/internal/g1$u;

.field public static final enum b:Lio/grpc/internal/g1$u;

.field public static final enum c:Lio/grpc/internal/g1$u;

.field private static final synthetic d:[Lio/grpc/internal/g1$u;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/internal/g1$u;

    const-string v1, "NO_RESOLUTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/g1$u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/g1$u;->a:Lio/grpc/internal/g1$u;

    .line 2
    new-instance v1, Lio/grpc/internal/g1$u;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/grpc/internal/g1$u;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/internal/g1$u;->b:Lio/grpc/internal/g1$u;

    .line 3
    new-instance v3, Lio/grpc/internal/g1$u;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/grpc/internal/g1$u;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/internal/g1$u;->c:Lio/grpc/internal/g1$u;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/internal/g1$u;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/internal/g1$u;->d:[Lio/grpc/internal/g1$u;

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

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/g1$u;
    .locals 1

    const-class v0, Lio/grpc/internal/g1$u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/g1$u;

    return-object p0
.end method

.method public static values()[Lio/grpc/internal/g1$u;
    .locals 1

    sget-object v0, Lio/grpc/internal/g1$u;->d:[Lio/grpc/internal/g1$u;

    invoke-virtual {v0}, [Lio/grpc/internal/g1$u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/g1$u;

    return-object v0
.end method
