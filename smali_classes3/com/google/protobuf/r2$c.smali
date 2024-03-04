.class Lcom/google/protobuf/r2$c;
.super Lcom/google/protobuf/r2$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/r2<",
        "TK;TV;>.g;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/protobuf/r2;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/r2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/r2$c;->b:Lcom/google/protobuf/r2;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/r2$g;-><init>(Lcom/google/protobuf/r2;Lcom/google/protobuf/r2$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/r2;Lcom/google/protobuf/r2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/r2$c;-><init>(Lcom/google/protobuf/r2;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/r2$b;

    iget-object v1, p0, Lcom/google/protobuf/r2$c;->b:Lcom/google/protobuf/r2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/r2$b;-><init>(Lcom/google/protobuf/r2;Lcom/google/protobuf/r2$a;)V

    return-object v0
.end method
