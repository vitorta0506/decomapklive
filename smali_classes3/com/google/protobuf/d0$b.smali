.class final Lcom/google/protobuf/d0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Descriptors$b;

.field private final b:I


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/d0$b;->a:Lcom/google/protobuf/Descriptors$b;

    .line 3
    iput p2, p0, Lcom/google/protobuf/d0$b;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/protobuf/d0$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/protobuf/d0$b;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/d0$b;->a:Lcom/google/protobuf/Descriptors$b;

    iget-object v2, p1, Lcom/google/protobuf/d0$b;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/protobuf/d0$b;->b:I

    iget p1, p1, Lcom/google/protobuf/d0$b;->b:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/d0$b;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/protobuf/d0$b;->b:I

    add-int/2addr v0, v1

    return v0
.end method
