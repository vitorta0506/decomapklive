.class public Lcom/google/cloud/speech/v1/n;
.super Lcom/google/api/gax/rpc/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cloud/speech/v1/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/k<",
        "Lcom/google/cloud/speech/v1/n;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/cloud/speech/v1/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/api/gax/rpc/k;-><init>(Lcom/google/api/gax/rpc/k$a;)V

    return-void
.end method

.method public static m()Lcom/google/cloud/speech/v1/n$a;
    .locals 1

    invoke-static {}, Lcom/google/cloud/speech/v1/n$a;->o()Lcom/google/cloud/speech/v1/n$a;

    move-result-object v0

    return-object v0
.end method
