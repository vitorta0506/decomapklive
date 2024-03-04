.class public Lr5/e;
.super Lcom/google/api/gax/tracing/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/gax/tracing/e<",
        "TRequestT;",
        "Ln5/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/k0<",
            "TRequestT;",
            "Ln5/b;",
            ">;",
            "Lcom/google/api/gax/tracing/ApiTracerFactory;",
            "Lr5/d;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/gax/tracing/e;-><init>(Lcom/google/api/gax/rpc/k0;Lcom/google/api/gax/tracing/ApiTracerFactory;Lr5/d;)V

    return-void
.end method
