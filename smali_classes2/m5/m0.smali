.class Lm5/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk5/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PackedT::",
        "Lcom/google/protobuf/l1;",
        ">",
        "Ljava/lang/Object;",
        "Lk5/b<",
        "Lcom/google/protobuf/Any;",
        "TPackedT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPackedT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TPackedT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/m0;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/protobuf/Any;)Lcom/google/protobuf/l1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Any;",
            ")TPackedT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    iget-object v0, p0, Lm5/m0;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/google/protobuf/l1;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unpack object from \'any\' field. Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm5/m0;->a:Ljava/lang/Class;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Any;->getTypeUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-virtual {p0, p1}, Lm5/m0;->a(Lcom/google/protobuf/Any;)Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method
