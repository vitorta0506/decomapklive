.class public final Lcom/google/protobuf/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

.field public final b:Lcom/google/protobuf/l1;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/d0$c;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 4
    iput-object p2, p0, Lcom/google/protobuf/d0$c;->b:Lcom/google/protobuf/l1;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;Lcom/google/protobuf/d0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/d0$c;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/l1;)V

    return-void
.end method
