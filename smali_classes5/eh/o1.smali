.class public final Leh/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Lih/f;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;>;"
        }
    .end annotation
.end field

.field static final c:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Leh/s2$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final e:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Leh/t1;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "io.grpc.xds.internal.sds.SslContextProviderSupplier"

    .line 1
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->a:Lio/grpc/a$c;

    const-string v0, "io.grpc.xds.InternalXdsAttributes.xdsClientPool"

    .line 2
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->b:Lio/grpc/a$c;

    const-string v0, "io.grpc.xds.InternalXdsAttributes.callCounterProvider"

    .line 3
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->c:Lio/grpc/a$c;

    const-string v0, "io.grpc.xds.InternalXdsAttributes.clusterName"

    .line 4
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->d:Lio/grpc/a$c;

    const-string v0, "io.grpc.xds.InternalXdsAttributes.locality"

    .line 5
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->e:Lio/grpc/a$c;

    const-string v0, "io.grpc.xds.InternalXdsAttributes.serverWeight"

    .line 6
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->f:Lio/grpc/a$c;

    const-string v0, "io.grpc.xds.InternalXdsAttributes.filterChainSelectorManager"

    .line 7
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->g:Lio/grpc/a$c;

    const-string v0, "io.grpc.xds.InternalXdsAttributes.drainGraceTime"

    .line 8
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/o1;->h:Lio/grpc/a$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
