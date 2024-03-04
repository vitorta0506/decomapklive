.class Lcom/google/api/gax/rpc/t$a;
.super Lcom/google/api/gax/rpc/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gax/rpc/t;->a(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/gax/rpc/t<",
        "TRequestT;TResponseT;TMetadataT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/api/gax/rpc/a;

.field final synthetic b:Lcom/google/api/gax/rpc/t;


# direct methods
.method constructor <init>(Lcom/google/api/gax/rpc/t;Lcom/google/api/gax/rpc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/api/gax/rpc/t$a;->b:Lcom/google/api/gax/rpc/t;

    iput-object p2, p0, Lcom/google/api/gax/rpc/t$a;->a:Lcom/google/api/gax/rpc/a;

    invoke-direct {p0}, Lcom/google/api/gax/rpc/t;-><init>()V

    return-void
.end method
