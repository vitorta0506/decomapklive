.class Lcom/google/protobuf/g1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/g1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/g1$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/e1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/g1$b;->a:Lcom/google/protobuf/e1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/l1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/protobuf/l1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/g1$b;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v0}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/e1$b;->D()Lcom/google/protobuf/e1;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/google/protobuf/l1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/g1$b;->a:Lcom/google/protobuf/e1;

    return-object v0
.end method

.method public c(Lcom/google/protobuf/l1;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/l1;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/protobuf/e1;

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
