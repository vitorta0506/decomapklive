.class Lcom/google/protobuf/e1$c$a;
.super Lcom/google/protobuf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/e1$c;-><init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/e1;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$FieldType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/c<",
        "Lcom/google/protobuf/e1<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/protobuf/e1$c;


# direct methods
.method constructor <init>(Lcom/google/protobuf/e1$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/e1$c$a;->b:Lcom/google/protobuf/e1$c;

    invoke-direct {p0}, Lcom/google/protobuf/c;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/e1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/p;",
            "Lcom/google/protobuf/f0;",
            ")",
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/e1;

    iget-object v1, p0, Lcom/google/protobuf/e1$c$a;->b:Lcom/google/protobuf/e1$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/protobuf/e1;-><init>(Lcom/google/protobuf/e1$c;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lcom/google/protobuf/e1$a;)V

    return-object v0
.end method

.method public bridge synthetic m(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/e1$c$a;->G(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/e1;

    move-result-object p1

    return-object p1
.end method
