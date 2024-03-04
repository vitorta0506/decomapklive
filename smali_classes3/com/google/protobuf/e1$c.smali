.class final Lcom/google/protobuf/e1$c;
.super Lcom/google/protobuf/f1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/f1$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/protobuf/Descriptors$b;

.field public final f:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/e1;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$FieldType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$b;",
            "Lcom/google/protobuf/e1<",
            "TK;TV;>;",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/protobuf/e1;->a(Lcom/google/protobuf/e1;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/protobuf/e1;->b(Lcom/google/protobuf/e1;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p3, v0, p4, p2}, Lcom/google/protobuf/f1$b;-><init>(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/e1$c;->e:Lcom/google/protobuf/Descriptors$b;

    .line 3
    new-instance p1, Lcom/google/protobuf/e1$c$a;

    invoke-direct {p1, p0}, Lcom/google/protobuf/e1$c$a;-><init>(Lcom/google/protobuf/e1$c;)V

    iput-object p1, p0, Lcom/google/protobuf/e1$c;->f:Lcom/google/protobuf/e2;

    return-void
.end method
