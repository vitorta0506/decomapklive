.class public abstract Lu5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lu6/b;
.end method

.method public abstract c()Lcom/google/api/gax/rpc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/gax/rpc/h<",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeRequest;",
            "Lcom/google/cloud/speech/v1/StreamingRecognizeResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract close()V
.end method
