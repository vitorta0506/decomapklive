.class final Lm5/c$b;
.super Lm5/h0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Lio/grpc/q0;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm5/h0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lm5/h0;
    .locals 3

    .line 1
    iget-object v0, p0, Lm5/c$b;->a:Lio/grpc/q0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lm5/c;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lm5/c;-><init>(Lio/grpc/q0;Lm5/c$a;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " managedChannel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lio/grpc/q0;)Lm5/h0$a;
    .locals 1

    const-string v0, "Null managedChannel"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lm5/c$b;->a:Lio/grpc/q0;

    return-object p0
.end method
