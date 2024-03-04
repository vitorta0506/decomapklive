.class public Lm5/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
.field private a:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/api/gax/rpc/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/z<",
            "TRequestT;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm5/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm5/q$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lm5/q$b;)Lio/grpc/MethodDescriptor;
    .locals 0

    iget-object p0, p0, Lm5/q$b;->a:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method static synthetic b(Lm5/q$b;)Lcom/google/api/gax/rpc/z;
    .locals 0

    iget-object p0, p0, Lm5/q$b;->b:Lcom/google/api/gax/rpc/z;

    return-object p0
.end method

.method static synthetic c(Lm5/q$b;)Z
    .locals 0

    iget-boolean p0, p0, Lm5/q$b;->c:Z

    return p0
.end method


# virtual methods
.method public d()Lm5/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lm5/q<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    new-instance v0, Lm5/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm5/q;-><init>(Lm5/q$b;Lm5/q$a;)V

    return-object v0
.end method

.method public e(Lio/grpc/MethodDescriptor;)Lm5/q$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;)",
            "Lm5/q$b<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    iput-object p1, p0, Lm5/q$b;->a:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method public f(Lcom/google/api/gax/rpc/z;)Lm5/q$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/z<",
            "TRequestT;>;)",
            "Lm5/q$b<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    iput-object p1, p0, Lm5/q$b;->b:Lcom/google/api/gax/rpc/z;

    return-object p0
.end method

.method public g(Z)Lm5/q$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lm5/q$b<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lm5/q$b;->c:Z

    return-object p0
.end method
