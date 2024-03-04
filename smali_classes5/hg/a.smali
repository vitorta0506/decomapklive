.class final Lhg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/x;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/x;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "addresses"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/x;

    iput-object p1, p0, Lhg/a;->a:Lio/grpc/x;

    .line 3
    iput-object p2, p0, Lhg/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Lio/grpc/x;
    .locals 1

    iget-object v0, p0, Lhg/a;->a:Lio/grpc/x;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lhg/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lhg/a;->a:Lio/grpc/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lhg/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "("

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhg/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
