.class final Lcom/google/api/QuotaLimit$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/QuotaLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/protobuf/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e1<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/api/b1;->i:Lcom/google/protobuf/Descriptors$b;

    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->STRING:Lcom/google/protobuf/WireFormat$FieldType;

    sget-object v2, Lcom/google/protobuf/WireFormat$FieldType;->INT64:Lcom/google/protobuf/WireFormat$FieldType;

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, ""

    .line 3
    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/protobuf/e1;->k(Lcom/google/protobuf/Descriptors$b;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Lcom/google/protobuf/e1;

    move-result-object v0

    sput-object v0, Lcom/google/api/QuotaLimit$c;->a:Lcom/google/protobuf/e1;

    return-void
.end method
