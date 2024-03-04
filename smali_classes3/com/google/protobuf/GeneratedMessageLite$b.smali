.class public abstract Lcom/google/protobuf/GeneratedMessageLite$b;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/p1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$b<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/protobuf/p1;"
    }
.end annotation


# instance fields
.field protected d:Lcom/google/protobuf/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/GeneratedMessageLite$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/protobuf/o0;->p()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->d:Lcom/google/protobuf/o0;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->g()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method l()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "Lcom/google/protobuf/GeneratedMessageLite$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->d:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->d:Lcom/google/protobuf/o0;

    invoke-virtual {v0}, Lcom/google/protobuf/o0;->h()Lcom/google/protobuf/o0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->d:Lcom/google/protobuf/o0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->d:Lcom/google/protobuf/o0;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->j()Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->k()Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    return-object v0
.end method
