.class final Lcom/google/protobuf/Descriptors$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Descriptors$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Descriptors$h<",
        "Lcom/google/protobuf/Descriptors$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Descriptors$e$b;->b(Lcom/google/protobuf/Descriptors$e;)I

    move-result p1

    return p1
.end method

.method public b(Lcom/google/protobuf/Descriptors$e;)I
    .locals 0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$e;->getNumber()I

    move-result p1

    return p1
.end method
