.class public Lcom/google/api/gax/tracing/e;
.super Lcom/google/api/gax/rpc/k0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        "ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/rpc/k0<",
        "TRequestT;TResponseT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/gax/rpc/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/api/gax/tracing/ApiTracerFactory;

.field private final c:Lr5/d;


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;TResponseT;>;",
            "Lcom/google/api/gax/tracing/ApiTracerFactory;",
            "Lr5/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/api/gax/rpc/k0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/tracing/e;->a:Lcom/google/api/gax/rpc/k0;

    .line 3
    iput-object p2, p0, Lcom/google/api/gax/tracing/e;->b:Lcom/google/api/gax/tracing/ApiTracerFactory;

    .line 4
    iput-object p3, p0, Lcom/google/api/gax/tracing/e;->c:Lr5/d;

    return-void
.end method
