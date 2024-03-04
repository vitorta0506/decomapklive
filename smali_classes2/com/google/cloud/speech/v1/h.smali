.class public Lcom/google/cloud/speech/v1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/d;


# instance fields
.field private final a:Lcom/google/cloud/speech/v1/n;

.field private final b:Lu5/c;

.field private final c:Lcom/google/longrunning/b;


# direct methods
.method protected constructor <init>(Lcom/google/cloud/speech/v1/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/cloud/speech/v1/h;->a:Lcom/google/cloud/speech/v1/n;

    .line 3
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/k;->i()Lcom/google/api/gax/rpc/g0;

    move-result-object p1

    check-cast p1, Lu5/d;

    invoke-virtual {p1}, Lu5/d;->o()Lu5/c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/h;->b:Lu5/c;

    .line 4
    invoke-virtual {p1}, Lu5/c;->a()Lu6/b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/longrunning/b;->a(Lu6/b;)Lcom/google/longrunning/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/cloud/speech/v1/h;->c:Lcom/google/longrunning/b;

    return-void
.end method

.method public static final a(Lcom/google/cloud/speech/v1/n;)Lcom/google/cloud/speech/v1/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/cloud/speech/v1/h;

    invoke-direct {v0, p0}, Lcom/google/cloud/speech/v1/h;-><init>(Lcom/google/cloud/speech/v1/n;)V

    return-object v0
.end method


# virtual methods
.method public final c()Lcom/google/api/gax/rpc/h;
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

    iget-object v0, p0, Lcom/google/cloud/speech/v1/h;->b:Lu5/c;

    invoke-virtual {v0}, Lu5/c;->c()Lcom/google/api/gax/rpc/h;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/h;->b:Lu5/c;

    invoke-virtual {v0}, Lu5/c;->close()V

    return-void
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/h;->b:Lu5/c;

    invoke-interface {v0}, Ll5/d;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/google/cloud/speech/v1/h;->b:Lu5/c;

    invoke-interface {v0}, Ll5/d;->shutdown()V

    return-void
.end method
