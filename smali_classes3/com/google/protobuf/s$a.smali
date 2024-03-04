.class final Lcom/google/protobuf/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/s;->i(Ljava/lang/Class;Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/w2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/s$a;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s$a;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->q()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Descriptors$d;->i(I)Lcom/google/protobuf/Descriptors$e;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
