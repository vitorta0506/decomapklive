.class final Lm5/c;
.super Lm5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/c$b;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/q0;


# direct methods
.method private constructor <init>(Lio/grpc/q0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lm5/h0;-><init>()V

    .line 3
    iput-object p1, p0, Lm5/c;->a:Lio/grpc/q0;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/q0;Lm5/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/c;-><init>(Lio/grpc/q0;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lm5/h0;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lm5/h0;

    .line 3
    iget-object v0, p0, Lm5/c;->a:Lio/grpc/q0;

    invoke-virtual {p1}, Lm5/h0;->k()Lio/grpc/q0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lm5/c;->a:Lio/grpc/q0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method k()Lio/grpc/q0;
    .locals 1

    iget-object v0, p0, Lm5/c;->a:Lio/grpc/q0;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrpcTransportChannel{managedChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm5/c;->a:Lio/grpc/q0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
