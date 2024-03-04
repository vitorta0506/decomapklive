.class public Lu5/d;
.super Lcom/google/api/gax/rpc/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu5/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/g0<",
        "Lu5/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final s:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final o:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/cloud/speech/v1/RecognizeRequest;",
            "Lcom/google/cloud/speech/v1/RecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/api/gax/rpc/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/api/gax/rpc/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/s<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeResponse;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/api/gax/rpc/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/f0<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    const-string v1, "https://www.googleapis.com/auth/cloud-platform"

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lu5/d;->s:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method protected constructor <init>(Lu5/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/g0;-><init>(Lcom/google/api/gax/rpc/g0$a;)V

    .line 2
    invoke-virtual {p1}, Lu5/d$a;->O()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object v0

    iput-object v0, p0, Lu5/d;->o:Lcom/google/api/gax/rpc/j0;

    .line 3
    invoke-virtual {p1}, Lu5/d$a;->N()Lcom/google/api/gax/rpc/j0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/j0$a;->c()Lcom/google/api/gax/rpc/j0;

    move-result-object v0

    iput-object v0, p0, Lu5/d;->p:Lcom/google/api/gax/rpc/j0;

    .line 4
    invoke-virtual {p1}, Lu5/d$a;->M()Lcom/google/api/gax/rpc/s$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/gax/rpc/s$b;->a()Lcom/google/api/gax/rpc/s;

    move-result-object v0

    iput-object v0, p0, Lu5/d;->q:Lcom/google/api/gax/rpc/s;

    .line 5
    invoke-virtual {p1}, Lu5/d$a;->P()Lcom/google/api/gax/rpc/f0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/gax/rpc/f0$a;->a()Lcom/google/api/gax/rpc/f0;

    move-result-object p1

    iput-object p1, p0, Lu5/d;->r:Lcom/google/api/gax/rpc/f0;

    return-void
.end method

.method public static p()Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->newBuilder()Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;

    move-result-object v0

    const-class v1, Lu5/d;

    .line 2
    invoke-static {v1}, Ll5/k;->c(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gapic"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;

    move-result-object v0

    .line 3
    invoke-static {}, Lm5/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lm5/n;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;

    move-result-object v0

    return-object v0
.end method

.method public static q()Ll5/l$a;
    .locals 2

    .line 1
    invoke-static {}, Ll5/l;->f()Ll5/l$a;

    move-result-object v0

    sget-object v1, Lu5/d;->s:Lcom/google/common/collect/ImmutableList;

    .line 2
    invoke-virtual {v0, v1}, Ll5/l$a;->g(Ljava/util/List;)Ll5/l$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ll5/l$a;->h(Z)Ll5/l$a;

    move-result-object v0

    return-object v0
.end method

.method public static r()Lm5/k0$b;
    .locals 2

    .line 1
    invoke-static {}, Lm5/k0;->L()Lm5/k0$b;

    move-result-object v0

    const v1, 0x7fffffff

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm5/k0$b;->y(Ljava/lang/Integer;)Lm5/k0$b;

    move-result-object v0

    return-object v0
.end method

.method public static s()Lcom/google/api/gax/rpc/i0;
    .locals 1

    invoke-static {}, Lu5/d;->r()Lm5/k0$b;

    move-result-object v0

    invoke-virtual {v0}, Lm5/k0$b;->t()Lm5/k0;

    move-result-object v0

    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    const-string v0, "speech.googleapis.com:443"

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    const-string v0, "speech.mtls.googleapis.com:443"

    return-object v0
.end method

.method public static x()Lu5/d$a;
    .locals 1

    invoke-static {}, Lu5/d$a;->I()Lu5/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static y(Lcom/google/api/gax/rpc/j;)Lu5/d$a;
    .locals 1

    new-instance v0, Lu5/d$a;

    invoke-direct {v0, p0}, Lu5/d$a;-><init>(Lcom/google/api/gax/rpc/j;)V

    return-object v0
.end method


# virtual methods
.method public A()Lcom/google/api/gax/rpc/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/f0<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->r:Lcom/google/api/gax/rpc/f0;

    return-object v0
.end method

.method public o()Lu5/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->n()Lcom/google/api/gax/rpc/i0;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/api/gax/rpc/i0;->getTransportName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lm5/h0;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lu5/b;->d(Lu5/d;)Lu5/b;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->n()Lcom/google/api/gax/rpc/i0;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/api/gax/rpc/i0;->getTransportName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Transport not supported: %s"

    .line 7
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v()Lcom/google/api/gax/rpc/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/s<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeResponse;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->q:Lcom/google/api/gax/rpc/s;

    return-object v0
.end method

.method public w()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->p:Lcom/google/api/gax/rpc/j0;

    return-object v0
.end method

.method public z()Lcom/google/api/gax/rpc/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/j0<",
            "Lcom/google/cloud/speech/v1/RecognizeRequest;",
            "Lcom/google/cloud/speech/v1/RecognizeResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/d;->o:Lcom/google/api/gax/rpc/j0;

    return-object v0
.end method
