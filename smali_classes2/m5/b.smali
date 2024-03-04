.class final Lm5/b;
.super Lm5/f0;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/Status$Code;


# direct methods
.method constructor <init>(Lio/grpc/Status$Code;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm5/f0;-><init>()V

    const-string v0, "Null transportCode"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lm5/b;->a:Lio/grpc/Status$Code;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/Status$Code;
    .locals 1

    iget-object v0, p0, Lm5/b;->a:Lio/grpc/Status$Code;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lm5/f0;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lm5/f0;

    .line 3
    iget-object v0, p0, Lm5/b;->a:Lio/grpc/Status$Code;

    invoke-virtual {p1}, Lm5/f0;->a()Lio/grpc/Status$Code;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lm5/b;->a:Lio/grpc/Status$Code;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrpcStatusCode{transportCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm5/b;->a:Lio/grpc/Status$Code;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
