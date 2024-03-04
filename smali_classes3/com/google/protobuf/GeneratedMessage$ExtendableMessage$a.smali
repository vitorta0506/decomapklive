.class public Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field final synthetic d:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Z)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$a;->d:Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->access$600(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;)Lcom/google/protobuf/o0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/o0;->E()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$a;->a:Ljava/util/Iterator;

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$a;->b:Ljava/util/Map$Entry;

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;ZLcom/google/protobuf/GeneratedMessage$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$a;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;Z)V

    return-void
.end method
