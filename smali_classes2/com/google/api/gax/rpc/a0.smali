.class public Lcom/google/api/gax/rpc/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/api/gax/rpc/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/api/gax/rpc/z<",
            "TRequestT;>;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/google/api/gax/rpc/z;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/z<",
            "TRequestT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/gax/rpc/z;

    iput-object p1, p0, Lcom/google/api/gax/rpc/a0;->a:Lcom/google/api/gax/rpc/z;

    .line 3
    iput-boolean p2, p0, Lcom/google/api/gax/rpc/a0;->b:Z

    return-void
.end method
