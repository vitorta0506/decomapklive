.class public final Lio/grpc/alts/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/k$b;,
        Lio/grpc/alts/internal/k$f;,
        Lio/grpc/alts/internal/k$c;,
        Lio/grpc/alts/internal/k$d;,
        Lio/grpc/alts/internal/k$e;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lio/grpc/alts/internal/n;

.field public static final c:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Lio/grpc/alts/internal/j0;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lio/grpc/netty/shaded/io/netty/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/alts/internal/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/k;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/alts/internal/n;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lio/grpc/alts/internal/n;-><init>(I)V

    sput-object v0, Lio/grpc/alts/internal/k;->b:Lio/grpc/alts/internal/n;

    const-string v0, "TSI_PEER"

    .line 3
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/k;->c:Lio/grpc/a$c;

    const-string v0, "AUTH_CONTEXT_KEY"

    .line 4
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/k;->d:Lio/grpc/a$c;

    const-string v0, "https"

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    sput-object v0, Lio/grpc/alts/internal/k;->e:Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/k;->e:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method static synthetic b()Lio/grpc/alts/internal/n;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/k;->b:Lio/grpc/alts/internal/n;

    return-object v0
.end method

.method static synthetic c()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lio/grpc/alts/internal/k;->a:Ljava/util/logging/Logger;

    return-object v0
.end method
