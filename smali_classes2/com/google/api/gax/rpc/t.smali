.class public abstract Lcom/google/api/gax/rpc/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        "MetadataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/a;",
            ")",
            "Lcom/google/api/gax/rpc/t<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/api/gax/rpc/t$a;

    invoke-direct {v0, p0, p1}, Lcom/google/api/gax/rpc/t$a;-><init>(Lcom/google/api/gax/rpc/t;Lcom/google/api/gax/rpc/a;)V

    return-object v0
.end method
