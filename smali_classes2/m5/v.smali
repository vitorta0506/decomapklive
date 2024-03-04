.class Lm5/v;
.super Lcom/google/api/gax/rpc/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/k0<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lio/grpc/MethodDescriptor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/k0;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/MethodDescriptor;

    iput-object p1, p0, Lm5/v;->a:Lio/grpc/MethodDescriptor;

    .line 3
    iput-boolean p2, p0, Lm5/v;->b:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lm5/v;->a:Lio/grpc/MethodDescriptor;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "direct(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
