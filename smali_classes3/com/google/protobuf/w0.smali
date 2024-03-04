.class public Lcom/google/protobuf/w0;
.super Lcom/google/protobuf/x0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/w0$c;,
        Lcom/google/protobuf/w0$b;
    }
.end annotation


# instance fields
.field private final f:Lcom/google/protobuf/o1;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/o1;Lcom/google/protobuf/f0;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/x0;-><init>(Lcom/google/protobuf/f0;Lcom/google/protobuf/ByteString;)V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/w0;->f:Lcom/google/protobuf/o1;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Lcom/google/protobuf/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/w0;->f:Lcom/google/protobuf/o1;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/x0;->d(Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
