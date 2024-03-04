.class public Lu6/a;
.super Lu6/b;
.source "SourceFile"


# static fields
.field private static final i:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/longrunning/GetOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/longrunning/DeleteOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ll5/d;

.field private final b:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/longrunning/GetOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/longrunning/DeleteOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lm5/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 2
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v2, "google.longrunning.Operations/GetOperation"

    .line 3
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/longrunning/GetOperationRequest;->getDefaultInstance()Lcom/google/longrunning/GetOperationRequest;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/longrunning/Operation;->getDefaultInstance()Lcom/google/longrunning/Operation;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu6/a;->i:Lio/grpc/MethodDescriptor;

    .line 7
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v2, "google.longrunning.Operations/ListOperations"

    .line 9
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/longrunning/ListOperationsRequest;->getDefaultInstance()Lcom/google/longrunning/ListOperationsRequest;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/longrunning/ListOperationsResponse;->getDefaultInstance()Lcom/google/longrunning/ListOperationsResponse;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu6/a;->j:Lio/grpc/MethodDescriptor;

    .line 15
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v2, "google.longrunning.Operations/CancelOperation"

    .line 17
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/google/longrunning/CancelOperationRequest;->getDefaultInstance()Lcom/google/longrunning/CancelOperationRequest;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 20
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu6/a;->k:Lio/grpc/MethodDescriptor;

    .line 22
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v2, "google.longrunning.Operations/DeleteOperation"

    .line 24
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/google/longrunning/DeleteOperationRequest;->getDefaultInstance()Lcom/google/longrunning/DeleteOperationRequest;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu6/a;->l:Lio/grpc/MethodDescriptor;

    .line 29
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v1, "google.longrunning.Operations/WaitOperation"

    .line 31
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/google/longrunning/WaitOperationRequest;->getDefaultInstance()Lcom/google/longrunning/WaitOperationRequest;

    move-result-object v1

    invoke-static {v1}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/google/longrunning/Operation;->getDefaultInstance()Lcom/google/longrunning/Operation;

    move-result-object v1

    invoke-static {v1}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu6/a;->m:Lio/grpc/MethodDescriptor;

    return-void
.end method

