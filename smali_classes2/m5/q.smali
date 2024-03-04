.class public Lm5/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field private final b:Lcom/google/api/gax/rpc/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/z<",
            "TRequestT;>;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method private constructor <init>(Lm5/q$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/q$b<",
            "TRequestT;TResponseT;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lm5/q$b;->a(Lm5/q$b;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    iput-object v0, p0, Lm5/q;->a:Lio/grpc/MethodDescriptor;

    .line 4
    invoke-static {p1}, Lm5/q$b;->b(Lm5/q$b;)Lcom/google/api/gax/rpc/z;

    move-result-object v0

    iput-object v0, p0, Lm5/q;->b:Lcom/google/api/gax/rpc/z;

    .line 5
    invoke-static {p1}, Lm5/q$b;->c(Lm5/q$b;)Z

    move-result p1

    iput-boolean p1, p0, Lm5/q;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lm5/q$b;Lm5/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm5/q;-><init>(Lm5/q$b;)V

    return-void
.end method

.method public static c()Lm5/q$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">()",
            "Lm5/q$b<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lm5/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm5/q$b;-><init>(Lm5/q$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm5/q$b;->g(Z)Lm5/q$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lio/grpc/MethodDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    iget-object v0, p0, Lm5/q;->a:Lio/grpc/MethodDescriptor;

    return-object v0
.end method

.method public b()Lcom/google/api/gax/rpc/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/z<",
            "TRequestT;>;"
        }
    .end annotation

    iget-object v0, p0, Lm5/q;->b:Lcom/google/api/gax/rpc/z;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lm5/q;->c:Z

    return v0
.end method
