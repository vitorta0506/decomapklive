.class abstract enum Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

.field public static final enum d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

.field public static final enum e:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

.field private static final synthetic f:[Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;


# instance fields
.field final a:Z

.field final b:Lpg/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$a;

    sget-object v1, Lpg/a;->k:Lpg/a$c;

    const-string v2, "TCNATIVE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$a;-><init>(Ljava/lang/String;IZLpg/a$c;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    .line 2
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$b;

    const-string v5, "CONSCRYPT"

    invoke-direct {v2, v5, v4, v4, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$b;-><init>(Ljava/lang/String;IZLpg/a$c;)V

    sput-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    .line 3
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$c;

    sget-object v5, Lpg/a;->j:Lpg/a$c;

    const-string v6, "JDK"

    const/4 v7, 0x2

    invoke-direct {v1, v6, v7, v3, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l$c;-><init>(Ljava/lang/String;IZLpg/a$c;)V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    aput-object v0, v5, v3

    aput-object v2, v5, v4

    aput-object v1, v5, v7

    .line 4
    sput-object v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->f:[Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLpg/a$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lpg/a$c;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->a:Z

    .line 4
    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->b:Lpg/a$c;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZLpg/a$c;Lio/grpc/netty/shaded/io/netty/handler/ssl/t1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;-><init>(Ljava/lang/String;IZLpg/a$c;)V

    return-void
.end method

.method static c(Ljavax/net/ssl/SSLEngine;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
    .locals 1

    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;

    if-eqz v0, :cond_0

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    goto :goto_0

    :cond_0
    instance-of p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/k;

    if-eqz p0, :cond_1

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    goto :goto_0

    :cond_1
    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->e:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    return-object p0
.end method

.method public static values()[Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->f:[Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    invoke-virtual {v0}, [Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$l;

    return-object v0
.end method


# virtual methods
.method abstract a(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lkg/k;II)Lkg/j;
.end method

.method abstract b(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)I
.end method

.method abstract d(Ljavax/net/ssl/SSLEngine;)Z
.end method

.method abstract e(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lkg/j;ILkg/j;)Ljavax/net/ssl/SSLEngineResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method