.method protected constructor <init>(Lu6/c;Lcom/google/api/gax/rpc/j;Lm5/g0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lu6/b;-><init>()V

    .line 2
    iput-object p3, p0, Lu6/a;->h:Lm5/g0;

    .line 3
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v0

    sget-object v1, Lu6/a;->i:Lio/grpc/MethodDescriptor;

    .line 4
    invoke-virtual {v0, v1}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v0

    new-instance v1, Lu6/a$a;

    invoke-direct {v1, p0}, Lu6/a$a;-><init>(Lu6/a;)V

    .line 5
    invoke-virtual {v0, v1}, Lm5/q$b;->f(Lcom/google/api/gax/rpc/z;)Lm5/q$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lm5/q$b;->d()Lm5/q;

    move-result-object v0

    .line 7
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v1

    sget-object v2, Lu6/a;->j:Lio/grpc/MethodDescriptor;

    .line 8
    invoke-virtual {v1, v2}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v1

    new-instance v2, Lu6/a$b;

    invoke-direct {v2, p0}, Lu6/a$b;-><init>(Lu6/a;)V

    .line 9
    invoke-virtual {v1, v2}, Lm5/q$b;->f(Lcom/google/api/gax/rpc/z;)Lm5/q$b;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lm5/q$b;->d()Lm5/q;

    move-result-object v1

    .line 11
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v2

    sget-object v3, Lu6/a;->k:Lio/grpc/MethodDescriptor;

    .line 12
    invoke-virtual {v2, v3}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v2

    new-instance v3, Lu6/a$c;

    invoke-direct {v3, p0}, Lu6/a$c;-><init>(Lu6/a;)V

    .line 13
    invoke-virtual {v2, v3}, Lm5/q$b;->f(Lcom/google/api/gax/rpc/z;)Lm5/q$b;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lm5/q$b;->d()Lm5/q;

    move-result-object v2

    .line 15
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v3

    sget-object v4, Lu6/a;->l:Lio/grpc/MethodDescriptor;

    .line 16
    invoke-virtual {v3, v4}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v3

    new-instance v4, Lu6/a$d;

    invoke-direct {v4, p0}, Lu6/a$d;-><init>(Lu6/a;)V

    .line 17
    invoke-virtual {v3, v4}, Lm5/q$b;->f(Lcom/google/api/gax/rpc/z;)Lm5/q$b;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lm5/q$b;->d()Lm5/q;

    move-result-object v3

    .line 19
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v4

    sget-object v5, Lu6/a;->m:Lio/grpc/MethodDescriptor;

    .line 20
    invoke-virtual {v4, v5}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v4

    new-instance v5, Lu6/a$e;

    invoke-direct {v5, p0}, Lu6/a$e;-><init>(Lu6/a;)V

    .line 21
    invoke-virtual {v4, v5}, Lm5/q$b;->f(Lcom/google/api/gax/rpc/z;)Lm5/q$b;

    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lm5/q$b;->d()Lm5/q;

    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lu6/c;->r()Lcom/google/api/gax/rpc/j0;

    move-result-object v5

    .line 24
    invoke-interface {p3, v0, v5, p2}, Lm5/g0;->c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object v0

    iput-object v0, p0, Lu6/a;->b:Lcom/google/api/gax/rpc/k0;

    .line 25
    invoke-virtual {p1}, Lu6/c;->s()Lcom/google/api/gax/rpc/v;

    move-result-object v0

    .line 26
    invoke-interface {p3, v1, v0, p2}, Lm5/g0;->c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object v0

    iput-object v0, p0, Lu6/a;->c:Lcom/google/api/gax/rpc/k0;

    .line 27
    invoke-virtual {p1}, Lu6/c;->s()Lcom/google/api/gax/rpc/v;

    move-result-object v0

    .line 28
    invoke-interface {p3, v1, v0, p2}, Lm5/g0;->d(Lm5/q;Lcom/google/api/gax/rpc/v;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object v0

    iput-object v0, p0, Lu6/a;->d:Lcom/google/api/gax/rpc/k0;

    .line 29
    invoke-virtual {p1}, Lu6/c;->p()Lcom/google/api/gax/rpc/j0;

    move-result-object v0

    .line 30
    invoke-interface {p3, v2, v0, p2}, Lm5/g0;->c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object v0

    iput-object v0, p0, Lu6/a;->e:Lcom/google/api/gax/rpc/k0;

    .line 31
    invoke-virtual {p1}, Lu6/c;->q()Lcom/google/api/gax/rpc/j0;

    move-result-object v0

    .line 32
    invoke-interface {p3, v3, v0, p2}, Lm5/g0;->c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object v0

    iput-object v0, p0, Lu6/a;->f:Lcom/google/api/gax/rpc/k0;

    .line 33
    invoke-virtual {p1}, Lu6/c;->u()Lcom/google/api/gax/rpc/j0;

    move-result-object p1

    .line 34
    invoke-interface {p3, v4, p1, p2}, Lm5/g0;->c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object p1

    iput-object p1, p0, Lu6/a;->g:Lcom/google/api/gax/rpc/k0;

    .line 35
    new-instance p1, Ll5/e;

    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->b()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ll5/e;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lu6/a;->a:Ll5/d;

    return-void
.end method

.method public static final a(Lcom/google/api/gax/rpc/j;Lm5/g0;)Lu6/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lu6/a;

    .line 2
    invoke-static {}, Lu6/c;->t()Lu6/c$c;

    move-result-object v1

    invoke-virtual {v1}, Lu6/c$c;->J()Lu6/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lu6/a;-><init>(Lu6/c;Lcom/google/api/gax/rpc/j;Lm5/g0;)V

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lu6/a;->shutdown()V

    return-void
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lu6/a;->a:Ll5/d;

    invoke-interface {v0}, Ll5/d;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lu6/a;->a:Ll5/d;

    invoke-interface {v0}, Ll5/d;->shutdown()V

    return-void
.end method
