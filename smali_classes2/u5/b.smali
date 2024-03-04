.class public Lu5/b;
.super Lu5/c;
.source "SourceFile"


# static fields
.field private static final h:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/cloud/speech/v1/RecognizeRequest;",
            "Lcom/google/cloud/speech/v1/RecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/cloud/speech/v1/RecognizeRequest;",
            "Lcom/google/cloud/speech/v1/RecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/api/gax/rpc/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/t<",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeResponse;",
            "Lcom/google/cloud/speech/v1/LongRunningRecognizeMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/api/gax/rpc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/h<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ll5/d;

.field private final f:Lu6/a;

.field private final g:Lm5/g0;


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

    const-string v2, "google.cloud.speech.v1.Speech/Recognize"

    .line 3
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/cloud/speech/v1/RecognizeRequest;->getDefaultInstance()Lcom/google/cloud/speech/v1/RecognizeRequest;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/google/cloud/speech/v1/RecognizeResponse;->getDefaultInstance()Lcom/google/cloud/speech/v1/RecognizeResponse;

    move-result-object v2

    invoke-static {v2}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu5/b;->h:Lio/grpc/MethodDescriptor;

    .line 7
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v1, "google.cloud.speech.v1.Speech/LongRunningRecognize"

    .line 9
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;->getDefaultInstance()Lcom/google/cloud/speech/v1/LongRunningRecognizeRequest;

    move-result-object v1

    invoke-static {v1}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/google/longrunning/Operation;->getDefaultInstance()Lcom/google/longrunning/Operation;

    move-result-object v1

    invoke-static {v1}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu5/b;->i:Lio/grpc/MethodDescriptor;

    .line 14
    invoke-static {}, Lio/grpc/MethodDescriptor;->h()Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    sget-object v1, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 15
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->g(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    const-string v1, "google.cloud.speech.v1.Speech/StreamingRecognize"

    .line 16
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->b(Ljava/lang/String;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;->getDefaultInstance()Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;

    move-result-object v1

    invoke-static {v1}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->c(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;->getDefaultInstance()Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;

    move-result-object v1

    invoke-static {v1}, Lzg/a;->a(Lcom/google/protobuf/l1;)Lio/grpc/MethodDescriptor$c;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/grpc/MethodDescriptor$b;->d(Lio/grpc/MethodDescriptor$c;)Lio/grpc/MethodDescriptor$b;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$b;->a()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lu5/b;->j:Lio/grpc/MethodDescriptor;

    return-void
.end method

.method protected constructor <init>(Lu5/d;Lcom/google/api/gax/rpc/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lu5/a;

    invoke-direct {v0}, Lu5/a;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lu5/b;-><init>(Lu5/d;Lcom/google/api/gax/rpc/j;Lm5/g0;)V

    return-void
.end method

.method protected constructor <init>(Lu5/d;Lcom/google/api/gax/rpc/j;Lm5/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lu5/c;-><init>()V

    .line 3
    iput-object p3, p0, Lu5/b;->g:Lm5/g0;

    .line 4
    invoke-static {p2, p3}, Lu6/a;->a(Lcom/google/api/gax/rpc/j;Lm5/g0;)Lu6/a;

    move-result-object v0

    iput-object v0, p0, Lu5/b;->f:Lu6/a;

    .line 5
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v1

    sget-object v2, Lu5/b;->h:Lio/grpc/MethodDescriptor;

    .line 6
    invoke-virtual {v1, v2}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lm5/q$b;->d()Lm5/q;

    move-result-object v1

    .line 8
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v2

    sget-object v3, Lu5/b;->i:Lio/grpc/MethodDescriptor;

    .line 9
    invoke-virtual {v2, v3}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lm5/q$b;->d()Lm5/q;

    move-result-object v2

    .line 11
    invoke-static {}, Lm5/q;->c()Lm5/q$b;

    move-result-object v3

    sget-object v4, Lu5/b;->j:Lio/grpc/MethodDescriptor;

    .line 12
    invoke-virtual {v3, v4}, Lm5/q$b;->e(Lio/grpc/MethodDescriptor;)Lm5/q$b;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lm5/q$b;->d()Lm5/q;

    move-result-object v3

    .line 14
    invoke-virtual {p1}, Lu5/d;->z()Lcom/google/api/gax/rpc/j0;

    move-result-object v4

    .line 15
    invoke-interface {p3, v1, v4, p2}, Lm5/g0;->c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object v1

    iput-object v1, p0, Lu5/b;->a:Lcom/google/api/gax/rpc/k0;

    .line 16
    invoke-virtual {p1}, Lu5/d;->w()Lcom/google/api/gax/rpc/j0;

    move-result-object v1

    .line 17
    invoke-interface {p3, v2, v1, p2}, Lm5/g0;->c(Lm5/q;Lcom/google/api/gax/rpc/j0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/k0;

    move-result-object v1

    iput-object v1, p0, Lu5/b;->b:Lcom/google/api/gax/rpc/k0;

    .line 18
    invoke-virtual {p1}, Lu5/d;->v()Lcom/google/api/gax/rpc/s;

    move-result-object v1

    .line 19
    invoke-interface {p3, v2, v1, p2, v0}, Lm5/g0;->a(Lm5/q;Lcom/google/api/gax/rpc/s;Lcom/google/api/gax/rpc/j;Lu6/b;)Lcom/google/api/gax/rpc/t;

    move-result-object v0

    iput-object v0, p0, Lu5/b;->c:Lcom/google/api/gax/rpc/t;

    .line 20
    invoke-virtual {p1}, Lu5/d;->A()Lcom/google/api/gax/rpc/f0;

    move-result-object p1

    .line 21
    invoke-interface {p3, v3, p1, p2}, Lm5/g0;->b(Lm5/q;Lcom/google/api/gax/rpc/f0;Lcom/google/api/gax/rpc/j;)Lcom/google/api/gax/rpc/h;

    move-result-object p1

    iput-object p1, p0, Lu5/b;->d:Lcom/google/api/gax/rpc/h;

    .line 22
    new-instance p1, Ll5/e;

    .line 23
    invoke-virtual {p2}, Lcom/google/api/gax/rpc/j;->b()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ll5/e;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lu5/b;->e:Ll5/d;

    return-void
.end method

.method public static final d(Lu5/d;)Lu5/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lu5/b;

    invoke-static {p0}, Lcom/google/api/gax/rpc/j;->a(Lcom/google/api/gax/rpc/g0;)Lcom/google/api/gax/rpc/j;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lu5/b;-><init>(Lu5/d;Lcom/google/api/gax/rpc/j;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Lu6/b;
    .locals 1

    invoke-virtual {p0}, Lu5/b;->e()Lu6/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/api/gax/rpc/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/h<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lu5/b;->d:Lcom/google/api/gax/rpc/h;

    return-object v0
.end method

.method public final close()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lu5/b;->e:Ll5/d;

    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to close resource"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 3
    throw v0
.end method

.method public e()Lu6/a;
    .locals 1

    iget-object v0, p0, Lu5/b;->f:Lu6/a;

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lu5/b;->e:Ll5/d;

    invoke-interface {v0}, Ll5/d;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lu5/b;->e:Ll5/d;

    invoke-interface {v0}, Ll5/d;->shutdown()V

    return-void
.end method
