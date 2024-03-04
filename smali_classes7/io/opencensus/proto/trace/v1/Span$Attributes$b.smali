.class final Lio/opencensus/proto/trace/v1/Span$Attributes$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/opencensus/proto/trace/v1/Span$Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e1<",
            "Ljava/lang/String;",
            "Lio/opencensus/proto/trace/v1/AttributeValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lio/opencensus/proto/trace/v1/j;->i:Lcom/google/protobuf/Descriptors$b;

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    .line 2
    invoke-static {}, Lio/opencensus/proto/trace/v1/AttributeValue;->getDefaultInstance()Lio/opencensus/proto/trace/v1/AttributeValue;

    move-result-object v3

    const-string v4, ""

    .line 3
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/protobuf/e1;->k(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/protobuf/e1;

    move-result-object v0

    sput-object v0, Lio/opencensus/proto/trace/v1/Span$Attributes$b;->a:Lcom/google/protobuf/e1;

    return-void
.end method
