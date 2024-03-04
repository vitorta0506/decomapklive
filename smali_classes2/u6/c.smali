.class public Lu6/c;
.super Lcom/google/api/gax/rpc/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/g0<",
        "Lu6/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final t:Lcom/google/api/gax/rpc/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/x<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Lcom/google/api/gax/rpc/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/y<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/GetOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/api/gax/rpc/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/v<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/DeleteOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu6/c$a;

    invoke-direct {v0}, Lu6/c$a;-><init>()V

    sput-object v0, Lu6/c;->t:Lcom/google/api/gax/rpc/x;

    .line 2
    new-instance v0, Lu6/c$b;

    invoke-direct {v0}, Lu6/c$b;-><init>()V

    sput-object v0, Lu6/c;->u:Lcom/google/api/gax/rpc/y;

    return-void
.end method

.method protected constructor <init>(Lu6/c$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/g0;-><init>(Lcom/google/api/gax/rpc/g0$a;)V

    .line 2
    invoke-virtual {p1}, Lu6/c$c;->N()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object v0

    iput-object v0, p0, Lu6/c;->o:Lcom/google/api/gax/rpc/j0;

    .line 3
    invoke-virtual {p1}, Lu6/c$c;->P()Lcom/google/api/gax/rpc/v$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/v$b;->i()Lcom/google/api/gax/rpc/v;

    move-result-object v0

    iput-object v0, p0, Lu6/c;->p:Lcom/google/api/gax/rpc/v;

    .line 4
    invoke-virtual {p1}, Lu6/c$c;->K()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object v0

    iput-object v0, p0, Lu6/c;->q:Lcom/google/api/gax/rpc/j0;

    .line 5
    invoke-virtual {p1}, Lu6/c$c;->M()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object v0

    iput-object v0, p0, Lu6/c;->r:Lcom/google/api/gax/rpc/j0;

    .line 6
    invoke-virtual {p1}, Lu6/c$c;->Q()Lcom/google/api/gax/rpc/j0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object p1

    iput-object p1, p0, Lu6/c;->s:Lcom/google/api/gax/rpc/j0;

    return-void
.end method

.method static synthetic o()Lcom/google/api/gax/rpc/y;
    .locals 1

    sget-object v0, Lu6/c;->u:Lcom/google/api/gax/rpc/y;

    return-object v0
.end method

.method public static t()Lu6/c$c;
    .locals 1

    invoke-static {}, Lu6/c$c;->I()Lu6/c$c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public p()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/CancelOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c;->q:Lcom/google/api/gax/rpc/j0;

    return-object v0
.end method

.method public q()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/DeleteOperationRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c;->r:Lcom/google/api/gax/rpc/j0;

    return-object v0
.end method

.method public r()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/GetOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c;->o:Lcom/google/api/gax/rpc/j0;

    return-object v0
.end method

.method public s()Lcom/google/api/gax/rpc/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/v<",
            "Lcom/google/longrunning/ListOperationsRequest;",
            "Lcom/google/longrunning/ListOperationsResponse;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c;->p:Lcom/google/api/gax/rpc/v;

    return-object v0
.end method

.method public u()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/longrunning/WaitOperationRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu6/c;->s:Lcom/google/api/gax/rpc/j0;

    return-object v0
.end method
