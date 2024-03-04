.class public final Lhg/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;>;"
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

.field public static final e:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    const-string v1, "lb-token"

    .line 2
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v0

    sput-object v0, Lhg/e;->a:Lio/grpc/s0$i;

    .line 3
    invoke-static {v1}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lhg/e;->b:Lio/grpc/a$c;

    const-string v0, "io.grpc.grpclb.lbAddrs"

    .line 4
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lhg/e;->c:Lio/grpc/a$c;

    const-string v0, "io.grpc.grpclb.lbAddrAuthority"

    .line 5
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lhg/e;->d:Lio/grpc/a$c;

    const-string v0, "io.grpc.grpclb.lbProvidedBackend"

    .line 6
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lhg/e;->e:Lio/grpc/a$c;

    return-void
.end method
