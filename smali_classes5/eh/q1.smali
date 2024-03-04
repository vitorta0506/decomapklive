.class public final Leh/q1;
.super Lio/grpc/o0;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Leh/q1;->b:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/n0$d;)Lio/grpc/n0;
    .locals 1

    new-instance v0, Leh/p1;

    invoke-direct {v0, p1}, Leh/p1;-><init>(Lio/grpc/n0$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "least_request_experimental"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/util/Map;)Lio/grpc/t0$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/t0$c;"
        }
    .end annotation

    :try_start_0
    const-string v0, "choiceCount"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/internal/b1;->i(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Leh/q1;->b:Ljava/lang/Integer;

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 4
    sget-object v0, Lio/grpc/Status;->i:Lio/grpc/Status;

    const-string v1, "Invalid \'choiceCount\'"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v1, Leh/p1$c;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Leh/p1$c;-><init>(I)V

    invoke-static {v1}, Lio/grpc/t0$c;->a(Ljava/lang/Object;)Lio/grpc/t0$c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse least_request_experimental LB config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lio/grpc/t0$c;->b(Lio/grpc/Status;)Lio/grpc/t0$c;

    move-result-object p1

    return-object p1
.end method
