.class public Lcom/google/api/gax/tracing/c;
.super Lcom/google/api/gax/rpc/t;
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
        "Lcom/google/api/gax/rpc/t<",
        "TRequestT;TResponseT;TMetadataT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/api/gax/rpc/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/t<",
            "TRequestT;TResponseT;TMetadataT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/api/gax/tracing/ApiTracerFactory;

.field private c:Lr5/d;


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/t;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/t<",
            "TRequestT;TResponseT;TMetadataT;>;",
            "Lcom/google/api/gax/tracing/ApiTracerFactory;",
            "Lr5/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/t;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/tracing/c;->a:Lcom/google/api/gax/rpc/t;

    .line 3
    iput-object p2, p0, Lcom/google/api/gax/tracing/c;->b:Lcom/google/api/gax/tracing/ApiTracerFactory;

    .line 4
    iput-object p3, p0, Lcom/google/api/gax/tracing/c;->c:Lr5/d;

    return-void
.end method
