.class Lm5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/c$a<",
            "Ljava/util/Map<",
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static b:Lio/grpc/s0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lio/grpc/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/c$a<",
            "Lm5/p0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "gax_dynamic_headers"

    .line 2
    invoke-static {v1, v0}, Lio/grpc/c$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/c$a;

    move-result-object v0

    sput-object v0, Lm5/d;->a:Lio/grpc/c$a;

    .line 3
    sget-object v0, Lio/grpc/s0;->e:Lio/grpc/s0$d;

    const-string v1, "x-goog-request-params"

    .line 4
    invoke-static {v1, v0}, Lio/grpc/s0$i;->e(Ljava/lang/String;Lio/grpc/s0$d;)Lio/grpc/s0$i;

    move-result-object v0

    sput-object v0, Lm5/d;->b:Lio/grpc/s0$i;

    const-string v0, "gax_metadata_handler"

    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lio/grpc/c$a;->c(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/c$a;

    move-result-object v0

    sput-object v0, Lm5/d;->c:Lio/grpc/c$a;

    return-void
.end method

.method static a(Lio/grpc/c;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/c;",
            ")",
            "Ljava/util/Map<",
            "Lio/grpc/s0$i<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lm5/d;->a:Lio/grpc/c$a;

    invoke-virtual {p0, v0}, Lio/grpc/c;->h(Lio/grpc/c$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static b(Lio/grpc/c;)Lm5/p0;
    .locals 1

    sget-object v0, Lm5/d;->c:Lio/grpc/c$a;

    invoke-virtual {p0, v0}, Lio/grpc/c;->h(Lio/grpc/c$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm5/p0;

    return-object p0
.end method
